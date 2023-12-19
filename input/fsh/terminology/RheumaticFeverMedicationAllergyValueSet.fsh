ValueSet: RheumaticFeverMedicationAllergyValueSet
Id: rf-medicationallergy-code
Title: "Rheumatic fever medication allergy codes"
Description:  "This value set includes codes for the RF secondary prophylaxis medications / substances a patient has an allergic reaction to"
* ^version = "1.0.0"
* ^experimental = false
* ^status = #active

// 18/10/2023 Can't use NZHTS until the ValueSet is actually expandable (SNOMED licensing and terminology publishing issues?)
//* ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/Rheumatic-fever-medication-allergy"

* $sct#294497009 "Allergy to penicillin V"
* $sct#91931000 "Allergy to erythromycin"
* $sct#332571000210107 "Allergy to benzathine penicillin"
* $sct#332581000210109 "Allergy to pharmaceutical excipient"          // a.k.a "Components of bicillin"
* $sct#293722000 "Lignocaine allergy"
* $sct#294881007 "Allergy to warfarin"
* $sct#1003755004 "Allergy to latex"                                  // a.k.a "Latex (if gloves used)"
* $sct#417930000 "Allergy to adhesive agent"                          // a.k.a  "Tape"
* $sct#419511003 "Propensity to adverse reactions to drug (finding)"  // a.k.a "Other"

