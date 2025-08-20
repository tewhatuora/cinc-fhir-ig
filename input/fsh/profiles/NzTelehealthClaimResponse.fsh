Profile: NzTelehealthClaimResponse
Parent: ClaimResponse
Id: NzTelehealthClaimResponse
Title: "NZ Telehealth Claim Response"
Description: """A FHIR resource profile for NZ Telehealth Claim Responses for 24/7 telehealth services.

Note: In 4B item.adjudication, item.detail.adjudication, payment.amount, insurer compulsory fields, but not utilized in the example.
      The fields item.reviewOutcome and item.detail.reviewOutcome are not in R4B, but are in R5.
      item.adjudication.quantity R5 is item.adjudication.value in R4B.
"""
* ^version = "0.0.1"
* ^purpose = "This profile is used to represent telehealth claim responses in New Zealand for 24/7 telehealth services."
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ

* request 1..1
* request only Reference(NzTelehealthClaim)
* request ^short = "Reference to the Claim that was determined"

* identifier 1..*
* identifier ^short = "Business identifier(s) for the claim response"

// traceNumber extension - not available in FHIR 4B
// * extension contains
//     traceNumber named traceNumber 0..*
// * extension[traceNumber] ^short = "Other internal reference e.g. primary key ID from the determination system"

* status 1..1
* status ^short = "Status of the Claim Response: active, cancelled, draft, entered-in-error"

* type 1..1
* type from NzClaimTypes (extensible)

* subType 0..1
* subType from NzClaimSubtypes (extensible)

* created 1..1
* created ^short = "Date & time of claim determination"

* outcome 1..1

* requestor 0..1
* requestor ^short = "Party responsible for the Claim"

* item 1..*
* item ^short = "Claim response items"
* item.itemSequence 1..1
* item.itemSequence ^short = "Value of the corresponding Claim.item.sequence"

// traceNumber extension for item - not available in FHIR 4B
// * item.extension contains
//     traceNumber named traceNumber 0..1
// * item.extension[traceNumber] ^short = "Internal reference(s) for the determination (adjudication) of the claim item"

* item.extension contains
    ProductOrService named productOrService 1..1
* item.extension[ProductOrService] ^short = "To enable validation and, if required, supply or correction of the PU code"

// * item.reviewOutcome 0..1
// * item.reviewOutcome ^short = "Result of adjudication for this itemSequence"
// * item.reviewOutcome.decision 0..1
// * item.reviewOutcome.decision from ClaimDecisionCodes (extensible)
// * item.reviewOutcome.decision ^short = "Codified representation of the determination outcome"
// * item.reviewOutcome.reason 0..*
// * item.reviewOutcome.reason from ClaimDecisionReasonCodes (extensible)
// * item.reviewOutcome.reason ^short = "Codified reason(s) for the decision"

* item.adjudication 1..*
* item.adjudication ^short = "Adjudication (reason, amount, quantity) for each Adjudication Value Code"
* item.adjudication.category 1..1
* item.adjudication.category from AdjudicationValueCodes (extensible)
* item.adjudication.category ^short = "Codified representation of adjudication outcome"
* item.adjudication.reason 0..1
* item.adjudication.reason from AdjudicationReasonCodes (extensible)
* item.adjudication.reason ^short = "Codified reason(s) for the adjudication"
* item.adjudication.amount 1..1
* item.adjudication.amount ^short = "Monetary value of the adjudication"
* item.adjudication.value 0..1
* item.adjudication.value ^short = "Non-monetary value of the adjudication"

* item.detail 0..*
* item.detail ^short = "Any sub-determinations of this itemSequence"
* item.detail.detailSequence 1..1
* item.detail.detailSequence ^short = "Value of the corresponding Claim.item.detail.sequence"
// * item.detail.reviewOutcome 0..1
* item.detail.adjudication 1..* //this is now compulsory in R4B

* addItem 0..*
* addItem ^short = "Any line items added by Health NZ to the claim determination that were not in the original claim"

* adjudication 0..*
* adjudication ^short = "Claim-level adjudication"

* total 0..*
* total ^short = "Financial total of the claim for each Adjudication Value Code"

* payment 0..1
* payment ^short = "Summary of the payment being made"
* payment.type from PaymentTypeCodes (extensible)
* payment.type ^short = "Payment Type Code = complete or partial"
* payment.date 0..1
* payment.date ^short = "Expected date of payment (if known)"
* payment.amount 1..1 // this is now compulsory in R4B
* payment.amount ^short = "Payment amount"

* error 0..*
* error ^short = "Collection of errors produced during claim determination"
* error.itemSequence 0..1
* error.itemSequence ^short = "Refers to itemSequence to which the error relates"
* error.detailSequence 0..1
* error.detailSequence ^short = "Refers to detailSequence to which the error relates"
* error.subDetailSequence 0..1
* error.code 1..1
* error.code ^short = "Error code"

// Additional Value Sets for ClaimResponse
ValueSet: ClaimDecisionCodes
Id: claim-decision-codes
Title: "Claim Decision Codes"
Description: "Codes for claim decisions"
* ^status = #draft
* include codes from system https://standards.digital.health.nz/ns/claim-decision-codes

ValueSet: ClaimDecisionReasonCodes
Id: claim-decision-reason-codes
Title: "Claim Decision Reason Codes"
Description: "Codes for claim decision reasons"
* ^status = #draft
* include codes from system https://standards.digital.health.nz/ns/claim-decision-reason-codes

ValueSet: AdjudicationValueCodes
Id: adjudication-value-codes
Title: "Adjudication Value Codes"
Description: "Codes for adjudication values"
* ^status = #draft
* include codes from system https://standards.digital.health.nz/ns/adjudication-value-code

ValueSet: AdjudicationReasonCodes
Id: adjudication-reason-codes
Title: "Adjudication Reason Codes"
Description: "Codes for adjudication reasons"
* ^status = #draft
* include codes from system https://standards.digital.health.nz/ns/adjudication-reason-code

ValueSet: PaymentTypeCodes
Id: payment-type-codes
Title: "Payment Type Codes"
Description: "Codes for payment types"
* ^status = #draft
* include codes from system http://terminology.hl7.org/CodeSystem/ex-paymenttype

// Extensions
Extension: ProductOrService
Id: purchase-unit
Title: "Product Or Service"
Description: "To enable validation and, if required, supply or correction of the PU code"
* ^context.type = #element
* ^context.expression = "ClaimResponse.item"
* value[x] only CodeableConcept