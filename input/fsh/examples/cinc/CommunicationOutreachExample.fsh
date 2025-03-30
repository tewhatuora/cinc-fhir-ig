Instance : OutreachCommunicationExample
InstanceOf : CMSCommunication
Description: "An example of a Communication resource. This resource is used to record information related to communication via SMS as the medium"
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
* basedOn = Reference(OutreachServiceRequestExample)
* status = #completed

* statusReason.coding.code = #sent
* statusReason.coding.system = "https://fhir-ig.digital.health.nz/shared-care/CodeSystem/hnz-communication-delivery-status-codes"

* payload[0].contentString = "summary of the communication"

* medium.coding.system = $hnz-participation-mode-codes
* medium.coding.code = #PHONE
* sent = "2024-08-20T14:30:00Z"
* received = "2024-08-20T14:35:00Z"

* sender.type = "Device"
* sender.identifier.use = #official
* sender.identifier.system = "https://hub.services.digital.health.nz/ns/hip-application-id"
* sender.identifier.value = "12345"
* sender.display = "Whaihua"

* recipient.type = "Patient"
* recipient.identifier.use = #official
* recipient.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* recipient.identifier.value = "ZXP7823"
* recipient.display = "Carey Carrington"


* extension[+].url = Canonical(hnz-contact-point-extension)
* extension[=].extension[+].url = "toContactPoint"
* extension[=].extension[=].valueContactPoint.system = #phone
* extension[=].extension[=].valueContactPoint.value = "+64221234567"
