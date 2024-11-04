Profile: CMSCommunicationRequest
Parent: CommunicationRequest
Id: CMSCommunicationRequest
Title: "A record of a request for communication"
Description: "This resource is a record of a request for a communication to be performed. The performance of a CommunicationRequest may result in a communication resource."
* ^version = "0.0.1"
* ^purpose = "A request for communication"
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ 
* meta.profile 1..1
* identifier 1..*
* identifier.use 1..
* identifier.value 1..
* identifier.system 1..
* status 1..
* statusReason from hnz-communication-delivery-status-valueset (required)
* medium 1..
* subject only Reference(Patient) //nhi
* occurrenceDateTime 1.. //event_datetime
* occurrenceDateTime ^short = "Must be in UTC timezone on the FHIR server"
* recipient only Reference(Patient or Practitioner)
* requester  only Reference(Device)
* payload 1..*
// extension 
* extension contains
  hnz-campaign-code-extension named CampaignCode 0..*
  and
  hnz-campaign-name-extension named CampaignName 0..*
  and 
  hnz-contact-point-extension named communicationRequestContactPoint 0..* 