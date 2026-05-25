
Health NZ \| Te Whatu Ora provides the agreement and payment services for New Zealand's Integrated Community Pharmacy Services Agreement (ICPSA). The ICPSA is the national contract under which Health NZ purchases community pharmacy services from community pharmacy providers.

Pharmacies are paid according to specific service eligibilty rules and payment formulae described in the ICPSA.

**The Pharmacy Management System (PhMS) at each pharmacy will electronically submit requests for payment ("Pharmacy Claims") for dispensed medications, under the terms of the ICPSA, to a FHIR Claim API endpoint** published via Health NZ's Digital Services Hub. This replaces an electronic claiming process that transfers a claim CSV file, formatted according to the Pharmacy Transactions Data Specification (PTDS), over a legacy integration system.

It is intended for the PhMS to provide some kind of review and approval capability where pharmacists may review listed dispensing transactions and approve their release for inclusion in a payment claim. This may be as granular as **one payment claim per patient per prescription per day** and can be submitted continuously throughout each business day – or batched & submitted periodically during the week (e.g. every couple of hours, end of day, or end of week) as desired by each pharmacy.

Although the new submission process allows the payment claims to be submitted as frequently as desired by the pharmacy, the **Health NZ claim processing system will still be performing a weekly determination run** for each Claim Period & pharmacy – as it does today. Near-realtime pre-determination remains a future-state capability.

The PhMS will be notified when a submitted payment claim has been processed (approved/rejected) and **the PhMS will be able to fetch the outcome of the claim ("Pharmacy Claim Response") from a FHIR API endpoint** and present the results to the PhMS user. Payments for each Claim Period will be according to the current ICPSA schedule.


### Overview

