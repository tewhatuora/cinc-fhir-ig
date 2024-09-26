Profile: MessagingCommunicationRequest
Parent: CommunicationRequest
Title: "MessagingCommunicationRequest"
Description: "A communication Resource  used to record the communication request performed by CPIR"
Id: nz-sharedcare-communication-request

* ^version = "0.0.1"
* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^purpose = "Records communication preferences for a person who is part of an HNZ cohort"
* insert metaContactDetail([[HNZ Integration Team]],[[digitalserviceshub@tewhatuora.govt.nz]])

* identifier 0..*
* identifier.use 1..1
* identifier.use = http://hl7.org/fhir/identifier-use#usual
* identifier.value 1..1
* status from EventStatus
* medium 0..*
* medium from CommunicationMedium
* subject only Reference(Patient)
* payload 0..1
* payload.content[x] 1..1
* payload.content[x] only string or Attachment
* occurrence[x] 0..1
* occurrence[x] only dateTime
* sender only Reference (Device)
* recipient 0..1
* recipient only Reference (Patient)