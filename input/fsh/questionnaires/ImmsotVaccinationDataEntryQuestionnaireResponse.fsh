Alias: $air-status-reason-terms = https://standards.digital.health.nz/ns/air-status-reason-terms
Alias: $cvx = http://hl7.org/fhir/sid/cvx
Alias: $air-terms-code = https://standards.digital.health.nz/ns/air-terms-code

Instance: ImmsotVaccinationDataEntryQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Description: "Example payload of an overseas immunisation being added to ImmSoT."
Usage: #example
* authored = "2024-04-17T01:09:56.016Z"
* item.item[0].linkId = "p01-q01-Type"
* item.item[=].answer.valueCoding.display = "Overseas"
* item.item[=].text = "Type of vaccination"
* item.item[+].linkId = "p01-q02-StatusCompleted"
* item.item[=].answer.valueString = "completed"
* item.item[=].text = "Extract - Status completed"
* item.item[+].linkId = "p01-q04-StatusReasonOverseas"
* item.item[=].answer.valueCoding = $air-status-reason-terms#GIVNOS "Given overseas"
* item.item[=].text = "Extract - Status reason"
* item.item[+].linkId = "p01-q07-FacilityOverseas"
* item.item[=].answer.valueCoding = #F3R789-A "NIR Overseas Clinic"
* item.item[=].text = "Extract - Overseas facility"
* item.item[+].linkId = "p01-q09-Antigens"
* item.item[=].answer.valueCoding = $cvx#03 "03 - MMR"
* item.item[=].text = "Vaccine antigens"
* item.item[+].linkId = "p01-q12-Indication"
* item.item[=].answer.valueCoding = $air-terms-code#1 "Influenza, eligible over 65 years"
* item.item[=].text = "Indication (reason code)"
* item.item[+].linkId = "p01-q13-DateAdministered"
* item.item[=].answer.valueDate = "2024-04-17"
* item.item[=].text = "Date vaccine administered"
* item.item[+].linkId = "p01-q15-SubjectMeta"
* item.item[=].answer.valueBoolean = true
* item.linkId = "p01-Immunisation"
* item.text = "Page 1"
* questionnaire = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/ImmsotVaccinationDataEntryQuestionnaire"
* author.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* author.identifier.use = #official
* author.display = "Testthree Gender-Test"
* author.type = "Practitioner"
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.use = #official
* subject.identifier.value = "ZJL0114"
* subject.display = "Male Curnow"
* subject.type = "Patient"
* meta.lastUpdated = "2024-04-17T01:10:34.697Z"
* meta.versionId = "1"
* status = #completed