ValueSet: RheumaticFeverCarePlanCategoryValueSet
Id: rf-careplan-category-code
Title: "Rheumatic fever care plan category codes"
Description:  "This value set defines a single code for use as a canonical category for NZ rheumatic fever FHIR care plans"
* ^version = "1.0"
* ^experimental = false
* ^status = #active

//18/10/2023 Holding off using NZHTS as canonical until terminology publishing errors and tx.fhir.org stuff sorted out!
// we will move to NZHTS canonical in the future but for the meantime it is fine for this valueset to be defined within this IG
// * ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/rheumatic-fever-care-plan-category"

* $sct#320721000210102 "Rheumatic fever secondary prevention care plan"