Profile: CommunicationFromCPIR
Parent: Communication
Id: CommunicationFromCPIR
Title: "SMS and EmailCommunicationFromCPIR"
Description: "A communication Resource used to record the communication  performed by CPIR"
* ^version = "0.0.1"
* ^purpose = "Record all the communication  performed by CPIR"
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ 
* meta.profile 1..1
* identifier 1..
* identifier.use 1..
* identifier.use = http://hl7.org/fhir/identifier-use#usual
* identifier.value 1..
* basedOn 0..1
* basedOn only Reference(CommunicationRequest)
* contained 0..0
* status 1.. //status
* statusReason 0..1
* medium 1..
* medium  from  https://nzhts.digital.health.nz/fhir/ValueSet/hnz-person-participant-medium-type-valueset (required)
* subject only Reference(Patient) //nhi
* sent 1.. //event_datetime
* sent ^short = "Must be in UTC timezone on the FHIR server"
* received 0..
* recipient only Reference(Patient or Practitioner)
* category 0..1 //from http://hl7.org/fhir/communication-category
* sender only Reference(Device)   //sender
* payload 1..*