Instance: NIBSCommunicationPersonExample
InstanceOf: CommunicationPerson
Description: "An example Person record. This resource is used to record detailed contact information related to an individual that Health New Zealand - Te Whatu Ora has reason to communicate with."
Usage: #example
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/nz-sharedcare-communication-person"
// * meta.tag[0].system = "https://standards.digital.health.nz/ns/person-source-system"
//* meta.tag[0].code = $hnz-person-telecom-source-system-codes#NIBS "National Immunisation Booking System"
//* meta.tag[0].code = #CPIR
//* meta.tag[0].display = "Consumer Population Identification Register"
* meta.source = $hnz-person-telecom-source-system-codes#NIBS "National Immunisation Booking System"
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
* telecom[0].id = "phone-4151e338c33797ed98e1999520ae15tf"
* telecom[=].system = #phone
* telecom[=].value = "0212888888"
* telecom[=].rank = 4
* telecom[=].extension[0].url = Canonical(hnz-telecom-score-extension-id)
* telecom[=].extension[=].extension[0].url = "score"
* telecom[=].extension[=].extension[=].valueCoding = $hnz-person-telecom-score-codes#5 "Confirmed and Highly Engaged"
* telecom[=].extension[=].extension[+].url = "scoreCalculatedDateTime"
* telecom[=].extension[=].extension[=].valueDateTime = "2023-11-19T09:40:40+00:00"
// * telecom[=].extension[=].extension[+].url = "flaggedInvalid"
// * telecom[=].extension[=].extension[=].valueBoolean = true
// * telecom[=].extension[=].extension[+].url = "flaggedInvalidBy"
// * telecom[=].extension[=].extension[=].valueCoding = $hnz-person-telecom-source-system-codes#Whaihua "Whaihua"
* telecom[=].use = #mobile
// * telecom[=].extension[+].url = Canonical(hnz-telecom-information-source-extension-id)
// * telecom[=].extension[=].valueCoding = $hnz-person-telecom-source-system-codes#NES "National Enrolment Service"
* telecom[=].extension[+].url = Canonical(hnz-telecom-deliverable-indicator-extension-id)
* telecom[=].extension[=].valueCoding = $hnz-person-telecom-deliverable-indicator-codes#1 "Success"
* telecom[=].extension[+].url = Canonical(hnz-telecom-last-contacted-extension-id)
* telecom[=].extension[=].valueDateTime = "2023-11-19T09:40:40+00:00"
* telecom[=].extension[+].url = Canonical(hnz-telecom-count-shared-extension-id)
* telecom[=].extension[=].valueInteger = 12
* telecom[=].extension[+].url = Canonical(hnz-telecom-phone-type-extension-id)
* telecom[=].extension[=].valueCoding = $hnz-person-telecom-phone-type-codes#Mobile
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
// * telecom[=].extension[+].url = Canonical(hnz-telecom-information-source-extension-id)
// * telecom[=].extension[=].valueCoding = $hnz-person-telecom-source-system-codes#NIBS "National Immunisation Booking System"
* telecom[=].extension[+].url = Canonical(hnz-telecom-deliverable-indicator-extension-id)
* telecom[=].extension[=].valueCoding = $hnz-telecom-deliverable-indicator-extension-id#1 "Success"
* telecom[=].extension[+].url = Canonical(hnz-telecom-last-contacted-extension-id)
* telecom[=].extension[=].valueDateTime = "1999-11-19T09:40:40+00:00"
* telecom[=].extension[+].url = Canonical(hnz-telecom-count-shared-extension-id)
* telecom[=].extension[=].valueInteger = 0
* telecom[=].use = #home