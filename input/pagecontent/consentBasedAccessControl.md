## Consent-based access control

Like any NZ organisation collecting/sharing patient health information, Te Whatu Ora has to abide by the requirements of the NZ Health Information Privacy Code.

In support of this, the *Te Whatu Ora Shared Care API* has implemented the following measures:

1. Client applications MUST record the patient's actual (or provisional) consent to TWO collecting their health information using instances of the [FHIR Consent](https://hl7.org/fhir/R4B/consent.html) resource on this server, and
1. For all FHIR resource types that may contain patient health information, the FHIR API controls access to resource instances based on presence of a valid referencing Consent resource instances, and  
1. The actual FHIR resource instances to be protected MUST be reference in FHIR `.provision.data.` references in an associated Consent instance.

It is up to the each health organisation storing/sharing health information through this FHIR API to
- Operate a process which obtains patient consent, and
- Arrange for their FHIR-integrated application to call the FHIR API to create appropriate FHIR Consent resources representing the state of patients' consents.

### Consent-based protection measures

#### Access control measure
When a client application, authorized by TWO to access the FHIR API (by NIA API key and client credentials), tries to access an instance of  
  a FHIR resource X of an **access-controlled type** at a Url like:  
  
```bash
  FHIR_API_URL/resource-type/X (where X is a resource instance identifier)
```  

- This API permits access to X only when a valid Consent instance is found that references X - this allows all FHIR client applications authorized by Te Whatu Ora to access the resource instance.  
- If the API finds no valid Consent instance that references X, access is denied to all FHIR client applications (including the application that created the resource instance).

#### Resource types protected

The *Te Whatu Ora Shared Care API* applies consent-based data access control to all instances of the following FHIR resources types (includes profiled variants):

```bash
- Appointment
- CarePlan
- Condition
- Encounter
- ServiceRequest
- QuestionnaireResponse
- Goal
- Observation
- Patient
- Person
- EpisodeOfCare
```

### Active consent

A normal record of a patient consent in the *Te Whatu Ora Shared Care API* is a FHIR Consent instance in `#active` status.

In business terms, **active** status here is used to represent a consent actually obtained from the patient, and current as in not expired.

To be considered valid, an `#active` Consent instance must:

