// Extensions for Telehealth
Extension: CscNumber
Id: csc-number
Title: "CSC Number"
Description: "Community Services Card holder number"
Context: Encounter
* value[x] only Identifier
* valueIdentifier.system = "https://standards.digital.health.nz/ns/csc-id"

Extension: Accident
Id: accident
Title: "Accident Related"
Description: "Whether the encounter is accident-related (ACC vs HNZ funding)"
Context: Encounter
* value[x] only boolean

Extension: RegCode
Id: reg-code
Title: "Registration Code"
Description: "Whether the patient is enrolled at the practice (enrolled or casual)"
Context: Encounter
* value[x] only string

Extension: TriageCategory
Id: triage-category
Title: "Triage Category"
Description: "Australasian Triage Scale (ATS) category"
Context: Encounter
* value[x] only code
* valueCode from australasian-triage-scale (required)

Extension: TraceNumber
Id: trace-number
Title: "Trace Number"
Description: "Internal primary key ID for the claim"
Context: Claim
* value[x] only Identifier

Extension: PatientPaid
Id: patient-paid
Title: "Patient Paid Amount"
Description: "Co-payment amount paid by the patient"
Context: Claim.item
* value[x] only Money

Extension: ProductOrService
Id: product-or-service
Title: "Product Or Service"
Description: "To enable validation and, if required, supply or correction of the PU code"
Context: ClaimResponse.item
* value[x] only CodeableConcept
* value[x].coding.system = "https://standards.digital.health.nz/ns/purchase-unit"

Extension: ItemTax
Id: item-tax
Title: "Item Tax"
Description: "Claimed tax amount for the item"
Context: Claim.item
* value[x] only Money

Extension: ReviewOutcome
Id: review-outcome
Title: "Review Outcome"
Description: "Result of adjudication for this item"
Context: ClaimResponse.item
* extension contains
    decision 0..1 and
    reason 0..*
* extension[decision].value[x] only CodeableConcept
* extension[decision].valueCodeableConcept from ClaimDecisionCodes
* extension[reason].value[x] only CodeableConcept
* extension[reason].valueCodeableConcept from ClaimDecisionReasonCodes