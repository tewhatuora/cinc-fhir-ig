Profile: CommunicationPerson
Parent: Person
Title: "CommunicationPerson"
Description: "A person resource used to record contact preferences for a person who is part of an HNZ cohort."
Id: nz-sharedcare-communication-person

* ^version = "0.0.1"
* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^purpose = "Records communication preferences for a person who is part of an HNZ cohort"
* insert metaContactDetail([[HNZ Integration Team]],[[digitalserviceshub@tewhatuora.govt.nz]])

* meta.profile 1..1
* meta.source from hnz-telecom-information-source-valueset (required)
* meta.tag ^slicing.discriminator.type = #pattern
* meta.tag ^slicing.discriminator.path = "$this"
* meta.tag ^slicing.rules = #open
* meta.tag contains PurposeOfUse 1..1 and LastUpdatedBy 1..1
* meta.tag[PurposeOfUse] from https://nzhts.digital.health.nz/fhir/ValueSet/nz-purpose-of-use-value-set
* meta.tag[LastUpdatedBy] from https://fhir-ig.digital.health.nz/shared-care/ValueSet/hnz-telecom-last-updated-by-valueset (required)
* gender 0..0
* birthDate 0..0
* address 0..0
* photo 0..0
* contained 0..0
* link 0..0

// extensions
* telecom.extension contains
  hnz-telecom-score-extension-id named SmartContactDetailScore 0..*
  and
  hnz-telecom-count-shared-extension-id named SmartContactCountShared 0..1
  and
  hnz-telecom-last-contacted-extension-id named SmartContactLastContacted 0..1
  and
  hnz-telecom-phone-type-extension-id named SmartContactPhoneType 0..1
  and
  hnz-telecom-invalid-indicator-extension-id named SmartContactInvalidIndicator 0..1