1. Be current (current date must fall within `Consent.provision.period` start and end dates

1. Be scoped `Consent.scope` = `#patient-privacy`

1. Identify the patient  
  `Consent.patient` MUST be a valid FHIR logical reference to a patient by NHI identifier

1. Reference the prevailing policies (Privacy Act and Health Information Privacy Code) see examples.

1. Identify how the consent was obtained:

- EITHER reference in `.sourceReference` a FHIR `QuestionnaireResponse` instance that captures the consenting response,

- OR reference in `.performer` the organisation that obtained the consent (reference by HPI Org id).

### Provisional consent scenarios

Sometimes patient consent is not yet established at the time an application needs to create FHIR resources about that patient.  

For example in rheumatic fever patient scenarios it is common for patients to be registered on referral from primary care but
  those patients' consents are not officially obtained until the first nurse appointment which can be someway down the track.

To facilitate scenarios like this, the *Te Whatu Ora Shared Care API* allows for consents to be formed provisionally using the FHIR Consent `#proposed` status.

This status is intended to represent placeholders for patient consents that will be subsequently obtained, but where an application needs to create FHIR resources earlier than that.

Client FHIR API access to a resource protected by a `#proposed` Consent has the following additional requirements:

1. The proposed consent MUST include a provision referencing a `CareTeam` which identifies the (HPI) organisations responsible for collecting and managing the patient data,
2. The health application accessing the FHIR API MUST be using client credentials associated with one of the HPI organisations in the CareTeam described in (1).

If these two conditions are not met API requests to resource instances covered by a `#proposed` consent will get an HTTP 403 Forbidden error, and those instances will be redacted in any FHIR search results.

### Consent given on-behalf by related person

Sometimes patient consent has to be obtained from a person related to the patient, not the patient themselves.

For example in rheumatic fever patient scenarios it is common for patients to be registered on referral from primary care but
  those patients' consents are not officially obtained until the first nurse appointment which can be someway down the track.

To facilitate scenarios like this, the *Te Whatu Ora Shared Care API* consent should represent the related person is a party to the patient's consent but not the subject of it, as follows:

1. The consent provision identifies the patient in its `#datasubject` as is usual, and
1. A RelatedPerson resource defines the related party (by name is sufficient) and their relationship to the patient.  (The RelatedPerson can be simply a contained instance within the Consent, or can be a separate server resource representation if needed), and 
1. An additional `Consent.performer[]` entry refers to the RelatedPerson instance.

---

### API behaviours

When a resource requiring Consent is requested either by a read, vread or search query, the API will determine if a valid `Consent` is active for the resource. 

When a valid `Consent` is **NOT found**, the outcomes seen by the API caller will be as follows.

#### search

`GET /{consentedResourceType}?_count=25`

Response status: `200`
Response body:

```json
{
    "resourceType": "Bundle",
    "id": "38ccf3b4-2bd6-4076-bfa2-66bef78d1fbf",
    "meta": {
        "lastUpdated": "2022-12-15T19:55:07.892Z",
        "security": [
            {
                "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationValue",
                "code": "REDACTED",
                "display": "redacted"
            }
        ]
    },
    "total": 41,
    "entry": [{consentedResources}]
}
```

In this request example, a request is made to return `_count=25` resources. In this case, for each 25 resources in the result set (`entry`), the `Consent` check is performed. If any resources in this result set have been omitted, the `meta.security` `REDACTED` tag is added to the search result `Bundle`. This indicates to the API consumer that some portion of the resource has been filtered and not included in the content returned, and that there may not be 25 resources returned within the `Bundle`.

#### read, vread

`GET /{consentedResourceType}/{id}`

Response status: `401`
Response body:

```json
{
    "resourceType": "OperationOutcome",
    "text": {
        "status": "generated",
        "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h1>Operation Outcome</h1><table border=\"0\"><tr><td style=\"font-weight: bold;\">error</td><td>[]</td><td><pre>Consent not valid</pre></td></tr></table></div>"
    },
    "issue": [
        {
            "severity": "error",
            "code": "security",
            "diagnostics": "Consent not valid"
        }
    ]
}
```

In this request example, a request is made to a single resource which does not have an associated `Consent`. This returned a 401 error.


#### Consent period dates

As a convention the *Te Whatu Ora Shared Care FHIR API* requires all `date` and `dateTime` FHIR values to be recorded in [UTC](https://en.wikipedia.org/wiki/Coordinated_Universal_Time).

Client applications are responsible for converting UTC dateTimes to the timezone of the user and formatting the date and time display according to the user's preferred locale.

The server will assess currency of a Consent for access purposes using a UTC time comparison with the dates/times in a `Consent.period`.

---

### Example data models

#### Patient normal data consent obtained

<figure>
  <!-- Generated from `input/images-source/obj-FHIR-data-consent-active.puml` -->
  {% include obj-FHIR-data-consent-active.svg %}
</figure>
<br clear="all">

---

#### Active consent obtained from a related person to the patient (on-behalf)

<figure>
  <!-- Generated from `input/images-source/obj-FHIR-data-consent-givenonbehalf.puml` -->
  {% include obj-FHIR-data-consent-givenonbehalf.svg %}
</figure>
<br clear="all">

---

#### Patient opted out from data sharing

<figure>
  <!-- Generated from `input/images-source/obj-FHIR-data-consent-optout.plantuml` -->
  {% include obj-FHIR-data-consent-optout.svg %}
</figure>
<br clear="all">

---

#### Provisional consent (yet to be actually signed by the patient)

<figure>
  <!-- Generated from `input/images-source/obj-FHIR-data-consent-provisional.plantuml` -->
  {% include obj-FHIR-data-consent-provisional.svg %}
</figure>
<br clear="all">
