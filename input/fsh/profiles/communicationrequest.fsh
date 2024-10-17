Profile: CMSCommunicationRequest
Parent: CommunicationRequest
Title: "CMSCommunicationRequest"
Description: "A communication Resource  used to record the communication request performed by CPIR"
Id: nz-cpir-communication-request

* ^version = "0.0.1"
* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^purpose = "Records communication preferences for a person who is part of an HNZ cohort"
* insert metaContactDetail([[HNZ Integration Team]],[[digitalserviceshub@tewhatuora.govt.nz]])
* meta.profile 1..1
* identifier 1..*
* identifier.use 1..
* identifier.value 1..
* identifier.system 1..
* contained 0..0
* status from EventStatus
* medium 0..*
* medium from CommunicationMedium
* subject only Reference(Patient)
* payload 0..*
* payload.content[x] 1..1
* payload.content[x] only string or Attachment
* occurrence[x] 0..1
* occurrence[x] only dateTime
* sender only Reference (Device)
* recipient 0..1
* recipient only Reference (Patient)