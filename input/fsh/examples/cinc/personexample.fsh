Instance: CommunicationPersonExample
InstanceOf: CommunicationPerson
Usage: #example
* meta.profile = "CommunicationPerson"
* meta.tag[0].system = "https://standards.digital.health.nz/ns/cpir-code"
* meta.tag[0].code.value = "CPIR"
* meta.tag[0].display = "Population register"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].value = "ZZA1111"
* identifier[+].use = #secondary
* identifier[=].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].value = "ZZA1112"
* identifier[+].use = #secondary
* identifier[=].system = "https://standards.digital.health.nz/ns/cpir"
* identifier[=].value = "cpir-id"
// Phone contact details
* telecom[0].id = "phone-4151e338c33797ed98e1999520ae14ea"
* telecom[=].system = #phone
* telecom[=].value = "0212345678"
* telecom[=].rank = 4
* telecom[=].extension[0].url = $hnz-telecom-score-extension-id
* telecom[=].extension[=].valueCodeableConcept = $hnz-person-telecom-score-codes#-1
* telecom[=].use = #mobile
* telecom[=].extension[+].url = $hnz-telecom-information-source-extension-id
* telecom[=].extension[=].valueCodeableConcept = $hnz-person-telecom-source-system-codes#NES
* telecom[=].extension[+].url = $hnz-telecom-isdeliverable-extension-id
* telecom[=].extension[=].valueCodeableConcept = $hnz-person-telecom-is-deliverable-codes#-1 "failed"
* telecom[=].extension[+].url = $hnz-telecom-last-contacted-extension-id
* telecom[=].extension[=].valueDateTime = "1999-11-19T09:40:40+00:00"
* telecom[=].extension[+].url = $hnz-telecom-count-shared-extension-id
* telecom[=].extension[=].valueInteger = 12
// Email contact details
* telecom[+].id = "email-4151e338c33797ed98e1999520ae14ea"
* telecom[=].system = #email
* telecom[=].value = "example@gmail.com"
* telecom[=].rank = 1
* telecom[=].extension[+].url = $hnz-telecom-information-source-extension-id
* telecom[=].extension[=].valueCodeableConcept = $hnz-person-telecom-source-system-codes#NIBS
* telecom[=].extension[+].url = $hnz-telecom-isdeliverable-extension-id
* telecom[=].extension[=].valueCodeableConcept = $hnz-person-telecom-is-deliverable-codes#1 "Success"
* telecom[=].extension[+].url = $hnz-telecom-last-contacted-extension-id
* telecom[=].extension[=].valueDateTime = "1999-11-19T09:40:40+00:00"
* telecom[=].extension[+].url = $hnz-telecom-count-shared-extension-id
* telecom[=].extension[=].valueInteger = 0
* telecom[=].use = #home