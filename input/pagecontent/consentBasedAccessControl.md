## Consent-based access control

As a basic protection for FHIR resource types that may contain patient health information, the *Health New Zealand Te Whatu Ora FHIR API* requires a valid [FHIR Consent](https://hl7.org/fhir/R4B/consent.html) instance to be present that references the resource instances.

See [this page](fhirConsent.html) for details on representing patient consent using FHIR Consents.

### Authorization to access FHIR resource instances

Consider a FHIR API request to GET the instance `CarePlan/X` where CarePlan is a consent-protected resource type and X is the instance unique identifier.

The FHIR API will permit such a request if:

1. The requestor presents suitable OAUTH credentials including sufficient scopes (SMART scopes), and
2. The API finds a valid Consent instance that references CarePlan/X.  The rules for validity are defined below.

If the request has suitable OAUTH scopes but the API cannot find a valid Consent instance referencing CarePlan/X, the API rejects the GET request with a `403 Forbidden` error.
If the request lacks suitable OAUTH scopes the GET request is rejected with a `401 Not Authorized` error.

If the CarePlan/X instance access attempt occurs through a FHIR search, and the instance is not covered by a valid consent, either the search request is rejected or the entry is redacted from search results depending on the deficiency of the request.

#### FHIR Resource types protected

The API applies consent-based access control to FHIR requests on the following resource types (includes profiled variants):

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

### Consent validity rules

#### Active consent

A patient consent is normally expected to be represented in a FHIR Consent instance in `#active` status, which is meant to 
reflect a consent actually obtained from the patient.

To be considered valid for API access, an `#active` Consent instance must:

1. Be current (current date must fall within `Consent.provision.period` start and end dates

1. Be scoped `Consent.scope` = `#patient-privacy`

1. Identify the patient  
  `Consent.patient` MUST be a valid FHIR logical reference to a patient by NHI identifier

1. Reference the prevailing policies (Privacy Act and Health Information Privacy Code) see examples.

1. Identify how the consent was obtained:

- EITHER reference in `.sourceReference` a FHIR `QuestionnaireResponse` instance that captures the consenting response,

- OR reference in `.organization` (or `.performer`) the organisation that obtained the consent and is custodian of the patient data.

### Provisional consent scenarios

Applications may create a Consent in a `#proposed` state.  

This is a placeholder for patient consent that is anticipated, but an application needs to create other FHIR resources before the consent
can actually be obtained.

Rules for accessing FHIR resources protected by a `#proposed` Consent are yet to be defined by Health NZ but are likely to involve
the requesting party following a 'break-glass' protocol and their API client presenting an additional `btg` OAUTH scope in the access token.

### Consent given on-behalf by related person

When patient consent is obtained from a person related to the patient, not the patient themselves, an application may create a Consent instance with the `.performer` identifying the related person.

No special rules for API access to FHIR resources protected by an on-behalf Consent have yet been defined by Health NZ.

---

### API error behaviour

When a resource requiring Consent is requested either by a FHIR read, vread or search operation, the API will determine if a valid `Consent` is active for the resource according to the rules described above.

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
    "entry": ["..."]
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
