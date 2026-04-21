Profile: CMSCommunicationRequest
Parent: CommunicationRequest
Id: CMSCommunicationRequest
Title: "CMS Communication Request"
Description: "This resource is a record of a request for a communication to be performed. The performance of a CommunicationRequest may result in a communication resource. The following content attachment ID's are special message-body attachment-fileX message-template message-parameters"
* ^version = "0.0.1"
* ^purpose = "A request for communication"
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

* identifier 0..*
* identifier.use 1..
* identifier.value 1..
* identifier.system 1..
* contained 0..0
* status 1..
* statusReason from hnz-communication-delivery-status-valueset (required)
* medium 1..
* medium from hnz-participation-mode-valueset (required)
* subject only Reference(Patient) //nhi
* occurrenceDateTime 0..1 //event scheduleddatetime
* occurrenceDateTime ^short = "Must be in UTC timezone on the FHIR server"
* authoredOn 0..1 //event_datetime
* authoredOn ^short = "Must be in UTC timezone on the FHIR server"
* recipient only Reference(Patient or Practitioner)


// Slicing configuration
* payload ^slicing.discriminator[0].type = #value
* payload ^slicing.discriminator[0].path = "extension('https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/CMSPayloadTypeExtension').value"
* payload ^slicing.rules = #open

* payload contains 
    message-body 1..1 and
    message-parameters 0..1 and
    attachment-file 0..* and 
    message-template 0..1

// Sliced Constraints
* payload[message-body].extension contains CMSPayloadTypeExtension named payloadType 1..1
* payload[message-body].extension[payloadType].valueCode = #body
* payload[message-body].contentAttachment 1..1
* payload[message-body].contentAttachment.contentType = #text/plain

* payload[message-parameters].extension contains CMSPayloadTypeExtension named payloadType 1..1
* payload[message-parameters].extension[payloadType].valueCode = #parameters
* payload[message-parameters].contentAttachment 1..1
* payload[message-parameters].contentAttachment.contentType = #application/json

* payload[attachment-file].extension contains CMSPayloadTypeExtension named payloadType 1..1
* payload[attachment-file].extension[payloadType].valueCode = #attachment
* payload[attachment-file].contentAttachment 1..1
* payload[attachment-file].contentAttachment.id obeys cms-attachment-id-format

* payload[message-template].extension contains CMSPayloadTypeExtension named payloadType 1..1
* payload[message-template].extension[payloadType].valueCode = #template
* payload[message-template].contentReference only Reference(TemplateDocumentReference)

// * payload ^slicing.discriminator[0].type = #value
// * payload ^slicing.discriminator[0].path = "contentAttachment.id"
// * payload ^slicing.discriminator[1].type = #value
// * payload ^slicing.discriminator[1].path = "contentReference.id"
// * payload ^slicing.rules = #open
// * payload ^slicing.discriminator[0].type = #type
// * payload ^slicing.discriminator[0].path = "content" // Distinguishes Attachment vs Reference
// * payload ^slicing.discriminator[1].type = #value
// * payload ^slicing.discriminator[1].path = "contentAttachment.contentType" // Distinguishes plain text vs JSON
// * payload ^slicing.rules = #open

// * payload contains 
//   message-body 1..1 and
//   attachment-file 0..* and 
//   message-parameters 0..1 and 
//   message-template 0..1

// * payload[message-body].contentAttachment.id = "message-body"
// * payload[message-body].contentAttachment.id 1..1
// * payload[message-body].contentAttachment.data 1..1
// * payload[message-body].contentAttachment.title 1..1
// * payload[message-body].contentAttachment.contentType 1..1
// * payload[message-body].contentAttachment.contentType = #text/plain (exactly)

// * payload[attachment-file].contentAttachment.id obeys cms-attachment-id-format
// * payload[attachment-file].contentAttachment.id 1..1
// * payload[attachment-file].contentAttachment.contentType 1..1
// * payload[attachment-file].contentAttachment.title 1..1
// * payload[attachment-file].contentAttachment.extension contains hnz-attachment-extension named AttachmentExtension 0..1

// * payload[message-parameters].contentAttachment.id = "message-parameters"
// * payload[message-parameters].contentAttachment.id 1..1
// * payload[message-parameters].contentAttachment.contentType 1..1
// * payload[message-parameters].contentAttachment.contentType = #application/json (exactly)

// * payload[message-template].contentReference.id = "message-template"
// * payload[message-template].contentReference.id 1..1
// * payload[message-template].contentReference only Reference(TemplateDocumentReference)

// extension 
* extension contains
  hnz-campaign-extension named Campaign 0..1
  and 
  hnz-contact-point-extension named ContactPoint 1..1 
  and 
  hnz-system-callback-url-extension named CallbackUrl 0..1
  and 
  hnz-system-reply-extension named Reply 0..1


CodeSystem: CMSPayloadTypeCS
Id: cms-payload-type-cs
Title: "CMS Payload Type CodeSystem"
Description: "Codes to identify the specific purpose of a CommunicationRequest payload."
* #body "Message Body"
* #parameters "Message Parameters"
* #attachment "Attachment File"
* #template "Message Template"

ValueSet: CMSPayloadTypeVS
Id: cms-payload-type-vs
Title: "CMS Payload Type ValueSet"
* codes from system CMSPayloadTypeCS

Extension: CMSPayloadTypeExtension
Id: cms-payload-type-extension
Title: "CMS Payload Type Extension"
Description: "Identifies the logical type of the payload element."
* value[x] only code
* valueCode from CMSPayloadTypeVS (required)


Invariant: cms-attachment-id-format
Description: "Attachment IDs must follow the format 'attachment-file' followed by a number."
Expression: "matches('^attachment-file[0-9]+$')"
Severity: #error