Profile: TemplateDocumentReference
Parent: DocumentReference
Description: "A DocumentReference FHIR Resource that defines a template for communication. Content is sliced into template-message-body, template-message-parameters and template-attachment-file."
Id: TemplateDocumentReference
Title: "CMSTemplateDocumentReference"
* ^version = "0.0.1"
* ^purpose = "A Record Of Template used by different healthcare services for communication"
* ^status = #draft
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
* status 1..1
* docStatus 1..1
* category 1..*
* category from hnz-template-category-valueset (required)
* date 1..1
* description 0..1
* context 0..1

// Slicing configuration
* content ^slicing.discriminator[0].type = #value
* content ^slicing.discriminator[0].path = "extension('https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/cms-template-content-type-extension').value"
* content ^slicing.rules = #open

* content contains
    template-message-body 1..1 and
    template-message-parameters 0..1 and
    template-attachment-file 0..*

// Sliced Constraints
* content[template-message-body].extension contains CMSTemplateContentTypeExtension named contentType 1..1
* content[template-message-body].extension[contentType].valueCode = #body
* content[template-message-body].attachment 1..1
* content[template-message-body].attachment.contentType = #text/html

* content[template-message-parameters].extension contains CMSTemplateContentTypeExtension named contentType 1..1
* content[template-message-parameters].extension[contentType].valueCode = #parameters
* content[template-message-parameters].attachment 1..1
* content[template-message-parameters].attachment.contentType = #application/json

* content[template-attachment-file].extension contains CMSTemplateContentTypeExtension named contentType 1..1
* content[template-attachment-file].extension[contentType].valueCode = #attachment
* content[template-attachment-file].attachment 1..1
* content[template-attachment-file].attachment.extension contains hnz-attachment-extension named AttachmentExtension 0..1


CodeSystem: CMSTemplateContentTypeCS
Id: cms-template-content-type-cs
Title: "CMS Template Content Type CodeSystem"
Description: "Codes to identify the specific purpose of a TemplateDocumentReference content element."
* #body "Template Message Body"
* #parameters "Template Message Parameters"
* #attachment "Template Attachment File"

ValueSet: CMSTemplateContentTypeVS
Id: cms-template-content-type-vs
Title: "CMS Template Content Type ValueSet"
* codes from system CMSTemplateContentTypeCS

Extension: CMSTemplateContentTypeExtension
Id: cms-template-content-type-extension
Title: "CMS Template Content Type Extension"
Description: "Identifies the logical type of the template content element."
* value[x] only code
* valueCode from CMSTemplateContentTypeVS (required)
