## Patient-consent based access control

The Te Whatu Ora Shared Care API requires a valid `Consent` resource to be present to facilitate shared access to resources that may contain patient information.  

Each Consent resource instance is intended to represent the actual consent of the patient for their health information to be collected and shared under the provisions of the Health Information Privacy Code.

It falls to the specific health organisation using FHIR to store/share health information to create an appropriate FHIR Consent resources as well as actually manage the use of patient health information.

The API applies this data access control to all FHIR resources of the following type (and any profiled derivatives):
- `CarePlan`
- `CareTeam`
- `Condition`
- `Encounter`
- `QuestionnaireResponse`
- `Patient`
- `Person`

Developers should refer to the [Consent profile](StructureDefinition-ManaakiNgaTahiConsent.html) for details of how to form valid Consent resources in this API.

The image below illustrates a correct FHIR data structure to represent patient consent and permit data access/sharing

<img src="obj-FHIR-data-consent-active.png" width="100%"/>

---

## API behaviours

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

A convention of the Te Whatu Ora Shared Care FHIR API is that all `date` and `dateTime` FHIR values must be recorded in [UTC](https://en.wikipedia.org/wiki/Coordinated_Universal_Time).

Client applications are responsible for converting UTC dateTimes to the timezone of the user and formatting the date and time display according to the user's preferred locale.

The server will assess currency of a Consent for access purposes using a UTC time comparison with the dates/times in a `Consent.period`.

---

### Provisional consent

To support scenarios where an authorized health application need to record and use FHIR resources before patient consent has 
  officially been recorded in a FHIR representation, the server has support for a provisional consent arrangement.  

This arrangement is beneficial when patient consent is established subsequent to creation of the initial patient record /
  care plan in the Te Whatu Ora FHIR API, as can happen for example in rheumatic fever patient registration.

Provisional consent lets an application create a `Consent` resource in a `#proposed` status and form `data.references` 
  to the protected FHIR resources containing patient data in the same manner as `#active` consents.

API access to a resource protected by a `#proposed` Consent requires the following:
1) The proposed consent MUST include a provision referencing a `CareTeam` which identifes the (HPI) organisations responsible for collecting and managing the patient data,
2) The health application accessing the FHIR API MUST be using client credentials associated with one of the HPI organisations in the CareTeam described in (1).

If these two conditions are met the Te Whatu Ora Shared Care API will permit access to resource instances (those covered by the consent `data.reference`).

#### Data model

The model below shows a Consent in `#proposed` status and the linked FHIR data needed for the Te Whatu Ora Shared Care API to grant an authorized application provisional access to protected FHIR data.

<img src="obj-FHIR-data-consent-proposed.png" width="100%"/>
