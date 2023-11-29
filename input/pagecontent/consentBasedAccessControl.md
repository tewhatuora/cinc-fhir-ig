## Consent-based access control

Like any NZ organisation collecting/sharing patient health information, Te Whatu Ora has to abide by the provisions of the Health Information Privacy Code.

In support of this, the *Te Whatu Ora Shared Care API* has implemented the following measures:

1. Client applications are to record the patient's actual (or provisional) consent using instances of the [FHIR Consent](https://hl7.org/fhir/R4B/consent.html) resource on this server, and
1. Local FHIR resource instances that may contain patient health information are access-controlled, based on presence of a valid Consent resource instances, and  
1. The actual FHIR resource instances to be protected must be identified by FHIR `.provision.data.` references in a valid Consent instance.

It is up to the specific health organisation using FHIR to store/share health information to obtain the patient's consent, and arrange for the FHIR client application it is using to create
  the correct FHIR Consent resources to represent this consent.

### Consent-based protection measures

#### Access control measure
When a client application, authorized by TWO to access this FHIR API (by NIA API key and client credentials), tries to access an instance of  
  a FHIR resource of a protected type at a Url like:  
  
```bash
  FHIR_API_URL/resource-type/instance-identifier
```  

- Access to X is permitted when a valid Consent instance is found that references X - this allows all FHIR client applications authorized by Te Whatu Ora to access the resource instance.  
- If the API finds no a valid Consent instance that references X, access is denied to all FHIR client applications (including the client that created the resource instance). 

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

### ACTIVE consent validity

A normal record of a patient consent in the *Te Whatu Ora Shared Care API* is a FHIR Consent instance in `#active` status.

To be considered valid, an `#active` Consent instance must:

1. Be current (current date must fall within `Consent.provision.period` start and end dates

1. Be scoped `Consent.scope` = `#patient-privacy`

1. Identify the patient  
  `Consent.patient` MUST be a valid FHIR logical reference to a patient by NHI identifier

1. Reference the prevailing policies (Privacy Act and Health Information Privacy Code) see examples.

1. Identify how the consent was obtained:

- EITHER reference in `.sourceReference` a FHIR `QuestionnaireResponse` instance that captures the consenting response,

- OR reference in `.performer` the organisation that obtained the consent (reference by HPI Org id).

### PROPOSED consent -- further controls

Sometimes patient consent is not available at the time FHIR resources are being initialised.  

Authorized health applications may need to be able to handle FHIR data before patient consent has officially been recorded in a FHIR representation.  

For example in rheumatic fever scenarios it is common for patients to be registered and care plan/diagnosis data to be recorded in FHIR prior to  
  the patient consent being officially documented (which can happen at the first appointment with a nurse down the track).

To handle scenarios like this, the *Te Whatu Ora Shared Care API* allows for a 'provisional' consent, represented by a FHIR Consent instance in `#proposed` status.

These consents permit provisional access to FHIR resources only by the client application which created them, on a provisional basis until the patient consent is officially recorded.

Client FHIR API access to a resource protected by a `#proposed` Consent has the following additional requirements:

1. The proposed consent MUST include a provision referencing a `CareTeam` which identifes the (HPI) organisations responsible for collecting and managing the patient data,
2. The health application accessing the FHIR API MUST be using client credentials associated with one of the HPI organisations in the CareTeam described in (1).

Only when these two conditions are met shall the *Te Whatu Ora Shared Care API* permit access to resource instances (those covered by the consent `data.reference`).  Otherwise clients will get an HTTP 403 Forbidden error, and the instances will be redacted in any FHIR search results.

---

### API behaviours

When a resource requiring Consent is requested either by a read, vread or search query, the API will determine if a valid `Consent` is active for the resource. 

If a valid `Consent` is **NOT found**, the below outcomes will be returned to the consumer.

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

### Data models

The following diagrams show the required FHIR instance data structure for `#active` and ``#proposed` Consent instances.

<figure>
  <!-- Generated from `input/images-source/obj-FHIR-data-consent-active.plantuml` -->
  {% include obj-FHIR-data-consent-active.svg %}
  <figcaption>Figure: FHIR data representing an ACTIVE patient consent to record/share patient data in FHIR resource instances</figcaption>
</figure>
<br clear="all">

---

<figure>
  <!-- Generated from `input/images-source/obj-FHIR-data-consent-proposed.plantuml` -->
  {% include obj-FHIR-data-consent-proposed.svg %}
  <figcaption>Figure: FHIR data representing an PROPOSED patient consent (a provisional arrangement until patient consent can actually be obtained)</figcaption>
</figure>
<br clear="all">
