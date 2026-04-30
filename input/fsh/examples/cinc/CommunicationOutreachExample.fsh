Instance: OutreachCommunicationExample
InstanceOf: CMSCommunication
Description: "An example of a Communication resource. This resource is used to record information related to communication via phone as the medium"
Usage: #example

* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

* basedOn = Reference(OutreachServiceRequestExample)
* status = #completed
* statusReason.coding.code = #sent
* statusReason.coding.system = "https://fhir-ig.digital.health.nz/shared-care/CodeSystem/hnz-communication-delivery-status-codes"
* medium = $hnz-participation-mode-codes#PHONE
* sent = "2024-08-20T14:30:00Z"
* received = "2024-08-20T14:35:00Z"

* sender.type = "Device"
* sender.identifier.use = #official
* sender.identifier.system = "https://hub.services.digital.health.nz/ns/hip-application-id"
* sender.identifier.value = "12345"
* sender.display = "whaihua"

* recipient.type = "Patient"
* recipient.identifier.use = #official
* recipient.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* recipient.identifier.value = "ZXP7823"
* recipient.display = "Carey Carrington"

* payload[0].contentString = "summary of the communication"

// --- Root Extensions ---
* extension[ContactPoint].extension[toContactPoint].valueContactPoint.system = #phone
* extension[ContactPoint].extension[toContactPoint].valueContactPoint.value = "+64221234567"

* extension[StatusDateTime].valueDateTime = "2024-08-20T14:35:00Z"
