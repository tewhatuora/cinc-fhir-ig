Instance: CommunicationPersonExample
InstanceOf: CommunicationPerson
Description: "An example Person record. This resource is used to record detailed contact information related to an individual that Health New Zealand - Te Whatu Ora has reason to communicate with."
Usage: #example
* meta.profile = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/nz-sharedcare-communication-person"
* meta.tag[0].system = "https://standards.digital.health.nz/ns/cpir-code"
* meta.tag[0].code = #CPIR
* meta.tag[0].display = "Consumer Population Identification Register"
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
* telecom[=].extension[0].url = Canonical(hnz-telecom-score-extension-id)
* telecom[=].extension[=].valueCoding = $hnz-person-telecom-score-codes#-1
* telecom[=].use = #mobile
* telecom[=].extension[+].url = Canonical(hnz-telecom-information-source-extension-id)
* telecom[=].extension[=].valueCoding = $hnz-person-telecom-source-system-codes#NES "National Enrolment Service"
* telecom[=].extension[+].url = Canonical(hnz-telecom-isdeliverable-extension-id)
* telecom[=].extension[=].valueCoding = $hnz-person-telecom-is-deliverable-codes#-1 "Last delivery attempt was not successful"
* telecom[=].extension[+].url = Canonical(hnz-telecom-last-contacted-extension-id)
* telecom[=].extension[=].valueDateTime = "1999-11-19T09:40:40+00:00"
* telecom[=].extension[+].url = Canonical(hnz-telecom-count-shared-extension-id)
* telecom[=].extension[=].valueInteger = 12
// Email contact details
* telecom[+].id = "email-4151e338c33797ed98e1999520ae14ea"
* telecom[=].system = #email
* telecom[=].value = "example@gmail.com"
* telecom[=].rank = 1
* telecom[=].extension[+].url = Canonical(hnz-telecom-information-source-extension-id)
* telecom[=].extension[=].valueCoding = $hnz-person-telecom-source-system-codes#NIBS "National Immunisation Booking System"
* telecom[=].extension[+].url = Canonical(hnz-telecom-isdeliverable-extension-id)
* telecom[=].extension[=].valueCoding = $hnz-person-telecom-is-deliverable-codes#1 "Last delivery attempt was successful"
* telecom[=].extension[+].url = Canonical(hnz-telecom-last-contacted-extension-id)
* telecom[=].extension[=].valueDateTime = "1999-11-19T09:40:40+00:00"
* telecom[=].extension[+].url = Canonical(hnz-telecom-count-shared-extension-id)
* telecom[=].extension[=].valueInteger = 0
* telecom[=].use = #home