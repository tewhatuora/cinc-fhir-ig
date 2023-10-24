Instance: LeadProvidersGroup
InstanceOf: CareTeam
Description: "Group which includes all the lead providers of rheumatic fever care in the national team"
Usage: #example

* meta.profile = Canonical(CareTeam)
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-23T07:00:00Z"

* name = "Group of lead rheumatic fever provider organisations"
* status = #active
* participant[0].member insert ReferenceOrganisation(GOM086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])
* participant[1].member insert ReferenceOrganisation(GOM087-D,[[Waikato Rheumatic Fever Secondary Prevention Service]])
