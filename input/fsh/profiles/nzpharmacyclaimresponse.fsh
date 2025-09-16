Profile: NzPharmacyClaimResponse
Parent: ClaimResponse
Id: NzPharmacyClaimResponse
Title: "New Zealand Pharmacy Claim Response"
Description: "FHIR profile for New Zealand pharmacy claim responses"

* identifier 1..1
* identifier ^short = "FileId - Should match the Claim id"

* extension contains shared-care-trace-number named traceNumber 0..*
* extension[traceNumber] ^short = "Number for tracking"


* request 1..1
* request ^short = "Reference to the original Claim"

* created 1..1
* created ^short = "DateValidated"

* outcome 1..1
* outcome ^short = "Claim processing outcome"
* outcome from http://hl7.org/fhir/ValueSet/remittance-outcome (required)

* item 1..*
* item ^short = "Adjudication for claim line items"

* item.itemSequence 1..1
* item.itemSequence ^short = "To match Claim.item.sequence"

* item.extension contains shared-care-product-or-service named productOrService 1..1
* item.extension[productOrService] ^short = "Purchase unit code"

* item.detail 1..*
* item.detail ^short = "Adjudication for claim detail items"

* item.detail.detailSequence 1..1
* item.detail.detailSequence ^short = "To match Claim.item.detail.sequence"

* item.detail.adjudication 1..*
* item.detail.adjudication ^short = "Adjudication details breakdown"
* item.detail.adjudication.category from pharmacy-adjudication-category (extensible)

* payment 0..1
* payment ^short = "Payment details"

* payment.date 0..1
* payment.date ^short = "Payment date"

* payment.amount 1..1
* payment.amount ^short = "Payment amount"

* error 0..*
* error ^short = "Processing errors"

* error.itemSequence 1..1
* error.itemSequence ^short = "Item sequence number"

* error.detailSequence 1..1
* error.detailSequence ^short = "Detail sequence number"

* error.code 1..1
* error.code ^short = "Error code"
* error.code from http://hl7.org/fhir/ValueSet/adjudication-error (required)