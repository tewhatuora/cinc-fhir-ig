Instance : EmailCommunicationRequestWithoutTemplateExample
InstanceOf : CMSCommunicationRequest
Description: "An example of a CommunicationRequest resource. This resource is used to record information related to requesting communication with a client using EMAIL as the medium."
Usage : #example
* identifier[0].use = #usual
* identifier[0].value = "#ebdb8d66-1390-42c7-89a6-a9a75d65d0e6"
* identifier[0].system = "https://api.messaging.digital.health.nz/SourceId"
* identifier[1].use = #secondary
* identifier[1].system = "https://api.messaging.digital.health.nz/CorrelationID"
* identifier[1].value = "#bdb8d66-1390-42c7-89a6-a9a75d65d0e6-001"
* identifier[2].use = #secondary
* identifier[2].value = "#jb8d66-1390-42c7-89a6-a9a75d65d344"
* identifier[2].system = "https://api.messaging.digital.health.nz/MessageID"
* identifier[3].use = #secondary
* identifier[3].value = "#kb8d66-1390-42c7-89a6-a9a75d65d333"
* identifier[3].system = "https://api.messaging.digital.health.nz/ProviderMessageID"
* identifier[4].use = #secondary
* identifier[4].value = "#lb8d66-1390-42c7-89a6-a9a75d65d333"
* identifier[4].system = "https://api.messaging.digital.health.nz/ConsumerID"
* status = #unknown
* medium.coding.code = #EMAILWRIT
* medium.coding.system = $hnz-participation-mode-codes
* occurrenceDateTime = "2024-08-20T14:30:00Z"
* authoredOn = "2024-08-20T14:30:00Z"

* sender.type = "Device"
* sender.identifier.use = #official
* sender.identifier.system = "https://hub.services.digital.health.nz/ns/hip-application-id"
* sender.identifier.value = "56789"
* sender.display = "BSA"


//Email Body
* payload[0].contentAttachment.id = "message-body"
* payload[=].contentAttachment.contentType = #text/plain
* payload[=].contentAttachment.language = #en-nz
* payload[=].contentAttachment.creation = "2023-08-01T09:35:00+11:00"
* payload[=].contentAttachment.title = "Appointment Reminder" //Email Subject
* payload[=].contentAttachment.data = "IyBQYXRpZW50IEVuY291bnRlciBOb3RlcwoKIyMgMjAyMy0wOC0wMgoKLSBEaXNjdXNzZWQgY29uZGl0aW9uCi0gT3RhaW5lZCBjb25zZW50IAotIGV0Yy4="

//Attachment1
* payload[+].contentAttachment.id = "attachment-file1"
* payload[=].contentAttachment.contentType = #application/pdf
* payload[=].contentAttachment.title = "File1.pdf"
* payload[=].contentAttachment.creation = "2023-08-01T09:35:00+11:00"
* payload[=].contentAttachment.data = "IyBQYXRpZW50IEVuY291bnRlciBOb3RlcwoKIyMgMjAyMy0wOC0wMgoKLSBEaXNjdXNzZWQgY29uZGl0aW9uCi0gT3RhaW5lZCBjb25zZW50IAotIGV0Yy4="
//Attachment2
* payload[+].contentAttachment.id = "attachment-file2"
* payload[=].contentAttachment.contentType = #application/pdf
* payload[=].contentAttachment.title = "File2.pdf"
* payload[=].contentAttachment.creation = "2023-08-01T09:35:00+11:00"
* payload[=].contentAttachment.data = "IyBQYXRpZW50IEVuY291bnRlciBOb3RlcwoKIyMgMjAyMy0wOC0wMgoKLSBEaXNjdXNzZWQgY29uZGl0aW9uCi0gT3RhaW5lZCBjb25zZW50IAotIGV0Yy4="
* payload[=].contentAttachment.extension[0].url = Canonical(hnz-attachment-extension)
* payload[=].contentAttachment.extension[=].extension[0].url = "attachmentDisposition"
* payload[=].contentAttachment.extension[=].extension[=].valueString = "attachment"
* payload[=].contentAttachment.extension[=].extension[+].url = "attachmentContentId"
* payload[=].contentAttachment.extension[=].extension[=].valueString = "logo"

//Extensions
* extension[0].url = Canonical(hnz-campaign-extension)
* extension[=].extension[0].url = "campaignCode"
* extension[=].extension[=].valueString = "2141acc05fdf4bc79070e472e69b17f6"
* extension[=].extension[+].url = "campaignName"
* extension[=].extension[=].valueString = "Measles_HealthCheck_Email_Journey_Sit_24_Feb"
* extension[+].url = Canonical(hnz-contact-point-extension)
* extension[=].extension[+].url = "toContactPoint"
* extension[=].extension[=].valueContactPoint.system = #email
* extension[=].extension[=].valueContactPoint.value = "totest@gmail.com"
* extension[=].extension[+].url = "fromContactPoint"
* extension[=].extension[=].valueContactPoint.system = #email
* extension[=].extension[=].valueContactPoint.value = "fromtest@gmail.com"

* extension[+].url = Canonical(hnz-system-callback-url-extension)
* extension[=].valueUrl = "https://example.com/callback"
