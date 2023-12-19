ValueSet: RheumaticFeverCareTeamParticipantRoleValueSet
Id: rf-careteam-participant-role-code
Title: "Rheumatic fever patient care team participant role codes"
Description:  "This value set includes codes for the roles participants can perform in a rheumatic fever patient care team"
* ^version = "1.0.0"
* ^experimental = false
* ^status = #active

// 18/10/2023 this valueset is defined entirely from codes included from SNOMED, however 
//  one code is new in the SNOMED NZ edition and not officially published until April 2024
//  This means the valueset published on NZHTS does not work expand so client cannot lookup the codes
//
// This ValueSet has to be published in this IG until clients can expand the valueset on NZHTS

// * ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/rheumatic-fever-care-team-participant-role"

* $sct#133932002 "Caregiver (person)"
* $sct#58626002 "Legal guardian (person)"
* $sct#320731000210100 "Support person"
* $sct#394738000 "Other related persons (person)"
// * $sct#224535009 "Registered nurse (occupation)"
