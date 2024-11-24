Instance: WhaihuaCommunicationPersonExample
InstanceOf: CommunicationPerson
Description: "An example Person record. This resource is used to record detailed contact information related to an individual that Health New Zealand - Te Whatu Ora has reason to communicate with."
Usage: #example
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/nz-sharedcare-communication-person"
* meta.source = $hnz-person-telecom-source-system-codes#Whaihua "Whaihua"
* meta.tag[0].system = $nz-purpose-of-use
* meta.tag[=].code = #CAREMGMT "care management"
* meta.tag[+].system = $hnz-person-telecom-last-updated-by-valueset
* meta.tag[=].code = #CPIR "CPIR"
* meta.lastUpdated = "2024-09-02T20:09:36.390Z"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].value = "ZZA1111"
* identifier[+].use = #secondary
* identifier[=].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].value = "ZZA1112"
// Phone contact details
* telecom[0].id = "phone-4151e338c33797ed98e1999520ae14ea"
* telecom[=].system = #phone
* telecom[=].value = "0212345678"
* telecom[=].rank = 4
* telecom[=].extension[0].url = Canonical(hnz-telecom-score-extension-id)
* telecom[=].extension[=].extension[+].url = "score"
* telecom[=].extension[=].extension[=].valueCoding = $hnz-person-telecom-score-codes#-1 "Uncontactable"
* telecom[=].extension[=].extension[+].url = "scoreCalculatedDateTime"
* telecom[=].extension[=].extension[=].valueDateTime = "1999-11-19T09:40:40+00:00"
* telecom[=].extension[+].url = Canonical(hnz-telecom-invalid-indicator-extension-id)
* telecom[=].extension[=].extension[+].url = "invalid"
* telecom[=].extension[=].extension[=].valueBoolean = true
* telecom[=].extension[=].extension[+].url = "invalidFlaggedBy"
* telecom[=].extension[=].extension[=].valueCoding = $hnz-person-telecom-source-system-codes#Whaihua "Whaihua"
* telecom[=].use = #mobile
* telecom[=].extension[+].url = Canonical(hnz-telecom-last-contacted-extension-id)
* telecom[=].extension[=].valueDateTime = "1999-11-19T09:40:40+00:00"
* telecom[=].extension[+].url = Canonical(hnz-telecom-count-shared-extension-id)
* telecom[=].extension[=].valueInteger = 12
* telecom[=].extension[+].url = Canonical(hnz-telecom-phone-type-extension-id)
* telecom[=].extension[=].valueCoding = $hnz-person-telecom-phone-type-codes#Mobile "Mobile phone"
// Email contact details
* telecom[+].id = "email-4151e338c33797ed98e1999520ae14ea"
* telecom[=].system = #email
* telecom[=].value = "example@gmail.com"
* telecom[=].rank = 1
* telecom[=].extension[0].url = Canonical(hnz-telecom-score-extension-id)
* telecom[=].extension[=].extension[0].url = "score"
* telecom[=].extension[=].extension[=].valueCoding = $hnz-person-telecom-score-codes#1 "Contactable"
* telecom[=].extension[=].extension[+].url = "scoreCalculatedDateTime"
* telecom[=].extension[=].extension[=].valueDateTime = "2021-11-19T09:40:40+00:00"
* telecom[=].extension[+].url = Canonical(hnz-telecom-last-contacted-extension-id)
* telecom[=].extension[=].valueDateTime = "1999-11-19T09:40:40+00:00"
* telecom[=].extension[+].url = Canonical(hnz-telecom-count-shared-extension-id)
* telecom[=].extension[=].valueInteger = 0
* telecom[=].use = #home