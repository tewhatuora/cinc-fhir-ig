Instance: WhanauCareTeam
InstanceOf: CareTeam
Description: "Example of whānau or trusted delegate care team membership"
Usage: #example

* meta.profile = Canonical(CareTeam)
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-06T08:00:00Z"

* category = $loinc#LA27977-0 "Episode of care-focused care team"   // placeholder - update when new SNOMED codes known
// "Whānau or trusted delegate team"

* name = "Madeleine Meringue's whanau and delegates team"
* status = #active

// father
* participant[0].role[0] insert CareTeamRole(66839005,[[Father]])
* participant[=].member insert ReferenceRelatedPerson([[Cyril Smith]])

// mother
* participant[+].role[0] insert CareTeamRole(72705000,[[Mother]])
* participant[=].member insert ReferenceRelatedPerson([[Beryl Smith]])

// spouse
* participant[+].role[0] insert CareTeamRole(127848009,[[Spouse]])
* participant[=].member insert ReferenceRelatedPerson([[Matt Meringue]])
