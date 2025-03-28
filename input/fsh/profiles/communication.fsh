Profile: CMSCommunication
Parent: Communication
Id: CMSCommunication
Title: "CMS Communication"
Description: "A communication Resource used to record the SMS/EMAIL communication  performed by Systems"
* ^version = "0.0.1"
* ^purpose = "Record all the SMS/EMAIL communication  performed by any system"
* ^jurisdiction = urn:iso:std:iso:3166#NZ 
* meta.profile 1..1
* identifier 1..*
* identifier.use 1..
* identifier.value 1..
* identifier.system 1..
* basedOn 0..1
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
* category 0..1
* payload 0..*

* extension contains
  hnz-campaign-extension named Campaign 0..1
  and 
  hnz-contact-point-extension named ContactPoint 1..1 
  and 
  hnz-system-callback-url-extension named CallbackUrl 0..1
  and 
  hnz-system-reply-extension named Reply 0..1

* payload.contentAttachment.extension contains
  hnz-attachment-extension named AttachmentExtension 0..1
