Profile: NzTelehealthClaim
Parent: Claim
Id: NzTelehealthClaim
Title: "NZ Telehealth Claim"
Description: """A FHIR resource profile for NZ Telehealth Claims for 24/7 telehealth services.

Note: In 4B insurance, priority and item.productOrService are compulsory fields.
      The fields patientPaid, traceNumber and item.tax are not in R4B, but are in R5.
"""
* ^version = "0.0.1"
* ^purpose = "This profile is used to represent telehealth claims in New Zealand for 24/7 telehealth services."
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ

// Core elements
* identifier 0..*
* identifier ^short = "Business identifier(s) for the claim"
* identifier ^comment = "Business identifier(s) for the claim (external and/or internal identifiers)"

// * extension contains
//     traceNumber named traceNumber 0..*
// * extension[traceNumber] ^short = "Internal primary key ID for the claim"
// * extension[traceNumber] ^comment = "Internal primary key ID for the claim"

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
* item.sequence 1..1
* item.sequence ^short = "Referred to by the ClaimResponse.item.itemSequence"
* item.encounter 0..*
* item.encounter only Reference(Encounter)
* item.encounter ^short = "The (e.g. Telehealth) encounter for which this claim is made"
* item.productOrService 1..1 // In 4B this has to be 1..1, not 0..1
* item.productOrService ^short = "Purchase unit code for the transaction"
* item.productOrService ^comment = "Purchase unit code for the transaction - Telehealth service spec: 28 - Purchase Unit Code"
* item.servicedPeriod 1..1
* item.servicedPeriod.start 1..1
* item.servicedPeriod.start ^short = "When the claimed service started"
* item.servicedPeriod.start ^comment = "When the claimed service started (may affect the unitPrice and/or productOrService) - Telehealth service spec: 24 - Event Start datetime"
* item.servicedPeriod.end 1..1
* item.servicedPeriod.end ^short = "When the claimed service ended"
* item.servicedPeriod.end ^comment = "When the claimed service ended - Telehealth service spec: 25 - Event End datetime"
* item.locationReference 0..1
* item.locationReference only Reference(Location)
* item.locationReference ^short = "HPI Facility"
* item.locationReference ^comment = "Telehealth service spec: 4 - HPI Facility ID, 5 - Facility name"
// * item.extension contains
//     patientPaid named patientPaid 0..1
// * item.extension[patientPaid] ^short = "Co-payment amount paid"
// * item.extension[patientPaid] ^comment = "Co-payment amount paid - Telehealth service spec: 30 - Amount paid by Co-Payment"
* item.quantity 0..1
* item.quantity ^short = "Number of units claimed for product or service"
* item.unitPrice 0..1
* item.unitPrice ^short = "Claimed unit price of the service"
// * item.tax 0..1
// * item.tax ^short = "Claimed tax amount"
// * item.tax ^comment = "Claimed tax amount - Telehealth service spec: 29 - Amount paid by Health NZ"
* item.net 0..1
* item.net ^short = "Claimed pre-tax amount"
* item.net ^comment = "Claimed pre-tax amount (and sum of any detail rows if applicable) - Telehealth service spec: 29 - Amount paid by Health NZ"
* item.detail 0..*
* item.detail ^short = "Additional detail for the claim item"

// Extensions
// Extension: TraceNumber
// Id: trace-number
// Title: "Trace Number"
// Description: "Internal primary key ID for the claim"
// * ^context.type = #element
// * ^context.expression = "Claim"
// * value[x] only Identifier

// Extension: PatientPaid
// Id: patient-paid
// Title: "Patient Paid Amount"
// Description: "Co-payment amount paid by the patient"
// * ^context.type = #element
// * ^context.expression = "Claim.item"
// * value[x] only Money

// Value Sets
ValueSet: NzClaimTypes
Id: nz-claim-types
Title: "NZ Claim Types"
Description: "Types of claims in New Zealand"
* ^status = #draft
* include codes from system https://standards.digital.health.nz/ns/nz-claim-type

ValueSet: NzClaimSubtypes
Id: nz-claim-subtypes
Title: "NZ Claim Subtypes"
Description: "Subtypes of claims in New Zealand"
* ^status = #draft
* include codes from system https://standards.digital.health.nz/ns/nz-claim-subtype

ValueSet: ClaimCareTeamRoleCodes
Id: claim-careteam-role-codes
Title: "Claim Care Team Role Codes"
Description: "Roles for care team members in claims"
* ^status = #draft
* include codes from system https://standards.digital.health.nz/ns/claim-careteam-role-code

ValueSet: ProviderQualificationCodes
Id: provider-qualification-codes
Title: "Provider Qualification Codes"
Description: "Qualification codes for providers"
* ^status = #draft
* include codes from system https://standards.digital.health.nz/ns/provider-qualification-codes

// Code Systems
CodeSystem: NzClaimTypeCS
Id: nz-claim-type-cs
Title: "NZ Claim Type Code System"
Description: "Code system for NZ claim types"
* ^status = #draft
* ^caseSensitive = true
* #professional "Professional" "Outpatient claim from a telehealth physician"

CodeSystem: NzClaimSubtypeCS
Id: nz-claim-subtype-cs
Title: "NZ Claim Subtype Code System"
Description: "Code system for NZ claim subtypes"
* ^status = #draft
* ^caseSensitive = true
* #online-gp-services "Online GP Services" "Online GP services subtype"

CodeSystem: ClaimCareTeamRoleCS
Id: claim-careteam-role-cs
Title: "Claim Care Team Role Code System"
Description: "Code system for claim care team roles"
* ^status = #draft
* ^caseSensitive = true
* #primary "Primary" "Primary care provider"
