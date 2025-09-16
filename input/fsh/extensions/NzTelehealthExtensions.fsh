// Extensions for Shared Care Services
Extension: SharedCareCscNumber
Id: shared-care-csc-number
Title: "Shared Care CSC Number"
Description: "Community Services Card holder number for shared care encounters"
Context: Encounter
* value[x] only Identifier
* valueIdentifier.system = "https://standards.digital.health.nz/ns/csc-id"

Extension: SharedCareAccidentRelated
Id: shared-care-accident-related
Title: "Shared Care Accident Related"
Description: "Whether the encounter is accident-related (ACC vs HNZ funding)"
Context: Encounter
* value[x] only boolean

Extension: SharedCareRegistrationCode
Id: shared-care-registration-code
Title: "Shared Care Registration Code"
Description: "Patient enrollment status at the practice (enrolled or casual)"
Context: Encounter
* value[x] only string

Extension: SharedCareClaimTraceNumber
Id: shared-care-trace-number
Title: "Shared Care Claim Trace Number"
Description: "Internal primary key ID for shared care claim tracking"
Context: Claim
* value[x] only Identifier

Extension: SharedCarePatientCopayment
Id: shared-care-patient-copayment
Title: "Shared Care Patient Copayment"
Description: "Co-payment amount paid by patient for shared care services"
Context: Claim.item
* value[x] only Money

Extension: SharedCareProductOrService
Id: shared-care-product-or-service
Title: "Shared Care Product Or Service"
Description: "Validation and correction of purchase unit codes for shared care services"
Context: ClaimResponse.item
* value[x] only CodeableConcept
* value[x].coding.system = "https://standards.digital.health.nz/ns/purchase-unit"

Extension: SharedCareItemTax
Id: shared-care-item-tax
Title: "Shared Care Item Tax"
Description: "Tax amount claimed for shared care service items"
Context: Claim.item
* value[x] only Money

Extension: SharedCareReviewOutcome
Id: shared-care-review-outcome
Title: "Shared Care Review Outcome"
Description: "Adjudication result for shared care claim items"
Context: ClaimResponse.item
* extension contains
    decision 0..1 and
    reason 0..*
* extension[decision].value[x] only CodeableConcept
* extension[decision].valueCodeableConcept from ClaimDecisionCodes
* extension[reason].value[x] only CodeableConcept
* extension[reason].valueCodeableConcept from ClaimDecisionReasonCodes
