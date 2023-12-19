ValueSet: RheumaticFeverConditionDiagnosisAtRegistrationValueSet
Id: rf-condition-diagnosisatregistration-code
Title: "Codes for rheumatic fever condition as diagnosed at patient registration"
Description:  "This value set defines the codes that represent the possible diagnoses of a patient with rheumatic fever condition at time of registration"
* ^version = "1.0.0"
* ^experimental = false
* ^status = #active

// 18/10/2023 this valueset is defined entirely from codes included from SNOMED.
// Two of the codes are new in the SNOMED NZ edition and not officially published until April 2024
// As a result the valueset published on NZHTS does not work correctly as the codes cannot be looked up.
// (This may be caused by SNOMED licensing or inclusion of SNOMED terms that are in a temporary codesystem)
// we will consider moving to NZHTS canonical in the future but for the meantime this IG is the canonical definition of this valueset
// * ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/Rheumatic-fever-diagnosis-at-registration"

* $sct#195528001 "Acute rheumatic fever (disorder)"
* $sct#38933006 "Recurrent rheumatic fever (disorder)"
* $sct#302471000210100 "Rheumatic heart disease with absence of signs and symptoms of acute rheumatic fever (situation)"
* $sct#299171000210109 "History of acute rheumatic fever without heart disease"
