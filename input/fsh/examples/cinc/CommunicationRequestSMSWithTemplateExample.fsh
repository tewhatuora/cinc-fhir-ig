Instance: SMSCommunicationRequestWithTemplateExample
InstanceOf: CMSCommunicationRequest
Description: "An example of a CommunicationRequest resource. This resource is used to record information related to requesting communication with a client using SMS as the medium"
Usage: #example

* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

* status = #unknown
* medium = $hnz-participation-mode-codes#SMSWRIT
//* occurrenceDateTime = "2024-08-20T14:30:00Z"(optional)
* authoredOn = "2024-08-20T14:30:00Z"

* sender.type = "Device"
* sender.identifier.use = #official
* sender.identifier.system = "https://hub.services.digital.health.nz/ns/hip-application-id"
* sender.identifier.value = "56789"
* sender.display = "BSA"

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

* extension[ContactPoint].extension[toContactPoint].valueContactPoint.system = #sms
* extension[ContactPoint].extension[toContactPoint].valueContactPoint.value = "0221234567"
* extension[ContactPoint].extension[fromContactPoint].valueContactPoint.system = #sms
* extension[ContactPoint].extension[fromContactPoint].valueContactPoint.value = "1234"

* extension[Reply].extension[replyUrl].valueUrl = "https://example.com/webhook"
* extension[Reply].extension[replyBoolean].valueBoolean = true

* extension[CallbackUrl].valueUrl = "https://example.com/callback"
