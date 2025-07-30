Profile: NzPharmacyClaim
Parent: Claim
Id: NzPharmacyClaim
Title: "NZ Pharmacy Claim"
Description: "A FHIR resource profile for NZ Pharmacy Claims, including extensions for patient cohort and claimant information."
* ^version = "0.0.1"
* ^purpose = "This profile is used to represent pharmacy claims in New Zealand, including patient cohort information and claimant details."
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ

// Top-level elements
* identifier 0..*
* type 1..1
* subType 0..1
* use 1..1
* supportingInfo 1..* MS
  * category 1..1 MS // Transaction Category
* created 1..1
* billablePeriod 0..1
* enterer 0..1
* patient 1..1 //0..1 why is this optional?
* provider 1..1
* total 1..1

// // Extensions
* extension contains
    patient-cohort named patientCohort 0..1 and
    claimant-number named claimantNumber 0..1 and
    originating-claimant-number named originatingClaimantNumber 0..1

// // Items
* item 1..*
  * sequence 1..1
 // * request 1..1 this is R5 only, not R4B
  * productOrService 1..1 // this is 1..1 in R4B, but 0..1 in R5
  * servicedDate 1..1
  * extension contains
      patient-flag named patientFlag 0..1 and
      prescriber-flag named prescriberFlag 0..1 and
      prescription-flag named prescriptionFlag 0..1 and
      dose-flag named doseFlag 0..1 and
      group-id named groupId 0..1
  * detail 1..*
    * sequence 1..1
    * productOrService 1..1
    * quantity 1..1
    * net 1..1
//     * extension contains
//         http://hl7.org.nz/fhir/StructureDefinition/hsaap-balance-owing named balance-owing 0..1 and
//         http://hl7.org.nz/fhir/StructureDefinition/wastageQuantity named wastageQuantity 0..1 and
//         http://hl7.org.nz/fhir/StructureDefinition/cbsSubsidy named cbsSubsidy 0..1 and
//         http://hl7.org.nz/fhir/StructureDefinition/cbsPackSize named cbsPackSize 0..1
