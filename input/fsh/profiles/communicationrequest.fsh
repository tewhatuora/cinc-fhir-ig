Profile: CMSCommunicationRequest
Parent: CommunicationRequest
Id: CMSCommunicationRequest
Title: "Record of a Request For Communication"
Description: "This resource is a record of a request for a communication to be performed. The performance of a CommunicationRequest may result in a communication resource. The following content attachment ID's are special message-body attachment-fileX message-template message-parameters"
* ^version = "0.0.1"
* ^purpose = "A request for communication"
* ^jurisdiction = urn:iso:std:iso:3166#NZ 
* meta.profile 1..1
* identifier 1..*
* identifier.use 1..
* identifier.value 1..
* identifier.system 1..
* contained 0..0
* status 1..
* statusReason from hnz-communication-delivery-status-valueset (required)
* medium 1..
* medium from hnz-participation-mode-valueset (required)
* subject only Reference(Patient) //nhi
* occurrenceDateTime 0.. //event scheduleddatetime
* occurrenceDateTime ^short = "Must be in UTC timezone on the FHIR server"
* authoredOn 1.. //event_datetime
* authoredOn ^short = "Must be in UTC timezone on the FHIR server"
* recipient only Reference(Patient or Practitioner)
//* requester only Reference(Device)
// * sender only Reference(HealthcareService)
* payload 1..*
// extension 
* extension contains
  hnz-campaign-code-extension named CampaignCode 0..*
  and
  hnz-campaign-name-extension named CampaignName 0..*
  and 
  hnz-contact-point-extension named communicationRequestContactPoint 0..* 

 