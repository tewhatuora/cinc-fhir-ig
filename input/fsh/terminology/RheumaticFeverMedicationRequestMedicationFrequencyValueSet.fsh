ValueSet: RheumaticFeverMedicationRequestMedicationFrequencyValueSet
Id: rf-medicationrequest-frequency-code
Title: "Rheumatic fever planned medication frequency codes"
Description:  "This value set defines codes for standard frequencies of secondary prophylaxis medication planning (that is, appointment intervals)"
* ^version = "1.0"
* ^experimental = false
* ^status = #active

// 24/11/2023 this valueset is defined entirely from codes included from SNOMED.
// We will consider moving to use of an NZHTS canonical in the future but for the meantime this IG is the canonical definition of this valueset
// * ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/rheumatic-fever-rheumatic-heart-disease-severity"

* $sct#1511000175108 "Every twenty eight days (qualifier value)"
* $sct#1531000175101 "Every twenty one days (qualifier value)"
* $sct#3015006 "Trimonthly (qualifier value)"
* $sct#229797004 "Once daily (qualifier value)"
* $sct#229799001 "Twice a day (qualifier value)"
* $sct#229798009 "Three times daily (qualifier value)"
* $sct#307439001 "Four times daily (qualifier value)"
