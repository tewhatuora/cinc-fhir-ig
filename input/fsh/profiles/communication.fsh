Profile: CMSCommunication
Parent: Communication
Id: CMSCommunication
Title: "CMS Communication"
Description: "A communication Resource used to record the SMS/EMAIL communication performed by Systems"
* ^version = "0.0.1"
* ^purpose = "Record all the SMS/EMAIL communication performed by any system"
* ^jurisdiction = urn:iso:std:iso:3166#NZ 
* meta 1..1
* meta.profile 1..1
* meta.tag ^slicing.discriminator.type = #value
* meta.tag ^slicing.discriminator.path = "system"
* meta.tag ^slicing.rules = #open
* meta.tag contains 
    correlationId 1..1

// -----------------------------
// Hub Correlation ID
// -----------------------------
* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].system ^short = "Hub correlation ID system"
* meta.tag[correlationId].system ^definition = "The system URI used by the hub to identify its correlation ID."
* meta.tag[correlationId].code 1..1

* basedOn 0..1
* contained 0..0
* inResponseTo 0..1
* status 1..1
* statusReason 0..1
* statusReason from hnz-communication-delivery-status-valueset (required)
* medium 1..1
* medium from $communication-medium (required)
* subject only Reference(Patient) //nhi
* sent 0..1 //event_datetime
* sent ^short = "Must be in UTC timezone on the FHIR server"
* received 0..1
* recipient only Reference(Patient or Practitioner)
* category 0..1

// Slicing configuration
* payload ^slicing.discriminator[0].type = #value
* payload ^slicing.discriminator[0].path = "extension('https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/cms-payload-type-extension').value"
* payload ^slicing.rules = #open

* payload contains 
    message-body 0..1 and
    attachment-file 0..*

// Sliced Constraints
* payload[message-body].extension contains CMSPayloadTypeExtension named payloadType 1..1
* payload[message-body].extension[payloadType].valueCode = #body
* payload[message-body].contentAttachment 1..1
* payload[message-body].contentAttachment.contentType = #text/plain

* payload[attachment-file].extension contains CMSPayloadTypeExtension named payloadType 1..1
* payload[attachment-file].extension[payloadType].valueCode = #attachment
* payload[attachment-file].contentAttachment 1..1
* payload[attachment-file].contentAttachment.extension contains hnz-attachment-extension named AttachmentExtension 0..1

* extension contains
  hnz-campaign-extension named Campaign 0..1
  and 
  hnz-contact-point-extension named ContactPoint 1..1 
  and 
  hnz-system-callback-url-extension named CallbackUrl 0..1
  and
  hnz-status-date-time-extension named StatusDateTime 1..1
  and 
  hnz-system-reply-extension named Reply 0..1
