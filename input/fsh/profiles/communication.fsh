Profile: CMSCommunication
Parent: Communication
Id: CMSCommunication
Title: "CommunicationFromCPIR"
Description: "A communication Resource used to record the SMS/EMAIL communication  performed by Systems"
* ^version = "0.0.1"
* ^purpose = "Record all the SMS/EMAIL communication  performed by Systems"
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
//* status 1..          // Change this line to make status optional
//* status ^mustSupport = false
* statusReason 0..1
* medium 1..
* subject only Reference(Patient) //nhi
* sent 1.. //event_datetime
* sent ^short = "Must be in UTC timezone on the FHIR server"
* received 0..
* recipient only Reference(Patient or Practitioner)
* category 0..1 //
* sender only Reference(Device)   //sender
* payload 1..*
// extension 
* extension contains
  hnz-campaign-code-extension named CampaignCode 0..*
  and
  hnz-campaign-name-extension named CampaignName 0..*
  and 
  hnz-Contact-point-extension-id named communicationContactPoint 0..* 
  and 
  hnz-delivery-status-extension named deliveryStatus 0..
