Instance: NzPatientExample
InstanceOf: Patient
Usage: #example
Description: "An example rheumatic fever patient using the HL7 NZ base patient resource"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/NzPatient"
* meta.versionId = "1"
* meta.lastUpdated = "2023-04-12T03:27:17.000Z"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "SCF7824"
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#11111 "New Zealand European"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired"
* extension[=].valueBoolean = false
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-citizenship"
* extension[=].extension[0].url = "status"
* extension[=].extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/nz-citizenship-status-code#yes "Yes"
* extension[=].extension[+].url = "source"
* extension[=].extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/information-source-code#BREG "Birth Register"
* name.use = #usual
* name.family = "Groomfield"
* name.given = "Ashley"
* telecom[0].system = #phone
* telecom[=].value = "+64 22 911 7825"
* telecom[=].use = #mobile
* telecom[=].rank = 1
* telecom[+].system = #phone
* telecom[=].value = "+64 9 237 6812"
* telecom[=].use = #home
* telecom[=].rank = 2
* telecom[+].system = #email
* telecom[=].value = "ash@gmail.com"
* telecom[=].use = #home
* telecom[=].rank = 3
* gender = #male
* birthDate = "1964-01-27"
* deceasedBoolean = false
* address[0].use = #home
* address[=].text = "373 Jackson Street, Petone, Lower Hutt 5012, New Zealand"
* address[=].line[0] = "373 Jackson Street"
* address[=].line[+] = "Petone"
* address[=].city = "Lower Hutt"
* address[=].postalCode = "5012"
* address[=].country = "NZL"
* address[=].period.start = "2010-04-01"
* communication[0].language.coding[0].code = #eng
* communication[0].language.coding[0].display = "English"
* link.other.type = "Patient"
* link.other.identifier.use = #official
* link.other.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* link.other.identifier.value = "SCF7823"
* link.other.display = "Ashley Groomfield"
* link.type = #refer