This section summarises the **FHIR REST API endpoints** used to exchange:
- **Pharmacy Claims** as operational reporting of **payment requests** for reimbursement for funded services delivered under the ICPSA.
  - Source profile: *[NZ Pharmacy Claim](https://fhir-ig-uat.digital.health.nz/shared-care/StructureDefinition-NzPharmacyClaim.html)* (a profiled `Claim`)
  - Referencing:
    - **Pharmacy Medication Dispense**
      - Source profile: *[NZ Pharmacy Medication Dispense](https://fhir-ig-uat.digital.health.nz/shared-care/StructureDefinition-NzPharmacyMedicationDispense.html)* (a profiled `MedicationDispense`)
    - **Pharmacy Medication Request**
      - Source profile: *[NZ Pharmacy Medication Request](https://fhir-ig-uat.digital.health.nz/shared-care/StructureDefinition-NzPharmacyMedicationRequest.html)* (a profiled `MedicationRequest`)
- **Pharmacy Claim Responses** for Health NZ to detail the **outcome of a payment request** (i.e. claim) including validation errors and/or adjudication outcomes describing why the payment request was approved or denied.
  - Source profile: *[NZ Pharmacy Claim Response](https://fhir-ig-uat.digital.health.nz/shared-care/StructureDefinition-NzPharmacyClaimResponse.html)* (a profiled `ClaimResponse`)


Note: When viewing a profile, look at the 'Snapshot Table' tab for the consolidated view of the resource profile.

These Pharmacy Claiming artefacts are exchanged using **standard FHIR RESTful interactions** on their base resource types:
`Claim`, `MedicationDispense`, `MedicationRequest`, and `ClaimResponse`.  

Each "Pharmacy Claim" will consist of a POST of a FHIR `Bundle` containing a single FHIR `Claim` along with associated `MedicationDispense` and `MedicationRequest` resources.

This Shared Care FHIR server’s **[Capability Statement](https://fhir-ig.digital.health.nz/shared-care/CapabilityStatement-SharedCareFHIRAPICapabilityStatement.html)** should be treated as the source of truth for which interactions/search parameters are enabled.

---
### Pharmacy Claiming Use Cases
1. **Submit a new request for payment of a Pharmacy Claim** (status of "active") in a Bundle with referenced resources
2. **Submit an update to a request for payment of a Pharmacy Claim** (status of "active") in a Bundle with referenced resources to correct a validation or adjudication failure, for a credit, or for a credit & resubmission)
3. **Fetch a Claim Response describing the outcome of a request for payment of a Pharmacy Claim** (payment validation & adjudication results)
4. **View a request for payment (Pharmacy Claim) that has been submitted** (details of the Claim)

#### Not currently supported
1. **Submit a cancellation of a request for payment of a Pharmacy Claim** (status of "cancelled")

---

### FHIR API endpoint conventions

Applicable to all use cases.

#### Base URL
- `[base]` = Shared Care FHIR Server base endpoint (environment-specific).

#### Common attributes (as profiled)
The profile of Claim requires a `meta.source` and a `correlation-id` slice for `tag` to be included in the request body.

| Attribute | Notes |
|-----------|---------------|
| **meta.source** | HPI Facility ID URI representing the PhMS system of record |
| **tag.correlation-id** | Coding consisting of a `code` (a GUID) fixed to a specific `system` (i.e. `"https://hub.services.digital.health.nz/ns/correlation-id"`) used for observability/tracing of a request within Health NZ. |

#### Request-Context header

All requests must include a [standard Health NZ 'Request-Context' custom header (Base64 encoded)](https://github.com/tewhatuora/schemas#request-context-header). The purpose of use should be "HPAYMT".

---
<br>

## NZ Pharmacy Claim (Claim)
---
### What it represents

A _specific_ profiled Claim resource for **requests for payment for each component of a dispensed medication** originating from each pharmacy's PhMS - performed **in accordance with the ICPSA**.

It is how the PhMS submits a request for payment through Health NZ's "front door" for a pharmacy and period of time.

It represents the ICPSA payment request by the provider via their PhMS for dispensing(s) at the pharmacy for either:
* One specific patient (NHI) during the claim period; or
* All supply orders during the claim period
  * These do not have a patient and instead a data-absent-reason of "not-applicable" must be supplied in the mandatory `patient` attribute instead of the reference to a Patient.

It can be identified from the `type` (pharmacy) and `subType` (ICPSA) attributes of the Claim in addition to its specific profile.

It is recommended to submit a FHIR `Bundle` including the `Claim` and referenced resources for each patient (or supply orders) per prescription per day.

### Endpoints (FHIR REST)

- **Create (submit claim)**: POST [base]/Claim
- **Update**: PUT [base]/Claim/{id}
- **Read**: GET [base]/Claim/{id}
- **Search**: GET [base]/Claim?{search-params}


### Key information

#### Claim-level

It is intended to represent a **payment request from a pharmacy for a patient (or supply orders) per prescription per day**.

| PTDS Field | FHIR Attribute | Notes |
|------|-----------|-------|
|  | meta.source | Mandatory. HPI Facility Id where the record originated. |
| File ID (3) | identifier | Mandatory. Business identifier(s) for the individual Claim request.<br>The "official" identifier string should uniquely identify the submitted Claim request within the PhMS.<br>Note: In legacy claims the CSV file was allocated the "File ID" by the PhMS. But with the API interface there is no longer the concept of a "file". If the PhMS wishes to retain a "File ID" to represent a Claim Period or similar then it can optionally be included as an `identifier` string with an appropriate system.|
| Record Type (1) | type | Mandatory. Set to "pharmacy" for ICPSA claims. Reuses standard FHIR type.|
| Record Type (1) | subType | Mandatory. Set to "ICPSA" for pharmacy ICPSA claims  (NZ-specific value set). |
|  | use | Mandatory. Set to "claim" (for validation, adjudication, & payment processing). |
|  | status | Mandatory. Set to "active" (or "cancelled" if PhMS-driven cancellations are supported). |
|  | priority | Mandatory. Set to "normal" |
|  | insurance | Mandatory (in the base resource). Set the `insurance.coverage` to a data-absent-reason of "not-applicable". |
| File Date (5) | created | Mandatory. Datetime when claim created in PhMS. |
| NHI (38) | patient | Mandatory. NHI number (or data-absent-reason of "not-applicable" for supply orders i.e. BSOs/PSOs). |
| Claim Date (12) | billablePeriod | Mandatory. Date _range_ that represents the Claim Period. **The _end date_ of the `billablePeriod` will be used as the "claim date"** to determine the applicable Claim Period (and therefore when it will be paid according to the ICPSA). |
| Patient Cohort (50) | patientCohort (extension) | Optional. String. |
| Agreement Number/<br>Alternate Contract<br>Number (4) | claimantNumber (extension) | Mandatory. Identifies the party who will be paid for the claim. |
| Originating Agreement<br>Number (82) | originatingClaimantNumber (extension) | Mandatory. Identifies the party who originally dispensed the claim. |
|  | related | Optional. Reference to an earlier related or cancelled Claim. |
|  | provider | Mandatory. HPI Organisation Id that owns this Claim record (and correspondng to the HPI Organisation in the OAuth2 credential). An organisation can only see their own Claim records.<br>Note: `claimantNumber` (above) will represent who gets paid for each ICPSA claim. |
|  | enterer | Optional. Author or approver of the claim. |
|  | item | Mandatory. **One record per dispensing transaction** in the claim. |


#### Claim item-level

This **represents a dispensing transaction and its dispensed medication**. 

Each Claim `item` (unless it is a "C"redit transaction) will refer to a FHIR `MedicationDispense` (describing the dispensing). Each `MedicationDispense` will refer to a FHIR `MedicationRequest` (describing the prescription item).

Each Claim `item` _must_ have one or more `detail` records – one for each component of the dispensed medication to be approved for payment. The `quantity` claimed is _per component_ at the item `detail`-level.

| PTDS Field | FHIR Attribute | Notes |
|------|-----------|-------|
|  | item.sequence | Mandatory. Natural number unique within the Claim. |
| Transaction Category (23) | item.transactionCategory<br>(extension) | Mandatory. Standard (“I”nvoice or null), “C”redit, “N”on-claim, “R”esubmission, “O”wed balance. |
| Patient Flag (49) | item.patientFlag (extension) | Boolean. Set when applicable. |
| Prescriber Flag (36) | item.prescriberFlag<br>(extension) | Boolean. Set when applicable. |
| Prescription Flag (60) | item.prescriptionFlag<br>(extension) | Boolean. Set when applicable. |
| Dose Flag (61) | item.doseFlag (extension) | Boolean. Set when applicable. |
| Group ID (31) | item.groupId (extension) | String. Set when applicable. |
| Extended Supply (71) | item.extendedSupplyFlag<br>(extension) | Boolean. Set when applicable. |
|  | item.request (extension) | Mandatory (unless a "C"redit transaction).<br>**Reference to FHIR MedicationDispense** describing the dispensing transaction including its requested medication.<br>Set to data-absent-reason of "not-applicable" if "C"redit transaction |
|  | item.productOrService | Mandatory (in the base resource). Specify the Purchase Unit Code (PUC) for the ICPSA service. |
| Date of Service (64) | item.servicedDate | Mandatory. **Dispensing date**. Date when the service being claimed occurred (yyyy-mm-dd). |
|  | item.detail | Mandatory. **One detail record for each claimed component of the dispensed medication** (e.g. ECPs in particular will have multiple components) |
| Claim Amount (78) | item.net | Mandatory. Amount being claimed for the dispensed medication. |

##### Medication Dispense

This describes **the dispensed medication** in the dispensing transaction.

| PTDS Field | FHIR Attribute | Notes |
|------|-----------|-------|
|    | identifier | Mandatory |
| Unique Transaction Number (22) | nzepsScriptNoLocal | Mandatory. Local PhMS identifier for the dispensing transaction. |
|   | authorisingPrescription | Mandatory. **Reference to FHIR Medication Request** describing the prescription item. |
| Claim Code (65)<br>Code Standard (66) | medication | Mandatory. CodeableConcept describing the dispensed _medication_ and its coding standard (e.g. Pharmacode). |
| Quantity Dispensed (67) | quantity | Mandatory |
| Date of Service (64) | whenPrepared | Mandatory |
|   | whenHandedOver | Optional. If known. |
|   | status | Mandatory from [standard FHIR value set](https://hl7.org/fhir/R4B/valueset-medicationdispense-status.html) |

##### Medication Request

This describes **the prescribed medication (drug)** in the prescription item of the dispensing transaction.

| PTDS Field | FHIR Attribute | Notes |
|------|-----------|-------|
|  | status | Mandatory. Set to "completed". |
|  | identifier | Mandatory (for NzepsMedicationRequest). Set to the SCID (unique NZePS ID) with system "nzeps-scid-item-id" |
| Prescription ID (62)<br>& Prescription Suffix (63) | identifier | Mandatory identifier(s): (Local) Prescription ID & Suffix, Unique NZePS SCID |
|  | medication | Mandatory (in base resource) but not required in legacy PTDS.<br>If not required then should not be collected - so use a `data-absent-reason` of "not-applicable". |
| NHI (38) | subject | Mandatory |
| Prescription Date (54) | authoredOn | Mandatory (FHIR profile to be updated). dateTime |
| Prescriber ID (28)<br>Health Professional<br>Group Code (29) | requester | Optional. Reference(Practitioner) (NZMC, HPI practitioner) |
| Locum ID (30) | recorder | Optional (if applicable). Reference(Practitioner) (NZMC, HPI practitioner) |
| Dispensings Required (55)<br>Repeats Expiry (56)<br>Total Quantity Prescribed (69)<br>Pack Unit of Measure (70) | dispenseRequest | Mandatory |
| Dose (57)<br>Daily Dose (58) | dosageInstruction | Mandatory |
| Special Authority Number (48)<br>Specialist ID (34)<br>Date of Endorsement (35)<br>Order Type (76)| nzepsEndorsementType | Optional. [Complex extension](https://fhir-ig.digital.health.nz/mdr/StructureDefinition-nzeps-endorsement.html) containing `endorsementType`, `value`, and `expiryDate`.<br>Set `endorsementType` of "SPECAUTH" and `expiryDate` for a Special Authority.<br>Set `endorsementType` of "specialist", `value` = specialist ID.<br>Set `endorsementType` of "specialistEndorsement", `value` = month & year (MMYYYY).<br>Set `endorsementType` of "orderType", `value` of 1 for prescriptions, 3 for PSOs, 4 for BSOs, 5 for WSOs as applicable. Would this be better as a `Claim.item.orderType` extension? |
| Patient Category (39)<br>CSC or PHO Status (40)<br>HUHC Status (43)<br>PSC Flag (46)| nzepsFundingCategory | Mandatory. [Extension](https://fhir-ig.digital.health.nz/mdr/StructureDefinition-nzeps-funding-category.html). |


#### Claim item detail-level

Each `detail` record represents **a claimed component of the dispensed medication**. Most dispensing medications have a single component. Extemporaneously compounded products (ECPs) have multiple components - each with separate `quantity` & pricing.

| PTDS Field | FHIR Attribute | Notes |
|------|-----------|-------|
| Component Number (24) | item.detail.sequence | Mandatory. Natural number unique within the `item` in this Claim. Set to the component number. |
| Claim Code (65)<br>Code Standard (66) | item.detail.productOrService | Mandatory. CodeableConcept describing the pharmaceutical _component_ being claimed and its coding standard (e.g. Pharmacode). | 
| Balance Owing (26) | item.detail.balanceOwing | Set when applicable. | 
| Wastage Quantity (77) | item.detail.wastageQuantity | Set when applicable. | 
| CBS Subsidy (79) | item.detail.cbsSubsidy | Set when applicable. | 
| CBS Packsize (80) | item.detail.cbsPackSize | Set when applicable. | 
| Claim Code (65)<br>Code Standard (66) | item.detail.productOrService | Mandatory. Pharmacode and/or NZULM code for the component of the dispensed medication.<br>Must include the coding required by Health NZ's claim processing system. |
| Quantity Claimed (68) | item.detail.quantity | Mandatory. Number of units of the dispensed component being claimed.  |


##### Legacy attributes not for inclusion

The following (legacy) PTDS fields will not be represented within a FHIR Claim:

* Sequence No (2)
* Sender ID (6)
* Role (7)
* Payee Number (8)
* System (9)
* System Version (10)
* Schedule Date (11)
* Record type (20)
* Total Component Number (25)
* CSC Number (41)
* CSC Expiry (42)
* HUHC Number (44)
* HUHC Expiry (45)
* PSC Number (47)
* Prescription Code (51)
* Prescription Code Standard (52)
* Prescription Quantity (53)
* Formulation Unit (59)
* SIG (73)
* Funder (81)
* Service Agreement Number (83)
* Health Insurance Claim (84)
* Form Number (85)
* Total Claim Value (93)


##### Example: Submit a Pharmacy Claim (skeleton)

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
      🔗 "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/NzPharmacyClaim"
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

<br>

## NZ Pharmacy Claim Response (ClaimResponse)
---
### What it represents

A profiled `ClaimResponse` resource describing validation and/or adjudication (determination) results for submitted Pharmacy Claims.


### Endpoints (FHIR REST)

- **Read**: GET [base]/ClaimResponse/{id}
- **Search**: GET [base]/ClaimResponse?{search-params}


### Key information

Each resource references the original claim via `ClaimResponse.request`.

Claim-level or claim item-level attributes that have failed validation, including where a fee cannot be identified, will be reported as records in the `ClaimResponse.error` collection. The overall `ClaimResponse.outcome` will be recorded as "error". Any errors related to a claim item will have the corresponding `itemSequence` set to the value of the `Claim.item.sequence`. Claim-level errors will not have a value set for their `itemSequence`.

Once the claim and its items are validated then each `Claim.item` (and each of its `Claim.item.detail` records) will be adjudicated. Information and failure messages relating to the adjudication (approval or denial) for the item will be reported as records within the `ClaimResponse.item.detail.reviewOutcome` record. If all the items in the claim are approved then the `ClaimResponse.outcome` will be set to "complete". Otherwise, if any item had a denial then the `ClaimResponse.outcome` will be set to "partial". Payment may be made for any successfully adjudicated items.

#### Response-level attributes

| LBL attribute | FHIR Attribute | Notes |
|---------------|----------------|-------|
|  | meta.source | Set to the `Claim.meta.source` |
|  | request | Reference to the FHIR Claim |
| FileId | identifier(s) | 1. Internal Health NZ "File ID" equivalent assigned during Claim batching process - which will be presented on financial reporting (the `claimId`).<br>2. Internal Health NZ identifier for the determination run (e.g. Request Group ID).<br>Note: The FHIR Claim is already linked via the `request` attribute above.|
|  | status | Status of the validation and/or adjudication of the claim version (request). Set to "active" or "cancelled". |
|  | type | Set to the `Claim.type` |
|  | subType | Set to the `Claim.subType` |
|  | use | Set to the `Claim.use` |
|  | patient | Set to the `Claim.patient` |
| DateValidated | created | When Health NZ created the determination record. |
|  | insurer | Health NZ's HPI Organisation ID. I.e. "G0K357-H" |
|  | requestor | Optional. Set to the `Claim.provider` |
|  | outcome | Mandatory. **Overall outcome** of the validation and/or adjudication. I.e. **"error", "complete", "partial"** |
|  | total | The financial sum of all adjudicated items grouped by 'adjudication category' (e.g. "amountpaid").<br>Each record should contain a `category` and `amount` |
| PaymentDueDate | payment.date<br>payment.amount |  |
| Error1<br>Error2<br>Error3 | error(s) | Collection of zero or more records describing **each _validation_ failure**.<br>Each record will contain: `code` (determination rule id) and `text` (the associated validation error message).<br>Each record may contain an `itemSequence` (referring to the `Claim.item.sequence`) and a `detailSequence` (referring to the `Claim.item.detail.sequence`).<br>Note: _Adjudication_ failures are recorded in the `item.detail.reviewOutcome.reason` collection. |
|  | item | Collection of zero or more records describing each **_explicitly_ claimed** `productOrService` within the _adjudicated_ `Claim.item` (dispensing transaction) or `Claim.item.detail` (component).<br>Note: The `Claim.item` must have been successfully validated in order to be subsequently adjudicated and be populated here. |
|  | addItem | Optional. Not applicable for Pharmacy Claims.<br>It represents be a collection of zero or more records describing each additional fee calculated (i.e. where _not explicitly claimed_ as a `productOrService`) within each _adjudicated_ `Claim.item` or `Claim.item.detail` |

The following (legacy) LBL attributes will not be represented within a FHIR ClaimResponse:
* PrescriptionItem
  * UniqueTransactionNumber - already in the `Claim.item`
  * TransactionCategory - already in the `Claim.item`
  * TotalNumberOfComponents - already in the `Claim.item`
  * PrescriptionNumber - already in the `Claim.item`
  * PrescriptionSuffix - already in the `Claim.item`
  * ClaimCodeType - already in the `Claim.item`
  * ClaimCode - already in the `Claim.item`
  * QuantityDispensed - already in the `Claim.item`
* Component
  * ClaimCodeType - already in the `Claim.item.detail`
  * ClaimCode - already in the `Claim.item.detail`
  * QuantityDispensed - already in the `Claim.item.detail`
  * SequenceNumber - n/a

##### Response item-level attributes

The **validated/adjudicated dispensed medication** (a _summary_ of any components validated/adjudicated detail-level).

| LBL attribute<br>(`PharmaceuticalItem`) | FHIR Attribute | Notes |
|---------------|----------------|-------|
|  | itemSequence | Mandatory (if `item` exists). Matches the `Claim.item.sequence`. |
| UniqueTransactionNumber<br>SequenceNumber | traceNumber  | Optional collection of identifier(s).<br>1. 'Unique Transaction Number' of the adjudicated claim item.<br>2. 'SequenceNo' allocated to item during claim batching (system: ptds-sequence-no). |
|  | productOrService | Set to the claimed `Claim.item.productOrService` (i.e. purchase unit code or product code as per the Claim)|
| ItemStatus<br>Error1<br>Error2<br>Error3 | reviewOutcome | Mandatory. **A dispensing `item`-level summary of each review outcome** determined at item `detail`-level (for each component).<br>For pharmacy claims it will normally just populate the `decision` (“approved” or “denied”) and not populate any `reason` records (because they will be recorded at the detail-level) |
| QuantityPaid<br>DrugCost<br>Markups<br>Pharmaceutical Subsidy<br>SubsidyValue<br>PackSize<br>Patient Abatement<br>Professional Fees<br> | adjudication | A collection of one or more records **summarising the amount payable over each detail of this adjudicated dispensed item** per [Pharmacy Adjudication Category](https://fhir-ig-uat.digital.health.nz/shared-care/ValueSet-pharmacy-adjudication-category.html).<br>Each adjudication record will contain:<br>- `category` (mandatory Pharmacy Adjudication Category e.g. "drugcost", "professionalfees", etc.)<br>- `reason` (optional - not to be populated)<br>- `amount` (sum of monetary amounts calculated for each detail record and Pharmacy Adjudication Category)<br>- `value` (optional - not to be populated at item-level) |
|  | detail | One detail record for each component of the dispensed medication (e.g. ECPs in particular will have multiple components) |

##### Response item detail-level attributes

The **validated/adjudicated _component(s)_** of the dispensed medication.

| LBL attribute<br>(`Component`) | FHIR Attribute | Notes |
|---------------|----------------|-------|
| ComponentSequenceNumber | detailSequence | Mandatory (if `item.detail` exists). Matches the `Claim.item.detail.sequence`. |
| ClaimCode<br>ClaimCodeType | productOrService | The claimed `Claim.item.detail.productOrService` |
| QuantityDispensed | item.detail.quantity | Quantity of the dispensed component |
| QuantityPaid<br>DrugCost<br>Markups<br>Pharmaceutical Subsidy<br>SubsidyValue<br>PackSize<br>Patient Abatement<br>Professional Fees<br> | adjudication | A collection of one or more records **summarising the amount payable for this adjudicated detail record** per [Pharmacy Adjudication Category](https://fhir-ig-uat.digital.health.nz/shared-care/ValueSet-pharmacy-adjudication-category.html).<br>Each adjudication record will contain:<br>- `category` (mandatory Pharmacy Adjudication Category) e.g. "amountpaid", "drugcost", "professionalfees", etc.<br>- `reason` (optional - not to be populated)<br>- `amount` (monetary amount calculated for this detail record and Pharmacy Adjudication Category)<br>- `value` (quantity determined for this detail record and Pharmacy Adjudication Category if NOT a monetary amount) |
| ComponentStatus<br>Error1<br>Error2<br>Error3 | reviewOutcome (extension) | A record describing the **overall adjudication outcome of the detail record** and associated information or failure messages.<br>It consists of a `decision` ("approved" or "denied") and zero or more `reason` record(s).<br>Each reason record contains:<br>- `code` (the adjudiction/determination rule id)<br>- `display` ("passed" or "failed")<br>- `definition` (the information or failure message)<br>- `system` (the Health NZ code set describing the error, information, and adjudication failure messages).<br>Note: _Validation_ errors should be reported in the `ClaimResponse.error` collection. |


#### Example: Find Claim Response(s) for a given Claim

```
GET [base]/ClaimResponse?request=Claim/{claimId}
Accept: application/fhir+json
```

#### Example: Read a ClaimResponse by id

```
GET [base]/ClaimResponse/{id}
Accept: application/fhir+json
```
