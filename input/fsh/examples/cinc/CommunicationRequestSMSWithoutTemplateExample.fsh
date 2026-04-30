Instance: SMSCommunicationRequestWithoutTemplateExample
InstanceOf: CMSCommunicationRequest
Description: "An example of a CommunicationRequest resource. This resource is used to record information related to requesting communication with a client using SMS as the medium"
Usage: #example

* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

* status = #unknown
* medium = $hnz-participation-mode-codes#SMSWRIT
* authoredOn = "2024-08-20T14:30:00Z"

* sender.type = "Device"
* sender.identifier.use = #official
* sender.identifier.system = "https://hub.services.digital.health.nz/ns/hip-application-id"
* sender.identifier.value = "56789"
* sender.display = "BSA"

// --- SMS Body ---
* payload[message-body].extension[payloadType].valueCode = #body
* payload[message-body].contentAttachment.contentType = #text/plain
* payload[message-body].contentAttachment.title = "Appointment Reminder"
* payload[message-body].contentAttachment.data = "IyBQYXRpZW50IEVuY291bnRlciBOb3RlcwoKIyMgMjAyMy0wOC0wMgoKLSBEaXNjdXNzZWQgY29uZGl0aW9uCi0gT3RhaW5lZCBjb25zZW50IAotIGV0Yy4="

// --- Root Extensions ---
* extension[Campaign].extension[campaignCode].valueString = "2141acc05fdf4bc79070e472e69b17f6"
* extension[Campaign].extension[campaignName].valueString = "Measles_HealthCheck_Email_Journey_Sit_24_Feb"

* extension[ContactPoint].extension[toContactPoint].valueContactPoint.system = #sms
* extension[ContactPoint].extension[toContactPoint].valueContactPoint.value = "0221234567"
* extension[ContactPoint].extension[fromContactPoint].valueContactPoint.system = #sms
* extension[ContactPoint].extension[fromContactPoint].valueContactPoint.value = "1234"

* extension[Reply].extension[replyUrl].valueUrl = "https://example.com/webhook"
* extension[Reply].extension[replyBoolean].valueBoolean = true

* extension[CallbackUrl].valueUrl = "https://example.com/callback"
