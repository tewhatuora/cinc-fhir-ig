ValueSet: RheumaticFeverConditionDiagnosticCertaintyValueSet
Id: rf-condition-diagnosticcertainty-code
Title: "Codes for certainty of rheumatic fever diagnosis"
Description:  "This value set defines the codes that represent the certainty of a diagnosis of rheumatic fever in a patient."
* ^version = "1.0"
* ^experimental = false
* ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/rheumatic-fever-diagnostic-certainty"
//* include codes from system RheumaticFeverConditionDiagnosticCertaintyCodeSystem
* $nzhtsCS#not-a-case "not a case"
* $nzhtsCS#under-investigation "under investigation"
* $nzhtsCS#borderline "borderline"
* $nzhtsCS#possible "possible"
* $nzhtsCS#probable "probable"
* $nzhtsCS#definite "definite"