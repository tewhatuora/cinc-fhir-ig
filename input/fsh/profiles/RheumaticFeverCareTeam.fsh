Profile: RheumaticFeverCareTeam
Parent: CareTeam
Title: "Rheumatic Fever Care Team"
Description: "FHIR resource for representing care teams comprising rheumatic fever practitioners or patient's whanau and/or nominated delegates"
Id: cinc-rheumaticfever-careteam

* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^purpose = "Profiles CareTeam to require categorisation (two types of care team that arise in rheumatic fever care)"

// elements modified from base profile

* category 1..1

* category from $CareTeamCategoryVS
// The ValueSet is defined at an enduring Url so the code binding is stable
// The category code is due to appear in SNOMED in 2024 but until then is published temporarily in an NZHTS codesystem 

// elements from base profile prohibited
