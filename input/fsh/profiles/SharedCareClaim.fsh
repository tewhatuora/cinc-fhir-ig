Profile: SharedCareClaim
Parent: Claim
Id: SharedCareClaim
Title: "NZ SharedCare Claim"
Description: """A FHIR resource profile for NZ Telehealth Claims for 24/7 telehealth services.

Note: In 4B insurance, priority and item.productOrService are compulsory fields.
"""
* ^version = "0.0.1"
* ^purpose = "This profile is used to represent telehealth claims in New Zealand for 24/7 telehealth services."
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ

// Core elements
* identifier 0..*
* identifier ^short = "Business identifier(s) for the claim"
* identifier ^comment = "Business identifier(s) for the claim (external and/or internal identifiers)"

* extension contains
    SharedCareClaimTraceNumber named traceNumber 0..*

* status 1..1

* type 1..1
* type from NzClaimTypes (extensible)
* type ^short = "Claim type"
* type ^comment = "Outpatient claim from a telehealth physician"

* subType 0..1
* subType from NzClaimSubtypes (extensible)
* subType ^short = "Claim subtype"

* use 1..1

* created 1..1
* created ^short = "When the claim was created (by the provider)"

* billablePeriod 0..1
* billablePeriod ^short = "Claim period or billing period"

* insurer 0..1
* insurer only Reference(Organization)
* insurer ^short = "Payer (i.e. Health NZ)"

* payee 0..1
* payee ^short = "Who's getting paid - Provider Site in HSAAP"
* payee ^comment = "Should correspond to a Provider Site in HSAAP that is the holder of the agreement/contract and a Supplier Site in FPIM"

* patient 1..1
* patient only Reference(Patient)
* patient ^short = "Patient with NHI"

* provider 1..1
* provider only Reference(Organization)
* provider ^short = "Legal entity who submitted the claim"
* provider ^comment = "Legal entity who submitted the claim - identifiable by its HPI identifier (or also its NZBN)"

* careTeam 0..*
* careTeam ^short = "Practitioner(s) who provided the claimed service(s)"
* careTeam.sequence 1..1
* careTeam.provider 1..1
* careTeam.provider only Reference(Practitioner)
* careTeam.responsible 0..1
* careTeam.role 0..1
* careTeam.role from ClaimCareTeamRoleCodes (extensible)
* careTeam.qualification 0..1
* careTeam.qualification from ProviderQualificationCodes (extensible)

* total 1..1
* total ^short = "Total value of all of the claim items"

* supportingInfo 0..*
* supportingInfo ^short = "Additional attributes that may accompany a Claim"
* supportingInfo ^comment = "Additional attributes that may accompany a Claim including categorisation, coding, date or time, value, and reason. Probably not required by a 24/7 Telehealth claim but used for more specialised HSAAP pharmacy claims."

* item 0..*
* item ^short = "Each individual product or service being claimed for as part of this claim"
* item.sequence 1..1 MS
* item.sequence ^short = "Referred to by the ClaimResponse.item.itemSequence"
* item.encounter 0..*
* item.encounter only Reference(Encounter)
* item.encounter ^short = "The (e.g. Telehealth) encounter for which this claim is made"
* item.productOrService 1..1 MS // In 4B this has to be 1..1, not 0..1
* item.productOrService ^short = "Purchase unit code for the transaction"
// * item.serviced[x] 1..1
// * item.servicedPeriod 1..1
// * item.servicedPeriod.start 1..1
// * item.servicedPeriod.start ^short = "When the claimed service started"
// * item.servicedPeriod.end 1..1
// * item.servicedPeriod.end ^short = "When the claimed service ended"
* item.locationReference 0..1
* item.locationReference only Reference(Location)
* item.locationReference ^short = "HPI Facility"
* item.extension contains
    SharedCarePatientCopayment named patientPaid 0..1 and
    SharedCareItemTax named itemTax 0..1
* item.quantity 0..1
* item.quantity ^short = "Number of units claimed for product or service"
* item.unitPrice 0..1
* item.unitPrice ^short = "Claimed unit price of the service"
* item.net 0..1
* item.net ^short = "Claimed pre-tax amount"
* item.detail 0..*
* item.detail ^short = "Additional detail for the claim item"
