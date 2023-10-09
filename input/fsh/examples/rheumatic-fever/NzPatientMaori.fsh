Instance: NzPatientExampleMaori
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
* extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#21111 "Māori"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired"
* extension[=].valueBoolean = false
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-citizenship"
* extension[=].extension[0].url = "status"
* extension[=].extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/nz-citizenship-status-code#yes "Yes"
* extension[=].extension[+].url = "source"
* extension[=].extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/information-source-code#BREG "Birth Register"
* name.use = #usual
* name.family = "Sorethroat"
* name.given = "Pania"
* telecom[0].system = #phone
* telecom[=].value = "+64 22 911 7824"
* telecom[=].use = #mobile
* telecom[=].rank = 1
* telecom[+].system = #phone
* telecom[=].value = "+64 9 237 6811"
* telecom[=].use = #home
* telecom[=].rank = 2
* telecom[+].system = #email
* telecom[=].value = "ps2001@gmail.com"
* telecom[=].use = #home
* telecom[=].rank = 3
* gender = #female
* birthDate = "1968-02-27"
* deceasedBoolean = false
* address[0].use = #temp
* address[=].text = "13 Shady Gorge Track, Huia, Auckland 0604"
* address[=].line[0] = "13 Shady Gorge Track"
* address[=].line[+] = "Huia"
* address[=].city = "Auckland"
* address[=].postalCode = "0604"
* address[=].country = "NZL"
* address[=].period.start = "2023-01-15"
* address[=].period.end = "2023-02-01"
* address[+].use = #home
* address[=].text = "155 Pukaki Rd, Māngere, Auckland 2022"
* address[=].line[0] = "155 Pukaki Rd"
* address[=].line[+] = "Māngere"
* address[=].line[+] = "Auckland 2022"
* address[=].city = "Auckland"
* address[=].postalCode = "2022"
* address[=].country = "NZL"
* address[=].period.start = "2023-04-12"
* communication[0].language.coding[0].code = #mao
* communication[0].language.coding[0].display = "Maori"
* link.other.type = "Patient"
* link.other.identifier.use = #official
* link.other.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* link.other.identifier.value = "SCF7824"
* link.other.display = "Pania Sorethroat"
* link.type = #refer