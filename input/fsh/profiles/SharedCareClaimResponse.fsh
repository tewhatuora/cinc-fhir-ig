Profile: SharedCareClaimResponse
Parent: ClaimResponse
Id: SharedCareClaimResponse
Title: "NZ SharedCare Claim Response"
Description: """A FHIR resource profile describing the outcome of NZ generic payment claims.

Note: In 4B item.adjudication, item.detail.adjudication, payment.amount, insurer are compulsory fields, but not utilized in the telehealth implementation.
      item.adjudication.quantity R5 is item.adjudication.value in R4B.
"""
* ^version = "1.0.0"
* ^purpose = "A FHIR resource profile describing the outcome of NZ generic payment claims"
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#NZ


* insert NzDerivedMetaDataRules

* request 1..1
* request only Reference(SharedCareClaim)
* request ^short = "Reference to the Claim that was determined"

* identifier 1..*
* identifier ^short = "Business identifier(s) for the claim response"
* identifier.system 1..1
* identifier.value 1..1

* extension contains
    SharedCareClaimTraceNumber named traceNumber 0..*

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

* item.extension contains
    SharedCareClaimTraceNumber named traceNumber 0..* and
    SharedCareProductOrService named productOrService 1..1 and
    SharedCareReviewOutcome named reviewOutcome 0..1

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
* item.detail.extension contains
    SharedCareClaimTraceNumber named traceNumber 0..* and
    SharedCareReviewOutcome named reviewOutcome 0..1
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
