Profile: SharedCareClaim
Parent: Claim
Id: SharedCareClaim
Title: "NZ SharedCare Claim"
Description: """A FHIR resource profile for NZ generic payment claims."""

* ^version = "1.0.0"
* ^purpose = "A FHIR resource profile for NZ generic payment claims."
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#NZ

* insert NzDerivedMetaDataRules

* insert ProfilePatient(patient)
// Core elements
* identifier 0..*
* identifier ^short = "Business identifier(s) for the claim"
* identifier ^comment = "Business identifier(s) for the claim (external and/or internal identifiers)"
* identifier.system 1..1
* identifier.value 1..1

* extension contains
    SharedCareClaimTraceNumber named traceNumber 0..* and
    shared-care-agreement-number named agreementNumber 1..1

* status 1..1

* type 1..1
* type from NzClaimTypes (extensible)
* type ^short = "Claim type"

* subType 0..1
* subType from NzClaimSubtypes (extensible)
* subType ^short = "Claim subtype"

* use 1..1

* created 1..1

* billablePeriod 0..1

* payee 0..1

* provider 1..1
* provider only Reference(Organization)
* provider ^short = "Legal entity who submitted the claim"
* provider ^comment = "Legal entity who submitted the claim - identifiable by its HPI identifier (or also its NZBN)"
* insert LocalIdentifierDocs(provider)


* supportingInfo 0..*
* supportingInfo ^short = "Additional attributes that may accompany a Claim"
* supportingInfo ^comment = "Additional attributes that may accompany a Claim including categorisation, coding, date or time, value, and reason."

* item 0..*
* item ^short = "Each individual product or service being claimed for as part of this claim"
* item.sequence 1..1 MS
* item.sequence ^short = "Referred to by the ClaimResponse.item.itemSequence"

* item.encounter 0..*
* item.encounter only Reference(Encounter)

* item.productOrService 1..1  // In 4B this has to be 1..1, not 0..1

* item.locationReference 0..1
* item.locationReference only Reference(Location)
* item.locationReference ^short = "HPI Facility"
* insert LocalIdentifierDocs(item.locationReference)

* item.extension contains
    SharedCarePatientCopayment named patientPaid 0..1
* item.quantity 0..1

* item.detail 0..*

// Not used but in 4B Required fields
* insurance 1..1
// * insurance.focal = false
// * insurance.sequence = 1
// * insurance.coverage = Reference(Coverage/example)

// Removed elements from claim
* insurer 0..0
* fundsReserve 0..0
* prescription 0..0
* originalPrescription 0..0
* payee 0..0
* careTeam 0..0
* diagnosis 0..0
* procedure 0..0
* accident 0..0
* total 0..0 // Not used in Telehealth claims

// Removed elements from claim.item
* item.unitPrice 0..0
* item.net 0..0
