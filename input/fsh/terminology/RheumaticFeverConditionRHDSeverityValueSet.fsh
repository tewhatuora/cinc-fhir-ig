ValueSet: RheumaticFeverConditionRHDSeverityValueSet
Id: rf-condition-rhdseverity-code
Title: "Rheumatic heart disease severity codes"
Description:  "This value set defines codes for the severity of rheumatic heart disease which determines the severity of a patient's rheumatic fever condition"
* ^version = "1.0.0"
* ^experimental = false
* ^status = #active

// 18/10/2023 this valueset is defined entirely from codes included from SNOMED, however 
//  some of the codes are new in the SNOMED NZ edition and not officially published until April 2024
// As a result the valueset published on NZHTS does not work correctly as the codes cannot be looked up.
// (This may be caused by SNOMED licensing or inclusion of SNOMED terms that are in a temporary codesystem)
// We will consider moving to NZHTS canonical in the future but for the meantime this IG is the canonical definition of this valueset
// * ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/rheumatic-fever-rheumatic-heart-disease-severity"

* $sct#260413007 "None (qualifier value)"
* $sct#300171000210106 "Trivial (qualifier value)"
* $sct#255604002 "Mild (qualifier value)"
* $sct#1255665007 "Moderate (qualifier value)"
* $sct#24484000 "Severe (severity modifier) (qualifier value)"
* $sct#59391000119102 "History of heart valve repair (situation)"
* $sct#301561000210102 "History of heart valve replacement (situation)"
* $sct#261665006 "Unknown (qualifier value)"
