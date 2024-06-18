Profile: CommunicationPerson
Parent: Person
Title: "CommunicationPerson"
Description: "A person resource used to record contact preferences for a person who is part of an HNZ cohort."
Id: nz-sharedcare-communication-person

* ^version = "0.0.1"
* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^purpose = "Records communication preferences for a person who is part of an HNZ cohort"
* insert metaContactDetail([[David Grainger]],[[david.grainger@middleware.co.nz]])

* gender 0..0
* birthDate 0..0
* address 0..0
* photo 0..0
* contained 0..0
* link 0..0

// extensions
* telecom.extension contains
  hnz-telecom-score-extension-id named SmartContactDetailScore 0..1
* telecom.extension contains
  hnz-telecom-information-source-extension-id named SmartContactDetailSourceSystem 0..1
* telecom.extension contains
  hnz-telecom-isdeliverable-extension-id named SmartContactDetailIsDeliverableIndicator 0..1
* telecom.extension contains
  hnz-telecom-count-shared-extension-id named SmartContactSharedCount 0..1
* telecom.extension contains
  hnz-telecom-last-contacted-extension-id named SmartContactLastContacted 0..1