// Extensions for Shared Care Services
Extension: SharedCareCscHolder
Id: shared-care-csc-holder
Title: "Shared Care CSC holder"
Description: "Community Services Card holder for shared care encounters"
Context: Encounter
* value[x] only boolean

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
* valueIdentifier.system 1..1
* valueIdentifier.value 1..1

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

// Extension: SharedCareItemTax
// Id: shared-care-item-tax
// Title: "Shared Care Item Tax"
// Description: "Tax amount claimed for shared care service items"
// Context: Claim.item
// * value[x] only Money

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

Extension: SharedCareAgreementNumber
Id: shared-care-agreement-number
Title: "Shared Care Agreement Number"
Description: "The agreement/contract number between the provider and the 'insurer' (HNZ) including version number"
Context: Claim
* value[x] only string
* valueString ^short = "Agreement number with optional version (e.g., AGR-2024-001 or AGR-2024-001-v2)"

// REGEX will be added at a later time
// * valueString obeys agreement-number-format

// Invariant: agreement-number-format
// example regex, needs to be properly defined 
// Description: "Agreement number must follow format: AGR-YYYY-NNN[-vN] where YYYY is year, NNN is 3-digit number, and optional version"
// Expression: "matches('^AGR-[0-9]{4}-[0-9]{3}(-v[0-9]+)?$')"
// Severity: #error


Extension: SharedCareDiagnosisCode
Id: shared-care-diagnosis-code
Title: "Shared Care Diagnosis Code"
Description: "Diagnosis code for operational reporting using SNOMED CT codes instead of referencing clinical Condition resources"
Context: Encounter
* value[x] only CodeableConcept
* valueCodeableConcept from http://hl7.org/fhir/ValueSet/condition-code (example)
* valueCodeableConcept ^short = "Diagnosis code (preferably SNOMED CT)"
