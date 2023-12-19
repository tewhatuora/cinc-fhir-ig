ValueSet: RheumaticFeverCareTeamCategoryValueSet
Id: rf-careteam-category-code
Title: "Rheumatic fever care team category codes"
Description:  "This value set includes category codes for the type of care team assigned to care for a rheumatic fever patient"
* ^version = "1.0.0"
* ^experimental = false
* ^status = #active

//18/10/2023 Holding off using NZHTS as canonical until terminology publishing errors and tx.fhir.org stuff sorted out!
// we will move to NZHTS canonical in the future but for the meantime it is fine for this valueset to be defined within this IG
// * ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/rheumatic-fever-care-team-category"
* $sct#320751000210106 "Whānau and/or trusted delegate team"
* $sct#320741000210108 "Secondary prophylaxis team"
// * $loinc#LA27977-0 "Episode of care-focused care team"
