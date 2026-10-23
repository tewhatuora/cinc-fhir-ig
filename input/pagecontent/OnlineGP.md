# Online GP Reporting & Payment Automation

Health NZ offers a subsidised Online GP Care service that connects healthcare consumers to NZ-registered healthcare professionals at telehealth providers using secure digital technologies (primarily video consultations, typically via a mobile application). 

Doctors and nurse practitioners can assess symptoms, diagnose conditions, prescribe medications, and provide referrals – all from wherever the patient is. The service allows people to receive professional advice and treatment when they need it - no matter where they are or what time of day it is. It helps to ease pressure on emergency departments or urgent care services in a way that is complementary to the role of GPs in the community who remain responsible for their patients' continuity of care.

The Online GP/telehealth service providers can be accessed from [https://healthnz.govt.nz/onlinegp](https://healthnz.govt.nz/onlinegp).

Providers are required to submit administrative/operational reporting to Health NZ on a regular basis – as contractually described in the Telehealth Service Specification. The published API endpoints allow providers (via their practice management systems) to automate the reporting, requests for payment, and payment processing – instead of manually producing a report to send to Health NZ and manually raising invoices at the end of each month which must be manually reviewed & approved by Health NZ.

## Overview

This section summarises the **FHIR REST API endpoints** used to exchange:
- **Online GP Appointments** for operational reporting of booking-related attributes of the consultation with the clinician (including reporting of no-shows).
  - Source profile: **[Online GP Appointment](https://fhir-ig.digital.health.nz/shared-care/StructureDefinition-OnlineGPAppointment.html)** (a profiled `Appointment`)
- **Online GP Encounters** for operational reporting about the consultation.
  - Source profile: **[Online GP Encounter](https://fhir-ig.digital.health.nz/shared-care/StructureDefinition-OnlineGPEncounter.html)** (a profiled `Encounter`)
- **Claims** describing **payment requests** for reimbursement for subsidised services delivered and/or payment-related operational reporting about the consultation.
  - Source profile: **[NZ Shared Care Claim](https://fhir-ig.digital.health.nz/shared-care/StructureDefinition-SharedCareClaim.html)** (a profiled `Claim`)
- **Claim Responses** for Health NZ to detail the **outcome of a payment request** (i.e. claim) including validation errors and/or adjudication outcomes describing why the payment request was approved or denied.
  - Source profile: **[NZ Shared Care Claim Response](https://fhir-ig.digital.health.nz/shared-care/StructureDefinition-SharedCareClaimResponse.html)** (a profiled `ClaimResponse`)

These Online GP artefacts are exchanged using **standard FHIR RESTful interactions** on their base resource types:
`Appointment`, `Encounter`, `Claim`, and `ClaimResponse`.  

This Shared Care FHIR server’s **[Capability Statement](https://fhir-ig.digital.health.nz/shared-care/CapabilityStatement-SharedCareFHIRAPICapabilityStatement.html)** should be treated as the source of truth for which interactions/search parameters are enabled.

---

## Online GP Use Cases
1. **Create or update a record of _booking-related_ attributes of an Online GP consultation as an Online GP Appointment** (reporting automation)
2. **Create or update a record of attributes related to an Online GP consultation _that occurred_ as an Online GP Encounter** (reporting automation)
3. **Submit a request for payment of an Online GP Claim** (reporting & payment automation)
4. **Submit a correction to a request for payment of an Online GP Claim** (reporting & payment automation)
5. **Submit a cancellation of a request for payment of an Online GP Claim** (reporting & payment automation)
6. **Retrieve a Claim Response describing the outcome of a request for payment of an Online GP Claim** (payment automation adjudication results)
7. **View submitted _booking-related_ attributes of an Online GP consultation (Appointment)** (reporting automation)
8. **View submitted attributes of an Online GP consultation (Encounter)** (reporting automation)
9. **View a request for payment (Claim) that has been submitted** (reporting & payment automation)

---

## FHIR API endpoint conventions

Applicable to all use cases.

### Base URL
- `[base]` = Shared Care FHIR Server base endpoint (environment-specific).

### Common attributes (as profiled)
The profiles of Appointment, Encounter, and Claim require `meta.source` and a `correlation-id` slice for `meta.tag` to be included in the request body.

| Attribute | Notes |
|-----------|---------------|
| **meta.source** | HPI Facility ID URI representing the system of record |
| **meta.tag.correlation-id** | Coding consisting of a `code` (a UUID) fixed to a specific `system` (i.e. `"https://hub.services.digital.health.nz/ns/correlation-id"`) used for observability/tracing of a request within Health NZ.<br>A correlation id may be reused in a resubmission following a 5xx or 429 response code. However, if the request has changed (e.g. for a correction following a 400 response code) then a new correlation id must be provided.<br>When requesting the `ClaimResponse` paired with a submitted `Claim` request, its correlation id may be the same as that of the submitted `Claim`.|

---
<br>

# Online GP Appointment (Appointment)

## What it represents

A [profiled `Appointment` resource](https://fhir-ig.digital.health.nz/shared-care/StructureDefinition-OnlineGPAppointment.html) for operational reporting of **booking-related attributes of Online GP encounters** including recording of non-attendance (no-show/did not attend). Cancellations are not required for Online GP reporting purposes however.

Reporting is not provided until after the time of the planned encounter and will be alongside any corresponding `Encounter` or `Claim` resources (if applicable).

No associated `Encounter` or `Claim` needs to be provided for a no-show/did not attend.

## Endpoints (FHIR REST)
- **Create**: `POST [base]/Appointment`
- **Update**: `PUT [base]/Appointment/{id}`
- **Read**: `GET [base]/Appointment/{id}`
- **Search**: `GET [base]/Appointment?{search-params}`

## Key information

| Service Spec Field | FHIR Attribute | Notes |
|------|-----------|-------|
| HPI Facility | meta.source | Mandatory. HPI Facility Id where the record originated. |
| (Disposition) | status | Mandatory. Set to "fulfilled" (if an encounter occurred) or "noshow" (Did not Attend). |
| Telehealth Service Appointment Reason | reasonCode | Mandatory. _Non_-clinical reason. [Specific allowable SNOMED CTIDs](https://fhir-ig.digital.health.nz/shared-care/ValueSet-nz-onlinegp-appointment-reason-codes.html). |
| Provider Organisation | supportingInformation | Mandatory. Must be a reference to the HPI Organisation. |
| National Health Index (NHI) | participant | Mandatory. NHI number (if verified) otherwise a `data-absent-reason` of "not-asked" must be supplied (because normally the patient's identity is validated during the consultation). |
| Appointment Request Datetime | created | When appointment was booked |
| Event Start Datetime | start | Planned start time |
| Event End Datetime | end | Planned end time |

### Example: Search for Online GP Appointments by patient/date
```
GET [base]/Appointment?patient={patientId}&date=ge2026-03-01&date=le2026-03-31
Accept: application/fhir+json
```

### Example: Create Online GP Appointment (skeleton)
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

# Online GP Encounter (Encounter)

## What it represents
A [profiled `Encounter` resource](https://fhir-ig.digital.health.nz/shared-care/StructureDefinition-OnlineGPEncounter.html) for operational reporting of **Online GP encounters _that occurred_**.

No `Encounter` resource is required if the consultation was a no-show/did not attend. The `Appointment` resource will capture the required information.

## Endpoints (FHIR REST)

- **Create**: `POST [base]/Encounter`
- **Update**: `PUT [base]/Encounter/{id}`
- **Read**: `GET [base]/Encounter/{id}`
- **Search**: `GET [base]/Encounter?{search-params}`


Confirm enabled interactions/search params in the server CapabilityStatement.

## Key information

| Service Spec Field | FHIR Attribute | Notes |
|------|-----------|-------|
| HPI Facility | meta.source | HPI Facility Id where the record originated. |
| Provider Organisation | serviceProvider | Mandatory. HPI Org Id |
| Clinician | participant.role<br>participant.individual | Mandatory. Clinician role ([restricted to specific SNOMED CTIDs](https://fhir-ig.digital.health.nz/shared-care/ValueSet-onlinegp-participant-type.html) applicable to Online GP)<br>Mandatory. HPI CPN |
| National Health Index (NHI) | subject | Mandatory. NHI number. |
| CSC Holder | cscHolder (extension) | Boolean. True if patient is known to hold an active Community Services Card (or is a dependent of a holder) at the time of the encounter, otherwise false. |
| Enrolment Flag | regCode (extension) | NHI is either "enrolled" or "casual" at this HPI Facility (its "Registration Status" there). |
| Token | identifier | Mandatory. Identifier.<br>The `value` will be the Organisation's own unique identifier for this encounter in the context of their PMS database.<br>The `system` should be of the form `"https://<provider-name>.co.nz/ns/encounter-identifier"` (or similar). |
|  | status | Mandatory. [Restricted to allowed values](http://hl7.org/fhir/R4/valueset-encounter-status.html) e.g. "finished" |
|  | class | Mandatory classification. Restricted to "VR" from [the allowed value set](https://terminology.hl7.org/6.5.0/ValueSet-v3-ActEncounterCode.html) representing a virtual consultation. |
|  | type | Mandatory. [Restricted to specific SNOMED CTIDs](https://fhir-ig.digital.health.nz/shared-care/ValueSet-shared-care-encounter-type-valueset.html) describing the modality of the encounter e.g. "719410009" for video consultation |
|  | serviceType | Alternate categorisation of the encounter or type of consultation (if applicable) |
|  | appointment | Reference to the Appointment resource recording the booking-related attributes of the consultation. |
| Event Start Datetime<br>Event End Datetime| period | Mandatory. Actual time (start & end) of the encounter. Used to determine whether it was an _after-hours_ encounter for a service. |
| Provisional/Working Diagnosis code(s)<br><br>Health Consumer consent to share medical data| diagnosis (extension) | Optional. Restricted to the set of concept IDs from the SNOMED CT NZ Edition which is a superset of the International edition.<br>Patient must be able to opt-out of providing this medical-related information.<br>If the patient has opted out then SNOMED CTID "414859005" (No consent for electronic record sharing) must be provided instead.|
| Disposition | hospitalization.dischargeDisposition | [Restricted to specific SNOMED CTIDs](https://fhir-ig.digital.health.nz/shared-care/ValueSet-onlinegp-discharge-disposition.html) applicable to Online GP services. |

### Example: Search encounters for a patient by status

```
GET [base]/Encounter?patient={patientId}&status=in-progress
Accept: application/fhir+json
```

### Example: Create Online GP Encounter (skeleton)

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
# Shared Care Claim (Claim)

## What it represents

A _generic_ [profiled `Claim` resource](https://fhir-ig.digital.health.nz/shared-care/StructureDefinition-SharedCareClaim.html) for **requests for payment** for subsidised healthcare performed under contract with Health NZ.

It is applicable across multiple types of healthcare (including Online GP payment automation). The kind of healthcare being claimed for will be specified by the `type` and `subType` attributes of the `Claim`.

Multiple services (or products) can be claimed via the same `Claim` resource. Each service delivered during an encounter being claimed is represented as its own `Claim.item` (each with its own `productOrService` and `quantity`).

No `Claim` resource is required if the consultation was a no-show/did not attend.

## Endpoints (FHIR REST)

- **Create (submit claim)**: POST [base]/Claim
- **Update**: PUT [base]/Claim/{id}
- **Read**: GET [base]/Claim/{id}
- **Search**: GET [base]/Claim?{search-params}


## Key information

Claim-level:

| Service Spec Field | FHIR Attribute | Notes |
|------|-----------|-------|
| HPI Facility | meta.source | Mandatory. HPI Facility Id where the record originated. |
| Provider Organisation | provider | Mandatory. HPI Organisation Id. |
| National Health Index (NHI) | patient | Mandatory. NHI number. |
| Event Start Datetime<br>Event End Datetime| billablePeriod | Mandatory. End of (claim) period is used as the claim date. |
|  | insurance | Mandatory. Set to a [data-absent-reason](https://hl7.org/fhir/R4B/valueset-data-absent-reason.html) of "not-applicable". |
|  | agreementNumber | Mandatory. The base agreement/contract number string (without the version/variation number) from the provider's contract with Health NZ that was active when the service was delivered. |
|  | status | Mandatory. Normally "active" or "cancelled". Use "draft" if not intended for payment processing including for reporting automation purposes only. |
|  | type | Mandatory. Set to "professional" for Online GP claims. |
|  | subType | Mandatory. Set to "telehealth" for Online GP claims. |
|  | use | Mandatory. Set to "claim" (for validation, adjudication, & payment processing). |
|  | priority | Mandatory. Set to "normal" |
|  | created | Mandatory. Datetime when claim created in source system. |
|  | related | Optional. Reference to an earlier related or cancelled Claim. |

Claim item-level:

| Service Spec Field | FHIR Attribute | Notes |
|------|-----------|-------|
| Purchase Unit Code (PUC) | item.productOrService | Mandatory. CodeableConcept. The supplied `code` is used to look up the relevant fee(s) and pricing. It is usually a PUC but it could also be a "product code" (belonging to a PUC). If a PUC then the `system` must be set to `"https://standards.digital.health.nz/ns/purchase-unit"`. |
| Amount Paid by Health NZ | n/a |  |
| Amount paid by Co-payment | item.patientPaid | Money. Co-payment amount paid by the patient. Required for Online GP reporting. |
| Token | item.encounter | Reference to the Encounter. Required for payment determination. |
|  | item.sequence | Mandatory. Natural number unique for Claim. |
|  | item.servicedPeriod | When the service being claimed started and ended. |
|  | item.quantity | Number of units (of the `productOrService`) claimed. |

Notes:
- The `Claim` can reference one or more Encounter resources (one per `item`) via `Claim.item.encounter`. However, any given encounter should only be part of one "active" adjudicated claim.
- There are no `unitPrice`, `net`, or `tax` attributes for `Claim.item` in this profile because Health NZ will look up and/or determine those actual amounts during claim processing and report them in the `ClaimResponse`. 
- A claimed encounter will have delivered one or multiple services - each having its own contracted fee(s) and pricing and represented as a separate `Claim.item` (and its `productOrService`).
- `Claim.item.detail` records are not used for Online GP claims.

### Example: Submit an Online GP Claim (skeleton)

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

### Example: Retrieve submitted Claim by id

```
GET [base]/Claim/{id}
Accept: application/fhir+json
```

# Shared Care Claim Response (ClaimResponse)

## What it represents

A [profiled `ClaimResponse` resource](https://fhir-ig.digital.health.nz/shared-care/StructureDefinition-SharedCareClaimResponse.html) describing **validation and/or adjudication (determination) results for submitted Share Care Claims**.


## Endpoints (FHIR REST)

- **Read**: GET [base]/ClaimResponse/{id}
- **Search**: GET [base]/ClaimResponse?{search-params}


## Key information

Each resource references the original claim via `ClaimResponse.request`.

Claim-level or claim item-level attributes that have failed validation, including where a fee cannot be identified, will be reported as records in the `ClaimResponse.error` collection. The overall `ClaimResponse.outcome` will be recorded as "error". Any errors related to a claim item will have the corresponding `itemSequence` set to the value of the `Claim.item.sequence`. Claim-level errors will not have a value set for their `itemSequence`.

Once the claim and its items are validated then each `Claim.item` will be adjudicated. Information and failure messages relating to the adjudication (approval or denial) for the item will be reported as records within the `ClaimResponse.item.reviewOutcome` record. If all the items in the claim are approved then the `ClaimResponse.outcome` will be set to "complete". If no item was approved then the `ClaimResponse.outcome` will be set to "error". Otherwise, where there are multiple items in the claim and at least one was approved, but at least one item was denied, then the `ClaimResponse.outcome` will be set to "partial".

Payment may be made for any successfully adjudicated items. The `ClaimResponse` does not assert that it _has_ been paid or include any payment references so no `payment` attribute will be returned. Instead, the `total` will represent the sum of the amounts of all successfully adjudicated items (grouped by adjudication category) and that total amount will have been _submitted_ to Health NZ's finance system for payment. Each `amount` is calculated using the fee pricing applicable for the service date from the provider's contract (or contract variation) with Health NZ.

Response level attributes:

| FHIR Attribute | Notes |
|----------------|-------|
| meta.source | Set to the `Claim.meta.source` |
| request | Reference to the Claim |
| identifier | Health NZ's identifier (UUID) for the adjudicated claim. |
| status | Status of the validation and/or adjudication of the claim version (request). Set to "active" or "cancelled". |
| type | Set to the `Claim.type` |
| subType | Set to the `Claim.subType` |
| use | Set to the `Claim.use` |
| patient | Set to the `Claim.patient` |
| created | When Health NZ created the record |s
| insurer | Health NZ's HPI Organisation ID. I.e. "G0K357-H" |
| requestor | Optional. Set to the `Claim.provider` |
| outcome | Mandatory. Overall outcome of the validation and/or adjudication. I.e. "error", "complete", "partial" |
| total | The financial sum of all _successfully_ adjudicated items (i.e. where the `item.reviewOutcome.decision` is "approved") grouped by 'adjudication category' (e.g. "benefit").<br>Each record should contain a `category` and `amount` |
| error | Collection of zero or more records describing each validation failure.<br>Each record will contain: `code` (determination rule id) and `text` (the associated validation error message), and may contain an `itemSequence` (referring to the `Claim.item.sequence`). |
| item | Collection of zero or more records for each _adjudicated_ `Claim.item`.<br>The `Claim.item` must have been successfully validated in order to be subsequently adjudicated and be populated here. |
| addItem | N/a |

<br>Response item-level attributes:

| FHIR Attribute | Notes |
|----------------|-------|
| itemSequence | Mandatory (if `item` exists) |
| traceNumber  | Health NZ's identifier (UUID) for the adjudicated claim item. |
| productOrService | Set to the claimed `Claim.item.productOrService` (i.e. purchase unit code or product code as per the Claim)|
| reviewOutcome | A record describing the **overall adjudication outcome of the claim item** and associated information or failure messages for the claim item.<br>It consists of a `decision` ("approved" or "denied") and zero or more `reason` record(s).<br>Each reason record contains:<br>- `code` (the adjudiction/determination rule id)<br>- `display` ("passed" or "failed")<br>- `definition` (the information or failure message)<br>- `system` (the Health NZ code set describing the error, information, and adjudication failure messages) |
| adjudication | A collection of one or more records **summarising the amount payable for this adjudicated claim item** per adjudication category (e.g. "benefit") and "policy" (the adjudication reason code).<br>Each adjudication record will contain:<br>- `category` (mandatory adjudication category e.g. "benefit")<br>- `reason` (optional adjudication reason codes - set to "policy")<br>- `amount` (sum of calculated amounts for this claim item and adjudication category)<br>- `value` (optional quantity from the claim item) |
| detail | N/a |

### Example: Find claim response(s) for a given Claim

```
GET [base]/ClaimResponse?request=Claim/{claimId}
Accept: application/fhir+json
```

### Example: Read a ClaimResponse by id

```
GET [base]/ClaimResponse/{id}
Accept: application/fhir+json
```

---

## Compliance Requirements

### Request-Context header

All requests to the API must contain a standard `Request-Context` header:

| Attribute | Value |
|-----------|-------|
| **userIdentifier** | OAuth2 (Keycloak) Client ID (UUID) used by the system submitting data to the API. |
| **secondaryIdentifier** |  |
| **userFullName** | Name of the API-consuming application or PMS. |
| **userRole** | Set to `110150` (Application). |
| **purposeOfUse** | Use `"HPAYMT"` (from https://terminology.hl7.org/3.1.0/ValueSet-v3-PurposeOfUse.html).<br>Definition: To perform one or more operations on information for conducting financial or contractual activities related to payment for the provision of health care. |
| **orgIdentifier** | HPI Org Id of the provider organisation that owns the FHIR resources being reported. It must be the same as the HPI Org Id in the FHIR resource(s) submitted in the request payload.<br>For a `ClaimResponse`, this is the same HPI Org Id as the associated `Claim`. |
| **facilityIdentifier** | Set to the HPI Facility Id corresponding to the location of the consultation.<br>For a `ClaimResponse` this is the same facility as specified in the `Claim`. |

Example:

```
{
  "userIdentifier": "1b8200d7-3a8c-4fb6-8e5c-cec4540999d5",
  "userRole": "110150",
  "purposeOfUse": ["HPAYMT"],
  "userFullName": "SuperPMS",
  "orgIdentifier": "G00001-G",
  "facilityIdentifier": "FZZ999-B"
}
```

These API requests are in the _system_ context - i.e. occurring in the background initiated by a reporting or integration service (and _not_ as the direct result of a clinician requesting to view data via a user interface in a client system).

See also [Health NZ's Developer Guide (PDF)](https://github.com/tewhatuora/schemas/blob/main/Developer%20Guide%20System-to-System%20authentication%20%20clinical%20applications.pdf).

---

