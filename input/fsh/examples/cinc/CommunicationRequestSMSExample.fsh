Instance : SMSCommunicationRequestExample
InstanceOf : CMSCommunicationRequest
Description : "An example of a CommunicationRequest resource. This resource is used to record information related to requesting communication with a client using SMS as the medium"
Usage : #example
* identifier[0].use = #usual
* identifier[0].value = "#ebdb8d66-1390-42c7-89a6-a9a75d65d0e6"
* identifier[0].system = "https://api.messaging.digital.health.nz/ConsumerRecordId"
* identifier[1].use = #secondary
* identifier[1].system = "https://api.messaging.digital.health.nz/CorrelationID"
* identifier[1].value = "#bdb8d66-1390-42c7-89a6-a9a75d65d0e6-001"
* identifier[2].use = #secondary
* identifier[2].value = "#cb8d66-1390-42c7-89a6-a9a75d65d344"
* identifier[2].system = "https://api.messaging.digital.health.nz/MessageID"
* identifier[3].use = #secondary
* identifier[3].value = "#cb8d66-1390-42c7-89a6-a9a75d65d333"
* identifier[3].system = "https://api.messaging.digital.health.nz/ProviderMessageID"
* identifier[4].use = #secondary
* identifier[4].value = "#lb8d66-1390-42c7-89a6-a9a75d65d333"
* identifier[4].system = "https://api.messaging.digital.health.nz/ConsumerID"
* status = #unknown
* medium.coding.code = #SMSWRIT
* medium.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationMode"
//* occurrenceDateTime = "2024-08-20T14:30:00Z"(optional)
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
//SMS Payload
* payload[0].contentAttachment.contentType = #application/pdf
* payload[=].contentAttachment.language = #en-nz
* payload[=].contentAttachment.id = "attachment-body"
* payload[=].contentAttachment.title = "Appointment Reminder"
* payload[=].contentAttachment.creation = "2024-11-04T09:35:00+11:00"
* payload[=].contentAttachment.data = "IyBQYXRpZW50IEVuY291bnRlciBOb3RlcwoKIyMgMjAyMy0wOC0wMgoKLSBEaXNjdXNzZWQgY29uZGl0aW9uCi0gT3RhaW5lZCBjb25zZW50IAotIGV0Yy4="
/*
//Subject
* payload[+].contentReference.reference = "Subject"
* payload[=].contentReference.display = "Subject : Appointment Reminder"
*/
* extension[0].url = Canonical(hnz-campaign-code-extension)
* extension[=].valueString = "2141acc05fdf4bc79070e472e69b17f6"
* extension[+].url = Canonical(hnz-campaign-name-extension)
* extension[=].valueString = "Measles_HealthCheck_Email_Journey_Sit_24_Feb"
* extension[+].url = Canonical(hnz-contact-point-extension)
* extension[=].valueContactPoint.system = #sms
* extension[=].valueContactPoint.value = "555-1234"