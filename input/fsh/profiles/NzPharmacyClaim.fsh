Profile: NzPharmacyClaim
Parent: Claim
Id: NzPharmacyClaim
Title: "NZ Pharmacy Claim"
Description: "A FHIR resource profile for NZ Pharmacy Claims, including extensions for patient cohort and claimant information."

* ^version = "0.0.2"
* ^purpose = "This profile is used to represent pharmacy claims in New Zealand, including patient cohort information and claimant details."
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ


//--------- Top-Claim level elements ----------------------

* insert PCTapDerivedMetaDataRules
* meta.profile 1..1

* insert ProfilePatient(patient)
* patient.display 0..0

* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1

* type 1..1
* type from NzClaimTypes (extensible)

* subType 1..1
* subType from NzClaimSubtypes (extensible)

* billablePeriod 1..1
* billablePeriod.start 1..1
* billablePeriod.end 1..1
* billablePeriod.start obeys date-only
* billablePeriod.end obeys date-only

* created 1..1
* created obeys full-datetime-with-timezone

* use 1..1
* supportingInfo 0..*

* provider 1..1
* provider only Reference(Organization)
* insert LocalIdentifierDocs(provider)

* priority 1..1
* priority from http://hl7.org/fhir/ValueSet/process-priority (required)

* enterer 0..1
* total 1..1

* insurance 1..1
  * sequence 1..1
  * focal 1..1
  * coverage 1..1

//------------------// Extensions
* extension contains
    patient-cohort named patientCohort 0..1 and
    claimant-number named claimantNumber 1..1 and
    originating-claimant-number named originatingClaimantNumber 0..1

// Removed Claim elements
* contained 0..0
* insurer 0..0
* fundsReserve 0..0
* prescription 0..0
* originalPrescription 0..0
* payee 0..0
* careTeam 0..0
* diagnosis 0..0
* procedure 0..0
* accident 0..0

// ----------Claim Items Level Elements----------------------
* item 1..*
  * sequence 1..1
  
  * productOrService 1..1 // this is 1..1 in R4B, but 0..1 in R5

  * servicedPeriod 1..1
  * servicedPeriod only Period
  * servicedPeriod.start 1..1
  * servicedPeriod.end 1..1
  * servicedPeriod.start obeys full-datetime-with-timezone
  * servicedPeriod.end obeys full-datetime-with-timezone
  
  * extension contains
      patient-flag named patientFlag 0..1 and
      item-request named request 1..1 and
      prescriber-flag named prescriberFlag 0..1 and
      prescription-flag named prescriptionFlag 0..1 and
      dose-flag named doseFlag 0..1 and
      group-id named groupId 0..1 and
      transaction-category named transactionCategory 1..1 and
      extended-supply-flag named extendedSupplyFlag 0..1

  * extension[request].valueReference only Reference(NzPharmacyMedicationDispense)
  * extension[request].valueReference 1..1
  
  * extension[transactionCategory].value[x] only CodeableConcept
  * extension[transactionCategory].valueCodeableConcept from NzPharmacyTransactionCategory (required)
  

  * extension[extendedSupplyFlag].value[x] only boolean
  // Removed Claim items elements
  * revenue 0..0
  * category 0..0
  * modifier 0..0
  * programCode 0..0
  * udi 0..0
  * bodySite 0..0
  * subSite 0..0

  //-------------Claim Item Detail Level Elements ------------
  * detail 1..*
    * sequence 1..1
    * productOrService 1..1
    * quantity 1..1
    * net 1..1
    * extension contains
        hsaap-balance-owing named balanceOwing 0..1 and
        wastageQuantity named wastageQuantity 0..1 and
        cbsSubsidy named cbsSubsidy 0..1 and
        cbsPackSize named cbsPackSize 0..1
        
    // Removed Claim item detail elements
    * revenue 0..0
    * category 0..0
    * modifier 0..0
    * programCode 0..0
    * udi 0..0