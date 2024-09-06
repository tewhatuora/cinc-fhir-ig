Instance : CommunicationSMSexample
InstanceOf : CommunicationFromCPIR
Description: "Demonstrates payload for communication with SMS as the medium"
Usage : #example
* identifier.use = #usual
* identifier.value = "#ebdb8d66-1390-42c7-89a6-a9a75d65d0e6"
* status = #completed
* statusReason.coding.system = "http://terminology.hl7.org/CodeSystem/communication-not-done-reason"
* statusReason.coding.code = #unknown
* statusReason.coding.display = "Unknown"
* medium.coding.code = #SMSWRIT
//* medium = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* sent = "2024-08-20T14:30:00Z"
* received = "2024-08-20T14:35:00Z"
//* recipient = Reference(Patient/LLL7823)
* recipient.type = "Practitioner"
* recipient.identifier.use = #official
* recipient.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* recipient.identifier.value = "99ZZFX"
* recipient.display = "Dottie McStuffins"
* category.coding.code = #notification
* category.coding.system = "http://terminology.hl7.org/CodeSystem/communication-category"
//* sender = Reference(Device/12345)
* sender.type = "Device"
* sender.display = "BSR"
//* subject = Reference(Patient/ZXP7823)
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZXP7823"
* subject.display = "Carey Carrington"
* payload[0].contentString = "this is  a reminder text for the next appointment on 27/09/2024"