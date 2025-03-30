Instance : SMSCommunicationRequestWithTemplateExample
InstanceOf : CMSCommunicationRequest
Description : "An example of a CommunicationRequest resource. This resource is used to record information related to requesting communication with a client using SMS as the medium"
Usage : #example
* identifier[0].use = #usual
* identifier[0].value = "#ebdb8d66-1390-42c7-89a6-a9a75d65d0e6"
* identifier[0].system = "https://api.messaging.digital.health.nz/SourceId"
* identifier[1].use = #secondary
* identifier[1].system = "https://api.messaging.digital.health.nz/CorrelationId"
* identifier[1].value = "#bdb8d66-1390-42c7-89a6-a9a75d65d0e6-001"
* identifier[2].use = #secondary
* identifier[2].value = "#cb8d66-1390-42c7-89a6-a9a75d65d344"
* identifier[2].system = "https://api.messaging.digital.health.nz/MessageId"
* identifier[3].use = #secondary
* identifier[3].value = "#cb8d66-1390-42c7-89a6-a9a75d65d333"
* identifier[3].system = "https://api.messaging.digital.health.nz/ProviderMessageId"
* identifier[4].use = #secondary
* identifier[4].value = "#lb8d66-1390-42c7-89a6-a9a75d65d333"
* identifier[4].system = "https://api.messaging.digital.health.nz/ConsumerId"
* status = #unknown
* medium.coding.code = #SMSWRIT
* medium.coding.system = $hnz-participation-mode-codes
//* occurrenceDateTime = "2024-08-20T14:30:00Z"(optional)
* authoredOn = "2024-08-20T14:30:00Z"


* sender.type = "Device"
* sender.identifier.use = #official
* sender.identifier.system = "https://hub.services.digital.health.nz/ns/hip-application-id"
* sender.identifier.value = "56789"
* sender.display = "BSA"

//Template
* payload[0].contentReference.id = "message-template"
* payload[=].contentReference.display = "Vaccination Appointment Reminder"
* payload[=].contentReference = Reference(DocumentReference/EmailCommunicationTemplateExample)

//Template Parameter
* payload[+].contentAttachment.contentType = #application/json
* payload[=].contentAttachment.id = "message-parameters"
* payload[=].contentAttachment.data = "eyAiUGF0aWVudE5hbWUiOiAiSm9obiBEb2UiLCAiQXBwb2ludG1lbnREYXRlIjogIjIwMjQtMTItMTMiLCAiQXBwb2ludG1lbnRUaW1lIjogIjEwOjAwIEFNIiwgIkNvbmZpcm1hdGlvbkRlYWRsaW5lIjogIjIwMjQtMTItMTAiIH0="
* payload[=].contentAttachment.creation = "2023-08-01T09:35:00+11:00"

//Extensions
* extension[0].url = Canonical(hnz-campaign-extension)
* extension[=].extension[0].url = "campaignCode"
* extension[=].extension[=].valueString = "2141acc05fdf4bc79070e472e69b17f6"
* extension[=].extension[+].url = "campaignName"
* extension[=].extension[=].valueString = "Measles_HealthCheck_Email_Journey_Sit_24_Feb"
* extension[+].url = Canonical(hnz-contact-point-extension)
* extension[=].extension[+].url = "toContactPoint"
* extension[=].extension[=].valueContactPoint.system = #sms
* extension[=].extension[=].valueContactPoint.value = "0221234567"
* extension[=].extension[+].url = "fromContactPoint"
* extension[=].extension[=].valueContactPoint.system = #sms
* extension[=].extension[=].valueContactPoint.value = "1234"
* extension[+].url = Canonical(hnz-system-reply-extension)
* extension[=].extension[+].url = "replyUrl"
* extension[=].extension[=].valueUrl = "https://example.com/webhook"
* extension[=].extension[+].url = "replyBoolean"
* extension[=].extension[=].valueBoolean = true
* extension[+].url = Canonical(hnz-system-callback-url-extension)
* extension[=].valueUrl = "https://example.com/callback"
