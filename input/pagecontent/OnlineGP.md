
### Background

Health NZ offers a subsidised Online GP Care service that connects healthcare consumers to NZ-registered healthcare professionals at telehealth providers using secure digital technologies (primarily video consultations, typically via a mobile application). 

Doctors and nurse practitioners can assess symptoms, diagnose conditions, prescribe medications, and provide referrals – all from wherever the patient is. The service allows people to receive professional advice and treatment when they need it - no matter where they are or what time of day it is. It helps to ease pressure on emergency departments or urgent care services in a way that is complementary to the role of GPs in the community who remain responsible for their patients' continuity of care.

The Online GP/telehealth service providers can be accessed from [https://info.health.nz/onlinegp](https://info.health.nz/onlinegp).

Providers are required to submit administrative/operational reporting to Health NZ on a regular basis – as contractually described in the Telehealth Service Specification. The published API endpoints allow providers (via their practice management systems) to automate the reporting, requests for payment, and payment processing – instead of manually producing a report to send to Health NZ and manually raising invoices at the end of each month which must be manually reviewed & approved by Health NZ.

### Overview

This section summarises the **FHIR REST API endpoints** used to exchange:
- **Online GP Appointments** for operational reporting about **_planned_ encounters**.
  - Source profile: *[Online GP Appointment](https://fhir-ig.digital.health.nz/shared-care/StructureDefinition-OnlineGPAppointment.html)* (a profiled `Appointment`)
- **Online GP Encounters** for operational reporting about **encounters _that occurred_** (or at least _started_).
  - Source profile: *[Online GP Encounter](https://fhir-ig.digital.health.nz/shared-care/StructureDefinition-OnlineGPEncounter.html)* (a profiled `Encounter`)
- **Claims** as operational reporting of **payment requests** for reimbursement for subsidised services delivered.
  - Source profile: *[NZ Shared Care Claim](https://fhir-ig.digital.health.nz/shared-care/StructureDefinition-SharedCareClaim.html)* (a profiled `Claim`)
- **Claim Responses** for Health NZ to detail the **outcome of a payment request** (i.e. claim) including validation errors and/or adjudication outcomes describing why the payment request was approved or denied.
  - Source profile: *[NZ Shared Care Claim Response](https://fhir-ig.digital.health.nz/shared-care/StructureDefinition-SharedCareClaimResponse.html)* (a profiled `ClaimResponse`)

These Online GP artefacts are exchanged using **standard FHIR RESTful interactions** on their base resource types:
`Appointment`, `Encounter`, `Claim`, and `ClaimResponse`.  

This Shared Care FHIR server’s **[Capability Statement](https://fhir-ig.digital.health.nz/shared-care/CapabilityStatement-SharedCareFHIRAPICapabilityStatement.html)** should be treated as the source of truth for which interactions/search parameters are enabled.

---

### Online GP Use Cases
1. **Create or update a record of a _planned_ Online GP encounter** as an Appointment (reporting automation)
2. **Create or update the record of an Online GP Encounter _that occurred_** (reporting automation)
3. **Submit a request for payment of an Online GP Claim** (reporting & payment automation)
4. **Submit a correction to a request for payment of an Online GP Claim** (reporting & payment automation)
5. **Submit a cancellation of a request for payment of an Online GP Claim** (reporting & payment automation)
6. **Retrieve a Claim Response describing the outcome of a request for payment of an Online GP Claim** (payment automation adjudication results)
7. **View a planned Online GP encounter (Appointment) that has been submitted**
8. **View an Online GP Encounter that has been submitted**
9. **View a request for payment (Claim) that has been submitted**

---

### FHIR API endpoint conventions

Applicable to all use cases.

#### Base URL
- `[base]` = Shared Care FHIR Server base endpoint (environment-specific).

#### Common attributes (as profiled)
The profiles of Appointment, Encounter, and Claim require `meta.source` and a `correlation-id` slice for `tag` to be included in the request body.

| Attribute | Notes |
|-----------|---------------|
| **meta.source** | HPI Facility ID URI representing the system of record |
| **tag.correlation-id** | Coding consisting of a `code` (a GUID) fixed to a specific `system` (i.e. `"https://hub.services.digital.health.nz/ns/correlation-id"`) used for observability/tracing of a request within Health NZ. |


---
<br>

### Online GP Appointment (Appointment)

#### What it represents

A profiled `Appointment` resource for operational reporting of **_planned_ Online GP encounters** (including tracking of cancellations or no-shows). 

#### Endpoints (FHIR REST)
- **Create**: `POST [base]/Appointment`
- **Update**: `PUT [base]/Appointment/{id}`
- **Read**: `GET [base]/Appointment/{id}`
- **Search**: `GET [base]/Appointment?{search-params}`

#### Key information

| Service Spec Field | FHIR Attribute | Notes |
|------|-----------|-------|
| HPI Facility | meta.source | Mandatory. HPI Facility Id where the record originated. |
| (Disposition) | status | Mandatory. Set to "booked" (if it hasn't occurred yet), "fulfilled" (if an encounter occurred), "cancelled", or "noshow" (Did not Attend) |
| Telehealth Service Appointment Reason | reasonCode | Mandatory. _Non_-clinical reason. SNOMED CTIDs |
| National Health Index (NHI) | participant | Mandatory. NHI number |
| Appointment Request Datetime | created | When appointment was booked |
| Event Start Datetime | start | Planned start time |
| Event End Datetime | end | Planned end time |

##### Example: Search for Online GP Appointments by patient/date
```
GET [base]/Appointment?patient={patientId}&date=ge2026-03-01&date=le2026-03-31
Accept: application/fhir+json
```

##### Example: Create Online GP Appointment (skeleton)
```
POST [base]/Appointment
Content-Type: application/fhir+json
Accept: application/fhir+json
```

```json
{
  "resourceType": "Appointment",
  "meta": {
    "source": "https://standards.digital.health.nz/ns/hpi-facility-id/FZZ111-A",
    "tag": [
      {
        "system": "https://hub.services.digital.health.nz/ns/correlation-id",
        "code": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
      }
    ],
    "profile": [
      "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/OnlineGPAppointment"
    ]
  }
  // ... remainder as per profile requirements: status, reasonCode, participant, etc.
}
```

### Online GP Encounter (Encounter)

#### What it represents
A profiled Encounter resource for operational reporting of **Online GP encounters _that occurred_**.

#### Endpoints (FHIR REST)

- **Create**: `POST [base]/Encounter`
- **Update**: `PUT [base]/Encounter/{id}`
- **Read**: `GET [base]/Encounter/{id}`
- **Search**: `GET [base]/Encounter?{search-params}`


Confirm enabled interactions/search params in the server CapabilityStatement.

#### Key information

| Service Spec Field | FHIR Attribute | Notes |
|------|-----------|-------|
| HPI Facility | meta.source | HPI Facility Id where the record originated. |
| Provider Organisation | serviceProvider | Mandatory. HPI Org Id |
| Clinician | participant.role<br>participant.individual | Mandatory. Clinician role (SNOMED CTIDs applicable to Online GP)<br>Mandatory. HPI CPN |
| National Health Index (NHI) | subject | Mandatory. NHI number |
| CSC Holder | cscHolder (extension) | Boolean |
| Enrolment Flag | regCode (extension) | NHI is "enrolled" or "casual" at this HPI Facility |
| Token | identifier | Unique identifier(s) for Encounter |
|  | status | Mandatory. E.g. "finished" |
|  | class | Mandatory. E.g. "virtual" |
|  | type | Mandatory. SNOMED CTIDs for method of encounter e.g. "719410009" for video consultation |
|  | serviceType | Further subcategorisation of encounter (if applicable) |
|  | appointment | Reference to the Appointment resource |
| Event Start Datetime<br>Event End Datetime| period | Mandatory. Actual time (start & end) of the encounter. |
| Provisional/Working Diagnosis code(s) | diagnosis (extension) | Optional. SNOMED CTIDs.<br>Patient must be able to opt-out of providing this medical-related information. |
| Disposition | hospitalization.dischargeDisposition | SNOMED CTIDs applicable to Online GP |

##### Example: Search encounters for a patient by status

```
GET [base]/Encounter?patient={patientId}&status=in-progress
Accept: application/fhir+json
```

##### Example: Create Online GP Encounter (skeleton)

```
POST [base]/Encounter
Content-Type: application/fhir+json
Accept: application/fhir+json
```

```json
{
  "resourceType": "Encounter",
  "meta": {
    "source": "https://standards.digital.health.nz/ns/hpi-facility-id/FZZ111-A",
    "tag": [
      {
        "system": "https://hub.services.digital.health.nz/ns/correlation-id",
        "code": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
      }
    ],
    "profile": [
      "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/OnlineGPEncounter"
    ]
  }
  // ... remainder as per profile requirements: serviceProvider, participant, subject, status, class, type, period, etc.
}
```
### Shared Care Claim (Claim)

#### What it represents

A _generic_ profiled Claim resource for **requests for payment** for subsidised services performed under contract with Health NZ.

It is applicable across multiple services (including Online GP payment automation). The kind of service being claimed for will be specified by the `type` and `subType`attributes of the Claim.

#### Endpoints (FHIR REST)

- **Create (submit claim)**: POST [base]/Claim
- **Update**: PUT [base]/Claim/{id}
- **Read**: GET [base]/Claim/{id}
- **Search**: GET [base]/Claim?{search-params}


#### Key information

##### Claim-level:

| Service Spec Field | FHIR Attribute | Notes |
|------|-----------|-------|
| HPI Facility | meta.source | Mandatory. HPI Facility Id where the record originated. |
| Provider Organisation | provider | Mandatory. HPI Organisation Id. |
| National Health Index (NHI) | patient | Mandatory. NHI number. |
| Event Start Datetime<br>Event End Datetime| billablePeriod | Mandatory. End of (claim) period is used as the claim date. |
|  | insurance | Mandatory. Set to a data-absent-reason of "not-applicable". |
|  | agreementNumber | Mandatory. Will be from the provider's contract with Health NZ. |
|  | status | Mandatory. Normally "active" or "cancelled". Use "draft" if only for reporting automation purposes. |
|  | type | Mandatory. Set to "professional" for Online GP claims. |
|  | subType | Mandatory. Set to "telehealth" for Online GP claims. |
|  | use | Mandatory. Set to "claim" (for validation, adjudication, & payment processing). |
|  | priority | Mandatory. Set to "normal" |
|  | created | Mandatory. Datetime when claim created in source system. |
|  | related | Optional. Reference to an earlier related or cancelled Claim. |

##### Claim item-level:

| Service Spec Field | FHIR Attribute | Notes |
|------|-----------|-------|
| Purchase Unit Code (PUC) | item.productOrService | Mandatory. Used to look up the relevant fee(s) and pricing.<br>Could be a PUC or a product code. |
| Amount Paid by Health NZ | n/a |  |
| Amount paid by Co-payment | item.patientPaid | Co-payment amount paid by the patient. Required for Online GP reporting. |
| Token | item.encounter | Reference to the Encounter. Required for payment determination. |
|  | item.sequence | Mandatory. Natural number unique for Claim. |
|  | item.servicedPeriod | When the service being claimed started and ended. |
|  | item.quantity | Number of units (of PUC) claimed. |

Notes:
- The claim can reference one or more Encounter resources (one per `item`) via `Claim.item.encounter`. However, any given encounter should only be part of one "active" adjudicated claim.
- There are no `unitPrice`, `net`, or `tax` attributes for `Claim.item` in this profile because Health NZ will look up and/or determine those actual amounts during claim processing and report them in the `ClaimResponse`. 
- A claimed encounter could have multiple activities (items) - each with their own fee(s) and pricing.
- `Claim.item.detail` records are not used for Online GP claims.

##### Example: Submit a Telehealth Claim (skeleton)

```
POST [base]/Claim
Content-Type: application/fhir+json
Accept: application/fhir+json
```

```json
{
  "resourceType" : "Claim",
  "meta" : {
    "source" : "https://standards.digital.health.nz/ns/hpi-facility-id/F12345-A",
    "profile" : [
      🔗 "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/SharedCareClaim"
    ],
    "tag" : [
      {
        "system" : "https://hub.services.digital.health.nz/ns/correlation-id",
        "code": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
      }
    ]
  },
  // ... remainder per profile requirements: provider, patient, billablePeriod, insurance, item(s),  etc.
}
```

##### Example: Retrieve submitted Claim by id

```
GET [base]/Claim/{id}
Accept: application/fhir+json
```

### Shared Care Claim Response (ClaimResponse)

#### What it represents

A profiled `ClaimResponse` resource describing validation and/or adjudication (determination) results for submitted Share Care Claims.


#### Endpoints (FHIR REST)

- **Read**: GET [base]/ClaimResponse/{id}
- **Search**: GET [base]/ClaimResponse?{search-params}


#### Key information

Each resource references the original claim via `ClaimResponse.request`.

Claim-level or claim item-level attributes that have failed validation, including where a fee cannot be identified, will be reported as records in the `ClaimResponse.error` collection. The overall `ClaimResponse.outcome` will be recorded as "error". Any errors related to a claim item will have the corresponding `itemSequence` set to the value of the `Claim.item.sequence`. Claim-level errors will not have a value set for their `itemSequence`.

Once the claim and its items are validated then each `Claim.item` will be adjudicated. Information and failure messages relating to the adjudication (approval or denial) for the item will be reported as records within the `ClaimResponse.item.reviewOutcome` record. If all the items in the claim are approved then the `ClaimResponse.outcome` will be set to "complete". Otherwise, if any item had a denial then the `ClaimResponse.outcome` will be set to "partial". Payment may be made for any successfully adjudicated items.

##### Response level attributes:

| FHIR Attribute | Notes |
|----------------|-------|
| meta.source | Set to the `Claim.meta.source` |
| request | Reference to the Claim |
| identifier | Health NZ's identifier (GUID) for the adjudicated claim. |
| status | Status of the validation and/or adjudication of the claim version (request). Set to "active" or "cancelled". |
| type | Set to the `Claim.type` |
| subType | Set to the `Claim.subType` |
| use | Set to the `Claim.use` |
| patient | Set to the `Claim.patient` |
| created | When Health NZ created the record |s
| insurer | Health NZ's HPI Organisation ID. I.e. "G0K357-H" |
| requestor | Optional. Set to the `Claim.provider` |
| outcome | Mandatory. Overall outcome of the validation and/or adjudication. I.e. "error", "complete", "partial" |
| total | The financial sum of all adjudicated items grouped by 'adjudication category' (e.g. "benefit").<br>Each record should contain a `category` and `amount` |
| payment | N/a because managed separately by Health NZ's finance system |
| error | Collection of zero or more records describing each validation failure.<br>Each record will contain: `code` (determination rule id) and `text` (the associated validation error message), and may contain an `itemSequence` (referring to the `Claim.item.sequence`). |
| item | Collection of zero or more records for each _adjudicated_ `Claim.item`.<br>The `Claim.item` must have been successfully validated in order to be subsequently adjudicated and be populated here. |
| addItem | N/a |


##### Response item-level attributes:

| FHIR Attribute | Notes |
|----------------|-------|
| itemSequence | Mandatory (if `item` exists) |
| traceNumber  | Health NZ's identifier (GUID) for the adjudicated claim item. |
| productOrService | Set to the `Claim.item.productOrService` (i.e. purchase unit code or product code)|
| reviewOutcome | A record describing the **overall adjudication outcome of the claim item** and associated information or failure messages for the claim item.<br>It consists of a `decision` ("approved" or "denied") and zero or more `reason` record(s).<br>Each reason record contains:<br>- `code` (the adjudiction/determination rule id)<br>- `display` ("passed" or "failed")<br>- `definition` (the information or failure message)<br>- `system` (the Health NZ code set describing the error, information, and adjudication failure messages) |
| adjudication | A collection of one or more records **summarising the amount payable for this adjudicated claim item** per adjudication category (e.g. "benefit") and "policy" (the adjudication reason code).<br>Each adjudication record will contain:<br>- `category` (mandatory adjudication category e.g. "benefit")<br>- `reason` (optional adjudication reason codes - set to "policy")<br>- `amount` (sum of calculated amounts for this claim item and adjudication category)<br>- `value` (optional quantity from the claim item) |
| detail | N/a |

##### Example: Find claim response(s) for a given Claim

```
GET [base]/ClaimResponse?request=Claim/{claimId}
Accept: application/fhir+json
```

##### Example: Read a ClaimResponse by id

```
GET [base]/ClaimResponse/{id}
Accept: application/fhir+json
```
