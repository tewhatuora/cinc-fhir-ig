ValueSet: RheumaticFeverConditionDiagnosticCertaintyValueSet
Id: rf-condition-diagnosticcertainty-code
Title: "Codes for certainty of rheumatic fever diagnosis"
Description:  "This value set defines the codes that represent the certainty of a diagnosis of rheumatic fever in a patient."
* ^version = "1.0"
* ^experimental = false
* ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/rheumatic-fever-diagnostic-certainty"

// include codes from system RheumaticFeverConditionDiagnosticCertaintyCodeSystem
* include codes from system $RFdiagnosticCertaintyCS

// * #not-a-case "not a case"
// * #under-investigation "under investigation"
// * #borderline "borderline"
// * #possible "possible"
// * #probable "probable"
// * #definite "definite"
