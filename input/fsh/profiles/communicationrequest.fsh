Profile: CMSCommunicationRequest
Parent: CommunicationRequest
Id: CMSCommunicationRequest
Title: "Record Of Communication Request"
Description: "A communication Resource used to record the SMS/EMAIL communication  performed by Systems"
* ^version = "0.0.1"
* ^purpose = "A request for communication"
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ 
* meta.profile 1..1
* identifier 1..*
* identifier.use 1..
* identifier.value 1..
* identifier.system 1..
* status from EventStatus
* medium 0..*
* medium from ParticipationMode
* subject only Reference(Patient) //nhi
* occurrenceDateTime 1.. //event_datetime
* occurrenceDateTime ^short = "Must be in UTC timezone on the FHIR server"
* recipient only Reference(Patient or Practitioner)
* sender only Reference(Device)   //sender
* payload 1..*
// extension 
* extension contains
  hnz-campaign-code-extension named CampaignCode 0..*
  and
  hnz-campaign-name-extension named CampaignName 0..*
  and 
  hnz-contact-point-extension named communicationContactPoint 0..* 
