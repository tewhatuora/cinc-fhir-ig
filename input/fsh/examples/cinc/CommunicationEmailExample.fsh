Instance : EmailCommunicationExample
InstanceOf : CMSCommunication
Description: "An example of a Communication resource. This resource is used to record information related to communication via Email as the medium"
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
* basedOn = Reference(EmailCommunicationRequestWithTemplateExample)
* status = #preparation
* statusReason.coding.code = #sent
* statusReason.coding.system = "https://fhir-ig.digital.health.nz/shared-care/CodeSystem/hnz-communication-delivery-status-codes"
* medium.coding.code = #EMAILWRIT
* medium.coding.system = $hnz-participation-mode-codes
* sent = "2024-08-20T14:30:00Z"
* received = "2024-08-20T14:35:00Z"
* recipient.type = "Practitioner"
* recipient.identifier.use = #official
* recipient.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* recipient.identifier.value = "99ZZFX"
* category.coding.code = #notification
* category.coding.system = "http://terminology.hl7.org/CodeSystem/communication-category"
* sender = Reference(BSAService)
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZXP7823"
* subject.display = "Carey Carrington"

* payload[0].contentAttachment.id = "message-body"
* payload[=].contentAttachment.title = "Appointment Reminder" //Email Subject
* payload[=].contentAttachment.contentType = #text/plain
* payload[=].contentAttachment.language = #en-nz
* payload[=].contentAttachment.data = "IyBQYXRpZW50IEVuY291bnRlciBOb3RlcwoKIyMgMjAyMy0wOC0wMgoKLSBEaXNjdXNzZWQgY29uZGl0aW9uCi0gT3RhaW5lZCBjb25zZW50IAotIGV0Yy4="
* payload[=].contentAttachment.creation = "2023-08-01T09:35:00+11:00"

//Attachment
* payload[0].contentAttachment.id = "message-attachment"
* payload[=].contentAttachment.title = "Title of Attachment"
* payload[=].contentAttachment.url = "https://standards.digital.health.nz/ns/attachment"
* payload[=].contentAttachment.creation = "2023-08-01T09:35:00+11:00"

