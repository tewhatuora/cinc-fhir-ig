Instance: SecondaryProphylaxisCareTeam
InstanceOf: RheumaticFeverCareTeam
Description: "Example of secondary prophylaxis care team membership"
Usage: #example

* meta.profile = Canonical(CareTeam)
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-06T08:00:00Z"

// * category = $loinc#LA27977-0 "Episode of care-focused care team"   // placeholder - update when new SNOMED codes known
* category = $CareTeamCategoryCS#320721000210108 "Secondary Prophylaxis Team"

* name = "Madeleine Meringue's secondary prophylaxis team"
* status = #active
// lead provider
* participant[0].member insert ReferenceOrganisation(GOM086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])

// lead nurse
* participant[+].role[0] insert CareTeamRole(224535009,[[Registered nurse]])
* participant[=].member insert ReferencePractitioner(99ZAAA,[[Isabel Injecta]])

// shared care provider
* participant[+].member insert ReferenceOrganisation(G00030-C,[[Taranaki]])

// lead nurse
* participant[+].role[0] insert CareTeamRole(224535009,[[Registered nurse]])
* participant[=].member insert ReferencePractitioner(99ZABC,[[Felicity Faraway]])
