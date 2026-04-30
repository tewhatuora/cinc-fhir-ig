Instance: EmailCommunicationRequestWithoutTemplateExample
InstanceOf: CMSCommunicationRequest
Description: "An example of a CommunicationRequest resource using the extension-based slicing for payloads."
Usage: #example

* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

* status = #unknown
* medium = $hnz-participation-mode-codes#EMAILWRIT

* occurrenceDateTime = "2024-08-20T14:30:00Z"
* authoredOn = "2024-08-20T14:30:00Z"

* sender.type = "Device"
* sender.identifier.use = #official
* sender.identifier.system = "https://hub.services.digital.health.nz/ns/hip-application-id"
* sender.identifier.value = "56789"
* sender.display = "BSA"

// --- Email Body ---
* payload[message-body].extension[payloadType].valueCode = #body
* payload[message-body].contentAttachment.contentType = #text/plain
* payload[message-body].contentAttachment.language = #en-nz
* payload[message-body].contentAttachment.creation = "2023-08-01T09:35:00+11:00"
* payload[message-body].contentAttachment.title = "Appointment Reminder"
* payload[message-body].contentAttachment.data = "IyBQYXRpZW50IEVuY291bnRlciBOb3RlcwoKIyMgMjAyMy0wOC0wMgoKLSBEaXNjdXNzZWQgY29uZGl0aW9uCi0gT3RhaW5lZCBjb25zZW50IAotIGV0Yy4="

// --- Attachment 1 ---
* payload[attachment-file][+].extension[payloadType].valueCode = #attachment
* payload[attachment-file][=].contentAttachment.contentType = #application/pdf
* payload[attachment-file][=].contentAttachment.title = "File1.pdf"
* payload[attachment-file][=].contentAttachment.creation = "2023-08-01T09:35:00+11:00"
* payload[attachment-file][=].contentAttachment.data = "IyBQYXRpZW50IEVuY291bnRlciBOb3RlcwoKIyMgMjAyMy0wOC0wMgoKLSBEaXNjdXNzZWQgY29uZGl0aW9uCi0gT3RhaW5lZCBjb25zZW50IAotIGV0Yy4="

// --- Attachment 2 ---
* payload[attachment-file][+].extension[payloadType].valueCode = #attachment
* payload[attachment-file][=].contentAttachment.contentType = #application/pdf
* payload[attachment-file][=].contentAttachment.title = "File2.pdf"
* payload[attachment-file][=].contentAttachment.creation = "2023-08-01T09:35:00+11:00"
* payload[attachment-file][=].contentAttachment.data = "IyBQYXRpZW50IEVuY291bnRlciBOb3RlcwoKIyMgMjAyMy0wOC0wMgoKLSBEaXNjdXNzZWQgY29uZGl0aW9uCi0gT3RhaW5lZCBjb25zZW50IAotIGV0Yy4="

// Attachment 2 specific extensions (Inside contentAttachment)
* payload[attachment-file][=].contentAttachment.extension[AttachmentExtension].extension[attachmentDisposition].valueString = "attachment"
* payload[attachment-file][=].contentAttachment.extension[AttachmentExtension].extension[attachmentContentId].valueString = "logo"

// --- Root Extensions ---
* extension[Campaign].extension[campaignCode].valueString = "2141acc05fdf4bc79070e472e69b17f6"
* extension[Campaign].extension[campaignName].valueString = "Measles_HealthCheck_Email"

* extension[ContactPoint].extension[toContactPoint].valueContactPoint.system = #email
* extension[ContactPoint].extension[toContactPoint].valueContactPoint.value = "totest@gmail.com"
* extension[ContactPoint].extension[fromContactPoint].valueContactPoint.system = #email
* extension[ContactPoint].extension[fromContactPoint].valueContactPoint.value = "fromtest@gmail.com"

* extension[CallbackUrl].valueUrl = "https://example.com/callback"