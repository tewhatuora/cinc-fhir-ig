Profile: NzPharmacyClaimResponse
Parent: ClaimResponse
Id: NzPharmacyClaimResponse
Title: "New Zealand Pharmacy Claim Response"
Description: "FHIR profile for New Zealand pharmacy claim responses"


* insert PCTapDerivedMetaDataRules
* meta 1..1
* meta.profile 1..1

* identifier 1..1
* identifier ^short =  "ClaimResponse identifier"
* identifier ^definition = "Identifier assigned during de-batching, as per SharedCareClaim."
* identifier.system 1..1
* identifier.system = "https://standards.digital.health.nz/ns/claim-response-identifier" (exactly)
* identifier.value 1..1

* type 1..1
* type from NzClaimTypes (extensible)

* subType 1..1
* subType from NzClaimSubtypes (extensible)

* insurer 1..1
* insurer only Reference(Organization)
* insert LocalIdentifierDocs(insurer)

* requestor 1..1
* requestor ^short = "Party submitting the claim"
* requestor ^definition = "The entity submitting the claim. Must be the same as Claim.provider."
* requestor only Reference(Organization)
* insert LocalIdentifierDocs(requestor)

* request 1..1
* request ^short = "Reference to the original Claim"

* created 1..1
* created ^short = "DateValidated"

* outcome 1..1
* outcome ^short = "Claim processing outcome"
* outcome from http://hl7.org/fhir/ValueSet/remittance-outcome (required)

* item 0..*
* item ^short = "Adjudication for claim line items"
* item ^definition = "Adjudication details for claim line items. Not populated when validation errors occur; errors are reported in the error element instead."

* item.itemSequence 1..1
* item.itemSequence ^short = "To match Claim.item.sequence"

* item.extension contains
    SharedCareProductOrService named productOrService 1..1 and
    SharedCareReviewOutcome named reviewOutcome 1..1 and
    shared-care-trace-number named traceNumber 0..*

* item.extension[productOrService] ^short = "Product or Service code"
* item.extension[reviewOutcome] ^short = "Item-level review outcome summary"
* item.extension[reviewOutcome] ^definition = "A dispensing item-level summary of the review outcomes determined for each item.detail component. For pharmacy claims, only the decision is typically populated. Reason codes are recorded at the detail level."
* item.extension[traceNumber] ^short = "Internal trace identifier"
* item.extension[traceNumber] ^definition = "Optional reference for claim item level adjudication calculation"

//--ITEM ADJUDICATION --
* item.adjudication 1..*
* item.adjudication ^short = "Adjudication (reason, amount, quantity) for each Adjudication Value Code"
* item.adjudication ^definition = "Summary adjudication for the claim item. For pharmacy claims, this typically includes only the total amount paid (amountpaid). Detailed financial breakdowns must be represented at the item.detail.adjudication level."
* item.adjudication.category 1..1
* item.adjudication.category from PharmacyAdjudicationCategoryValueSet (extensible)

* item.adjudication.reason 0..1
* item.adjudication.reason from AdjudicationReasonCodes (extensible)
* item.adjudication.reason ^short = "Codified reason(s) for the adjudication"

* item.adjudication.amount 1..1
* item.adjudication.value 0..1


//--ITEM DETAIL --
* item.detail 1..*
* item.detail ^short = "Adjudication for claim detail items"
* item.detail ^definition = "At least one detail must be present for each item. Each detail represents a component of the dispensed pharmaceutical that is adjudicated and contributes to the item-level summary."

// Item Detail Extensions
* item.detail.extension contains
    SharedCareClaimTraceNumber named traceNumber 0..1 and
    PharmacyItemDetailProductOrService named productOrService 1..1 and
    PharmacyItemDetailReviewOutcome named reviewOutcome 1..1


* item.detail.extension[productOrService] ^short = "Dispensed pharmaceutical component"
* item.detail.extension[reviewOutcome] ^definition = "The overall result of the successful adjudication of the validated Claim.item.detail across all adjudication categories. Includes informational messages but excludes validation errors."
* item.detail.extension[traceNumber] ^short = "Internal trace identifier"
* item.detail.extension[traceNumber] ^definition = "Optional internal reference representing the adjudication calculation for the item detail."

//Item Detail detailSequence
* item.detail.detailSequence 1..1
* item.detail.detailSequence ^short = "To match Claim.item.detail.sequence"

// Item Detail Adjudication
* item.detail.adjudication 1..*
* item.detail.adjudication ^short = "Adjudication details breakdown"
* item.detail.adjudication.category from PharmacyAdjudicationCategoryValueSet (extensible)

* item.detail.adjudication.reason 0..1
* item.detail.adjudication.reason from AdjudicationReasonCodes (extensible)


//--Payment--

* payment 0..1
* payment ^short = "Payment details"

* payment.date 0..1
* payment.date ^short = "Payment date"

* payment.amount 1..1
* payment.amount ^short = "Payment amount"


//--ERRORS--
* error 0..*
* error ^short = "Processing errors"

* error.itemSequence 1..1
* error.itemSequence ^short = "Item sequence number"

* error.detailSequence 1..1
* error.detailSequence ^short = "Detail sequence number"

* error.code 1..1
* error.code ^short = "Error code"
* error.code ^definition = "HSAAP-style or Proclaim-style validation error codes used for claim decision reasons."
* error.code from https://fhir-ig.digital.health.nz/shared-care/ValueSet/claim-decision-reason-codes (required)

//removed from profile
* contained 0..0