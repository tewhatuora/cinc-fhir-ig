Instance : EmailCommunicationRequestWithTemplateExample
InstanceOf : CMSCommunicationRequest
Description: "An example of a CommunicationRequest resource. This resource is used to record information related to requesting communication with a client using EMAIL as the medium."
Usage : #example
* identifier[0].use = #usual
* identifier[0].value = "#ebdb8d66-1390-42c7-89a6-a9a75d65d0e6"
* identifier[0].system = "https://api.messaging.digital.health.nz/ConsumerRecordId"
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
* medium.coding.code = #MAILWRIT
* medium.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationMode"
* occurrenceDateTime = "2024-08-20T14:30:00Z"
* authoredOn = "2024-08-20T14:30:00Z"
* recipient.type = "Practitioner"
* recipient.identifier.use = #official
* recipient.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* recipient.identifier.value = "99ZZFX"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZXP7823"
* subject.display = "Carey Carrington"
* sender = Reference(BSAService)
//Email Body
* payload[0].contentAttachment.id = "message-body"
* payload[=].contentAttachment.contentType = #text/plain
* payload[=].contentAttachment.language = #en-nz
* payload[=].contentAttachment.creation = "2023-08-01T09:35:00+11:00"
* payload[=].contentAttachment.title = "Appointment Reminder" //Email Subject

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

//Template
* payload[+].contentReference.id = "message-template"
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
* extension[=].extension[=].valueContactPoint.system = #email
* extension[=].extension[=].valueContactPoint.value = "totest@gmail.com"
* extension[=].extension[+].url = "fromContactPoint"
* extension[=].extension[=].valueContactPoint.system = #email
* extension[=].extension[=].valueContactPoint.value = "fromtest@gmail.com"
