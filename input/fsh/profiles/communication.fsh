Profile: CommunicationFromCPIR
Parent: Communication
Id: CommunicationFromCPIR
Title: "SMS and EmailCommunicationFromCPIR"
Description: "A communication Resource used to record the SMS/EMAIL communication  performed by Systems"
* ^version = "0.0.1"
* ^purpose = "Record all the SMS/EMAIL communication  performed by Systems"
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ 
* meta.profile 1..1
* identifier 1..
* identifier.use 1..
* identifier.use = http://hl7.org/fhir/identifier-use#Secondary
* identifier.value 1..
* basedOn 0..1
* basedOn only Reference(CommunicationRequest)
* contained 0..0
* status 1..  
* status from https://fhir-ig.digital.health.nz/shared-care/ValueSet/hnz-Communication-Status-Codes-ValueSet (required)
* statusReason 0..1
* medium 1..
* medium  from  http://terminology.hl7.org/ValueSet/v3-ParticipationMode
* subject only Reference(Patient) //nhi
* sent 1.. //event_datetime
* sent ^short = "Must be in UTC timezone on the FHIR server"
* received 0..
* recipient only Reference(Patient or Practitioner)
* category 0..1 //from http://hl7.org/fhir/communication-category
* sender only Reference(Device)   //sender
* payload 1..*
// extension 
* extension contains
  hnz-Campaign-Type-extension-id named CampaignType 0..*
  and
  hnz-Contact-point-extension-id named communicationContactPoint 0..* 