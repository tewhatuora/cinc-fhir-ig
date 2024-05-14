Instance: LeadProvidersGroup
InstanceOf: CareTeam
Description: "Group which identifies all NZ lead provider organisations for rheumatic fever secondary prevention"
Usage: #definition

* meta.profile = Canonical(CareTeam)
* meta.versionId = "2"
* meta.lastUpdated = "2024-05-14T05:00:00Z"

* name = "Group of lead rheumatic fever provider organisations"
* status = #active
* participant[0].member insert ReferenceOrganisation(G0M086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])
* participant[+].member insert ReferenceOrganisation(G0M087-D,[[Waikato Rheumatic Fever Secondary Prevention Service]])
* participant[+].member insert ReferenceOrganisation(G0M735-B,[[Waitematā Adult Rheumatic Fever Secondary Prevention Service]])
* participant[+].member insert ReferenceOrganisation(G0M736-D,[[Waitematā Child Rheumatic Fever Secondary Prevention Service]])
* participant[+].member insert ReferenceOrganisation(G0M737-F,[[Te Toka Tumai Adult Rheumatic Fever Secondary Prevention Service]])
* participant[+].member insert ReferenceOrganisation(G0M738-H,[[Te Toka Tumai Child Rheumatic Fever Secondary Prevention Service]])
* participant[+].member insert ReferenceOrganisation(G0M739-K,[[Counties Rheumatic Fever Secondary Prevention Service]])
* participant[+].member insert ReferenceOrganisation(G0M740-F,[[Lakes Rheumatic Fever Secondary Prevention Service]])
* participant[+].member insert ReferenceOrganisation(G0M741-H,[[Bay of Plenty Rheumatic Fever Secondary Prevention Service]])
* participant[+].member insert ReferenceOrganisation(G0M742-K,[[Tairāwhiti Rheumatic Fever Secondary Prevention Service]])
* participant[+].member insert ReferenceOrganisation(G0M743-A,[[Hawkes Bay Rheumatic Fever Secondary Prevention Service]])
* participant[+].member insert ReferenceOrganisation(G0M744-C,[[Taranaki Rheumatic Fever Secondary Prevention Service]])
* participant[+].member insert ReferenceOrganisation(G0M745-E,[[MidCentral Rheumatic Fever Secondary Prevention Service]])
* participant[+].member insert ReferenceOrganisation(G0M746-G,[[Whanganui Rheumatic Fever Secondary Prevention Service]])
* participant[+].member insert ReferenceOrganisation(G0M747-J,[[Nelson Marlborough Rheumatic Fever Secondary Prevention Service]])
* participant[+].member insert ReferenceOrganisation(G0M749-B,[[Southern Rheumatic Fever Secondary Prevention Service]])
* participant[+].member insert ReferenceOrganisation(G0M750-J,[[Canterbury, South Canterbury, and West Coast Rheumatic Fever Secondary Prevention Service]])
* participant[+].member insert ReferenceOrganisation(G0M752-B,[[Greater Wellington Region Rheumatic Fever Secondary Prevention Service]])
