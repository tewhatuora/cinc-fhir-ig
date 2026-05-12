Instance: EmailCommunicationExample
InstanceOf: CMSCommunication
Description: "An example of a Communication resource. This resource is used to record information related to communication via Email as the medium"
Usage: #example

* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

* basedOn = Reference(EmailCommunicationRequestWithTemplateExample)
* status = #completed
* statusReason.coding.code = #sent
* statusReason.coding.system = "https://fhir-ig.digital.health.nz/shared-care/CodeSystem/hnz-communication-delivery-status-codes"
* medium = $hnz-participation-mode-codes#EMAILWRIT
* sent = "2024-08-20T14:30:00Z"
* received = "2024-08-20T14:35:00Z"

* sender.type = "Device"
* sender.identifier.use = #official
* sender.identifier.system = "https://hub.services.digital.health.nz/ns/hip-application-id"
* sender.identifier.value = "56789"
* sender.display = "BSA"

// --- Email Body ---
* payload[message-body].extension[payloadType].valueCode = #body
* payload[message-body].contentAttachment.contentType = #text/plain
* payload[message-body].contentAttachment.language = #en-nz
* payload[message-body].contentAttachment.title = "Appointment Reminder"
* payload[message-body].contentAttachment.creation = "2023-08-01T09:35:00+11:00"
* payload[message-body].contentAttachment.data = "IyBQYXRpZW50IEVuY291bnRlciBOb3RlcwoKIyMgMjAyMy0wOC0wMgoKLSBEaXNjdXNzZWQgY29uZGl0aW9uCi0gT3RhaW5lZCBjb25zZW50IAotIGV0Yy4="

// --- Attachment ---
* payload[attachment-file].extension[payloadType].valueCode = #attachment
* payload[attachment-file].contentAttachment.title = "Title of Attachment"
* payload[attachment-file].contentAttachment.url = "https://standards.digital.health.nz/ns/attachment"
* payload[attachment-file].contentAttachment.creation = "2023-08-01T09:35:00+11:00"

// --- Root Extensions ---
* extension[ContactPoint].extension[toContactPoint].valueContactPoint.system = #email
* extension[ContactPoint].extension[toContactPoint].valueContactPoint.value = "totest@gmail.com"
* extension[ContactPoint].extension[fromContactPoint].valueContactPoint.system = #email
* extension[ContactPoint].extension[fromContactPoint].valueContactPoint.value = "fromtest@gmail.com"

* extension[StatusDateTime].valueDateTime = "2024-08-20T14:35:00Z"
