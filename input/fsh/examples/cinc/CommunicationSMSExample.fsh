Instance: SMSCommunicationExample
InstanceOf: CMSCommunication
Description: "An example of a Communication resource. This resource is used to record information related to communication via SMS as the medium"
Usage: #example

* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

* basedOn = Reference(SMSCommunicationRequestWithTemplateExample)
* status = #completed
* statusReason.coding.code = #sent
* statusReason.coding.system = "https://fhir-ig.digital.health.nz/shared-care/CodeSystem/hnz-communication-delivery-status-codes"
* medium = $communication-medium#SMSWRIT
* sent = "2024-08-20T14:30:00Z"
* received = "2024-08-20T14:35:00Z"

* sender.type = "Device"
* sender.identifier.use = #official
* sender.identifier.system = "https://hub.services.digital.health.nz/ns/hip-application-id"
* sender.identifier.value = "56789"
* sender.display = "BSA"

// --- SMS Body ---
* payload[message-body].extension[payloadType].valueCode = #body
* payload[message-body].contentAttachment.contentType = #text/plain
* payload[message-body].contentAttachment.language = #en-nz
* payload[message-body].contentAttachment.title = "Payload"
* payload[message-body].contentAttachment.creation = "2023-08-01T09:35:00+11:00"
* payload[message-body].contentAttachment.data = "IyBQYXRpZW50IEVuY291bnRlciBOb3RlcwoKIyMgMjAyMy0wOC0wMgoKLSBEaXNjdXNzZWQgY29uZGl0aW9uCi0gT3RhaW5lZCBjb25zZW50IAotIGV0Yy4="

// --- Root Extensions ---
* extension[ContactPoint].extension[toContactPoint].valueContactPoint.system = #sms
* extension[ContactPoint].extension[toContactPoint].valueContactPoint.value = "0221234567"
* extension[ContactPoint].extension[fromContactPoint].valueContactPoint.system = #sms
* extension[ContactPoint].extension[fromContactPoint].valueContactPoint.value = "1234"

* extension[StatusDateTime].valueDateTime = "2024-08-20T14:35:00Z"
