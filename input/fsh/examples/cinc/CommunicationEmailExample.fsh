Instance : EmailCommunicationExample
InstanceOf : CMSCommunication
Description: "An example of a Communication resource. This resource is used to record information related to communication via Email as the medium"
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
* identifier[3].system = "https://api.messaging.digital.health.nz/ProviderMessageID"
* identifier[4].use = #secondary
* identifier[4].value = "#lb8d66-1390-42c7-89a6-a9a75d65d333"
* identifier[4].system = "https://api.messaging.digital.health.nz/ConsumerID"
* basedOn = Reference(EmailCommunicationRequestWithTemplateExample)
* status = #completed
* statusReason.coding.code = #sent
* statusReason.coding.system = "https://fhir-ig.digital.health.nz/shared-care/CodeSystem/hnz-communication-delivery-status-codes"
* medium.coding.code = #EMAILWRIT
* medium.coding.system = $hnz-participation-mode-codes
* sent = "2024-08-20T14:30:00Z"
* received = "2024-08-20T14:35:00Z"

* sender.type = "Device"
* sender.identifier.use = #official
* sender.identifier.system = "https://hub.services.digital.health.nz/ns/hip-application-id"
* sender.identifier.value = "56789"
* sender.display = "BSA"

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


* extension[+].url = Canonical(hnz-contact-point-extension)
* extension[=].extension[+].url = "toContactPoint"
* extension[=].extension[=].valueContactPoint.system = #email
* extension[=].extension[=].valueContactPoint.value = "totest@gmail.com"
* extension[=].extension[+].url = "fromContactPoint"
* extension[=].extension[=].valueContactPoint.system = #email
* extension[=].extension[=].valueContactPoint.value = "fromtest@gmail.com"
