Instance : CommunicationSMSexample
InstanceOf : CommunicationFromCPIR
Description: "Demonstrates payload for communication with SMS as the medium"
Usage : #example
* identifier.use = #Secondary
* identifier.value = "#ebdb8d66-1390-42c7-89a6-a9a75d65d0e6"
* status = #completed
* statusReason.coding.system = "http://terminology.hl7.org/CodeSystem/communication-not-done-reason"
* statusReason.coding.code = #unknown
* statusReason.coding.display = "Unknown"
* medium.coding.code = #EMAILWRIT
* medium.coding.system = "https://fhir-ig.digital.health.nz/shared-care/ValueSet/hnz-communication-medium-type-valueset"
* sent = "2024-08-20T14:30:00Z"
* received = "2024-08-20T14:35:00Z"
* recipient.type = "Practitioner"
* recipient.identifier.use = #official
* recipient.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* recipient.identifier.value = "99ZZFX"
* category.coding.code = #notification
* category.coding.system = "http://terminology.hl7.org/CodeSystem/communication-category"
* sender.type = "Device"
* sender.display = "BSR"
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZXP7823"
* subject.display = "Carey Carrington"
* payload[0].contentString = "this is  a reminder text for the next appointment on 27/09/2024"
* extension[0].url = Canonical(hnz-Contact-point-extension-id)
* extension[=].valueContactPoint.system = #sms
* extension[=].valueContactPoint.value = "test.j@gmail.com"
* extension[+].url = Canonical(hnz-Campaign-Type-extension-id)
* extension[=].valueCoding.code = #C01
* extension[=].valueCoding.display = "Campaign1"
