Instance: EmailCommunicationRequestWithTemplateExample
InstanceOf: CMSCommunicationRequest
Description: "An example of a CommunicationRequest resource. This resource is used to record information related to requesting communication with a client using EMAIL as the medium."
Usage: #example

* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxxxxxxxxxx

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
* payload[message-body].contentAttachment.title = "Appointment Reminder"

// --- Attachment 1 ---
* payload[attachment-file][+].extension[payloadType].valueCode = #attachment
* payload[attachment-file][=].contentAttachment.contentType = #application/pdf
* payload[attachment-file][=].contentAttachment.title = "File1.pdf"
* payload[attachment-file][=].contentAttachment.data = "IyBQYXRpZW50IEVuY291bnRlciBOb3RlcwoKIyMgMjAyMy0wOC0wMgoKLSBEaXNjdXNzZWQgY29uZGl0aW9uCi0gT3RhaW5lZCBjb25zZW50IAotIGV0Yy4="

// --- Attachment 2 ---
* payload[attachment-file][+].extension[payloadType].valueCode = #attachment
* payload[attachment-file][=].contentAttachment.contentType = #application/pdf
* payload[attachment-file][=].contentAttachment.title = "File2.pdf"
* payload[attachment-file][=].contentAttachment.data = "IyBQYXRpZW50IEVuY291bnRlciBOb3RlcwoKIyMgMjAyMy0wOC0wMgoKLSBEaXNjdXNzZWQgY29uZGl0aW9uCi0gT3RhaW5lZCBjb25zZW50IAotIGV0Yy4="

// --- Template ---
* payload[message-template].extension[payloadType].valueCode = #template
* payload[message-template].contentReference.display = "Vaccination Appointment Reminder"
* payload[message-template].contentReference = Reference(DocumentReference/EmailCommunicationTemplateExample)

// --- Template Parameters ---
* payload[message-parameters].extension[payloadType].valueCode = #parameters
* payload[message-parameters].contentAttachment.contentType = #application/json
* payload[message-parameters].contentAttachment.data = "eyAiUGF0aWVudE5hbWUiOiAiSm9obiBEb2UiLCAiQXBwb2ludG1lbnREYXRlIjogIjIwMjQtMTItMTMiLCAiQXBwb2ludG1lbnRUaW1lIjogIjEwOjAwIEFNIiwgIkNvbmZpcm1hdGlvbkRlYWRsaW5lIjogIjIwMjQtMTItMTAiIH0="

// --- Root Extensions ---
* extension[Campaign].extension[campaignCode].valueString = "2141acc05fdf4bc79070e472e69b17f6"
* extension[Campaign].extension[campaignName].valueString = "Measles_HealthCheck_Email_Journey_Sit_24_Feb"

* extension[ContactPoint].extension[toContactPoint].valueContactPoint.system = #email
* extension[ContactPoint].extension[toContactPoint].valueContactPoint.value = "totest@gmail.com"
* extension[ContactPoint].extension[fromContactPoint].valueContactPoint.system = #email
* extension[ContactPoint].extension[fromContactPoint].valueContactPoint.value = "fromtest@gmail.com"

* extension[CallbackUrl].valueUrl = "https://example.com/callback"
