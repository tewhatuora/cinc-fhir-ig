Instance: WhanauCareTeam
InstanceOf: RheumaticFeverCareTeam
Description: "Example of whānau or trusted delegate care team membership"
Usage: #example

* meta.profile = Canonical(CareTeam)
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-06T08:00:00Z"

* category = $sct#320721000210106 "Whānau and/or trusted delegate team" 

* identifier[NationalSystem] insert SalesforceCareTeamIdentifier([[CTM-0000144]])   // only one external identifier needed, although muliple allowed

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
