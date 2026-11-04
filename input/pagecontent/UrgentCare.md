### Urgent Care Reporting Overview

Providers are required to submit this administrative/operational reporting to Health NZ on a regular basis. The pubished API endpoint allows providers (via their practice management systems) to automate the data submission process - allowing Health NZ to automate its reporting & analytics workflows. 

The reported attributes are not necessarily collected or set by the end user (clinician) when urgent care is provided to the patient. However, in that case this specification may describe what data should be reported instead by the integrating system.

### API Overview

This section summarises a usage of the **Encounter FHIR API endpoint**, part of the **Encounter-based Reporting and Payments FHIR API**, used to exchange operational/administrative reporting about **unplanned encounters that occurred in the urgent care space**.

Source profile: **[Urgent Care Encounter](https://fhir-ig.digital.health.nz/shared-care/StructureDefinition-UrgentCareEncounter.html)** (a profiled `Encounter`)

These Urgent Care artefacts are exchanged using **standard FHIR RESTful interactions** on their base resource types: `Encounter`.  

This Shared Care FHIR server’s **[Capability Statement](https://fhir-ig.digital.health.nz/shared-care/CapabilityStatement-SharedCareFHIRAPICapabilityStatement.html)** should be treated as the source of truth for which interactions/search parameters are enabled.

---

#### Urgent Care Reporting Use Cases
1. **Create or update the record of an Urgent Care Encounter** (reporting automation)
2. **View or fetch the details of an Urgent Care Encounter that has been submitted**

---

#### Common API endpoint conventions

Applicable to all use cases.

##### Base URL
- `[base]` = Shared Care FHIR Server base endpoint (environment-specific).

##### Common attributes (as profiled)
Each profile requires the following attributes to be included in the request body:

| Attribute | Notes |
|-----------|---------------|
| **meta.source** | HPI Facility ID URI representing the system of record |
| **meta.tag** | `correlation-id` coding consisting of a `code` (a UUID) fixed to a specific `system` (i.e. `"https://hub.services.digital.health.nz/ns/correlation-id"`) used for observability/tracing of a request within Health NZ. |

---
<br>

### Urgent Care Encounter (Encounter)

#### What it represents
A [profiled Encounter resource](https://fhir-ig.digital.health.nz/shared-care/StructureDefinition-UrgentCareEncounter.html) for operational reporting of **unplanned consultations/encounters for delivery of Urgent Care**.

#### Endpoints (FHIR REST)

- **Create**: `POST [base]/Encounter`
- **Update**: `PUT [base]/Encounter/{id}`
- **Read**: `GET [base]/Encounter/{id}`
- **Search**: `GET [base]/Encounter?{search-params}`


Confirm enabled interactions/search params in the server CapabilityStatement.

#### Key information

These are attributes in the published FHIR profile.

##### Phase 1

| Service Spec Data Element | FHIR Attribute | Cardinality | Notes |
|------|-----------|-----|--------|
| NHI (1)<br>Date of Birth (2)<br>Quintile (3)<br>Ethnicity (11)<br>Gender (12)<br>Suburb (15)<br>City (27)<br>Enrolled with any GP (26)<br>Eligible for Funding (43) | subject | 1 | Mandatory reference to the patient's NHI number.<br>Other statistical/demographic/enrolment/eligibility attributes can be derived.<br>The `type` will be "Patient".<br>The `identifier.value` will be the NHI number string.<br>The `identifier.system` will be `"https://standards.digital.health.nz/ns/nhi-id"`. |
| Unique Event ID (22) | identifier | 1 per system | Identifier. The `value` will be the Organisation's own unique identifier for this encounter in the context of their PMS database.<br>The `system` should be of the form `"https://<provider-name>.co.nz/ns/encounter-identifier"` (or similar). |
|  | status | 1 | Code. [Standard FHIR `status` value](http://hl7.org/fhir/R4/valueset-encounter-status.html). E.g. "finished" |
| Encounter Classification (Flag) (29) | class | 1 | Coding. [Classification/categorisation from FHIR value set](https://terminology.hl7.org/6.5.0/ValueSet-v3-ActEncounterCode.html). E.g. **"EMER" (emergency) for care at an urgent care clinic** where the patient receives immediate evaluation and (then) treatment, or "FLD" or "HH" for kinds of PRIME callouts. |
| Mode of Delivery (30) | type | 1 | CodeableConcept. [SNOMED CTID of a standard NZHTS delivery mode applicable to Urgent Care](https://nzhts.digital.health.nz/fhir/ValueSet/mode-of-delivery). E.g. "1258986006" (Face to face consultation with patient) |
| Clinician ID (18) | participant.individual | 1 (per `participant`) | Reference to the **HPI CPN** of each reported Clinician (one `participant` per Clinician).|
| Clinician Role/Type (19) | participant.type | 0 or more (per `participant`) | CodeableConcept. [SNOMED CTID for the **role, applicable to Urgent Care**, of the reported Clinician](#) (one `participant` per Clinician).|
| Organisation (31 & 32) | serviceProvider | 1 | HPI Organisation Id |
| Facility (21 & 33) | meta.source | 1 | HPI Facility Id where the record originated. |
| Primary Treatment Location (41) | location | 0 or more | References of location(s) or sub-location(s) where urgent care treatment was provided (HPI Facility, GLN or NZBN, Street Address, or other identifiers), including its [`physicalType`](https://hl7.org/fhir/R4/valueset-location-physical-type.html) (e.g. Site, Home, Road) and/or time `period` and/or `status`.
| Date/Time Arrival (5)| period.start<br>statusHistory | 1 | Time of beginning of encounter (full datetime with timezone).<br>Optional `statusHistory` with its `status` of "arrived" and its `period` (start/end time) |
| Date/Time Triage (6) | statusHistory | 0 or 1 | `statusHistory` with its `status` of "triaged" and its `period` (start/end time) |
| Date/Time Consult Start (7) | statusHistory  | 0 or 1 | `statusHistory` with its `status` of "in-progress" and its `period` (start/end time) |
| Date/Time Departure (9)| period.end<br>statusHistory | 1 | Actual time when the encounter ended (full datetime with timezone).<br>Optional `statusHistory` with its `status` of "finished" and its `period` (start/end time) |
| CSC Holder (3) | cscHolder (extension) | 0 or 1 | Boolean. True if patient is known to hold an active Community Services Card (or is a dependent of a holder) at the time of the encounter, otherwise false. |
| HUHC Holder (14) | huhcHolder (new extension) | 0 or 1 | Boolean. True if patient is known to hold an active High Use Health Card (or is a dependent of a holder) at the time of the encounter, otherwise false. |
| ACC Claim Associated (10) | accident (extension) | 1 | Boolean. True if accident and there is an associated ACC45 claim or ACC invoice, otherwise false (e.g. medical). |
| Enrolment Status at Clinic (13) | regCode (extension) | 1 | String (Code). Patient is "registered" (vs. "casual") with this practice (including this Facility ID) in order to get discounted (differential) pricing. Not intended to capture their NES enrolment. |
| Diagnosis Code(s) (16) | diagnosis (extension) | 0^ or more | CodeableConcept(s). SNOMED CTID(s) (findings) (preferred) or READ codes.<br>Patient must be able to opt-out of providing this medical-related information.<br>^If the patient has opted out then SNOMED CTID "414859005" ("No consent for electronic record sharing") must be provided instead. |
| Triage Category (17) | priority | 0 or 1 | CodeableConcept. Value from [Australasian Triage Scale value set (1-5)](https://fhir-ig.digital.health.nz/shared-care/ValueSet-australasian-triage-scale.html) is _preferred_ (not _required_).  |

##### Phase 2 or later

| Service Spec Data Element | FHIR Attribute | Cardinality | Notes |
|------|-----------|-----|--------|
| Brought in by Ambulance (24) | modeOfArrival (extension) | 1 | Coding. [Standard FHIR value set](https://terminology.hl7.org/7.1.0/en/ValueSet-v2-0430.html) including "A"mbulance or "U"nknown. |
| Referral Source (23) | hospitalization.admitSource | 0 or 1 | CodeableConcept. [SNOMED CTID of a referral source applicable to Urgent Care](#). |
| Outcome/Disposition (20) | hospitalization.dischargeDisposition | 0 or 1 | CodeableConcept. [SNOMED CTID of an outcome/disposition applicable to Urgent Care reporting, including unknown](#) |
| Date/Time Transfer to Observation (8) | statusHistory | 0 or 1 | `statusHistory` with its `status` of "observation" (new) and its `period` (start/end time) |
| Date/Time of Teletriage (42) | statusHistory | 0 or 1 | `statusHistory` with its `status` of "teletriage" (new) and its `period` (start/end time) |
| Reason for Urgent Care (25) | encounterReason (new extension) | 0 or more | CodeableConcept. [SNOMED CTID of an administrative reason, applicable to Urgent Care, for the encounter](#). Similar to Online GP _Appointment_ Reason. |
| POCT Performed (35) | pointOfCareTests (new extension) | 0 or more | CodeableConcept(s). [SNOMED CTID of each point of care test](#) that was performed. |
| POCUS Performed (36) | pocusPerformed (new extension) | 0 or 1 | Boolean. Point of care ultrasound was performed (true/false/unknown).|
| Radiology Performed (42) | radiologyPerformed (new extension) | 0 or 1 | Boolean. Radiology/X-ray was performed (true/false/unknown) |
| Co-payment Amount (37) | patientPaid (new extension) | 0 or 1 | Money. Co-payment amount charged by the practice for the urgent care encounter. Amount includes GST paid by the patient and excludes any additional charges. Zero if no co-payment charged. Null if unknown. Note: Attribute is named the same as the one within a `Claim.item`. |
| PRIME Callout (39) | primeCallout (new extension) | 0 or 1 | Boolean. True if the urgent care consultation was due to a PRIME callout, false otherwise. Null if unknown. |
| PRIME Incident Number (40) | masterIncidentNumber (new extension) | 0 or 1 | String. Master incident number associated to the PRIME callout. |
| Encounter Classification (Business Rules) (44) | serviceType | 0 or 1 | TBC |


##### Example: Search encounters for a patient by status

```
GET [base]/Encounter?patient={patientId}&status=finished
Accept: application/fhir+json
```

##### Example: Create Urgent Care Encounter (skeleton)

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
      "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/UrgentCareEncounter"
    ]
  }
  // ... remainder as per profile requirements: serviceProvider, participant, subject, status, class, type, period, etc.
}

