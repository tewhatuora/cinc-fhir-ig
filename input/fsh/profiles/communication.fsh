Profile: CMSCommunication
Parent: Communication
Id: CMSCommunication
Title: "Record Of Communication From Any Systems"
Description: "A communication Resource used to record the SMS/EMAIL communication  performed by Systems"
* ^version = "0.0.1"
* ^purpose = "Record all the SMS/EMAIL communication  performed by any system"
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ 
* meta.profile 1..1
* identifier 1..*
* identifier.use 1..
* identifier.value 1..
* identifier.system 1..
* basedOn 0..1
* basedOn only Reference(CommunicationRequest)
* contained 0..0
* inResponseTo 0..
* status 1..          // Change this line to make status optional
* statusReason 0..1
* statusReason from hnz-communication-delivery-status-valueset (required)
* medium 1..
* medium from hnz-participation-mode-valueset (required)
* subject only Reference(Patient) //nhi
* sent 1.. //event_datetime
* sent ^short = "Must be in UTC timezone on the FHIR server"
* received 0..
* recipient only Reference(Patient or Practitioner)
* category 0..1 //
* sender only Reference(HealthcareService)   //sender
* payload 1..*
// extension 
* extension contains
  hnz-campaign-code-extension named CampaignCode 0..*
  and
  hnz-campaign-name-extension named CampaignName 0..*
  and 
  hnz-contact-point-extension named communicationContactPoint 0..*