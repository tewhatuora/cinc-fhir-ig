Instance: SecondaryProphylaxisCareTeam
InstanceOf: RheumaticFeverCareTeam
Description: "Example of secondary prophylaxis care team membership"
Usage: #example

* meta.profile = Canonical(CareTeam)
* meta.versionId = "2"
* meta.lastUpdated = "2023-11-08T07:20:00Z"

* identifier[NationalSystem] insert SalesforceCareTeamIdentifier([[CTM-0016606]])

* name = "Madeleine Meringue's secondary prophylaxis team"
* status = #active
// lead provider
* participant[0].member insert ReferenceOrganisation(G0M086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])

// lead nurse
* participant[+].role[0] insert CareTeamRole(224535009,[[Registered nurse]])
* participant[=].member insert ReferencePractitioner(99ZAAA,[[Isabel Injecta]])
* participant[=].onBehalfOf insert ReferenceOrganisation(G0M086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])

// shared care provider
* participant[+].member insert ReferenceOrganisation(G00030-C,[[Taranaki]])

// lead nurse
* participant[+].role[0] insert CareTeamRole(224535009,[[Registered nurse]])
* participant[=].member insert ReferencePractitioner(99ZABC,[[Felicity Faraway]])
* participant[=].onBehalfOf insert ReferenceOrganisation(G00030-C,[[Taranaki]])

