Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control
Instance: undefined
InstanceOf: Questionnaire
Usage: #example
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/PrivateColposcopyVistSummaryQuestionnaire"
* title = "Private colposcopy Visit Summary Questionnaire"
* status = #draft
* publisher = "Te Whatu Ora"
* description = "Demonstrates responses collected for Private colposcopy"
* purpose = "Template for to gather the referral and visit details of Private colposcopy procedure."
//* date = "2024-11-15"
* experimental = false
* name = "PrivateColposcopyVisitSummaryQuestionnaire"
* subjectType = #Patient
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* useContext.valueCodeableConcept.text = "COVID Initial Health Assessment"

* identifier[0].use = #official
* identifier[=].value = "CPrivateColposcopyVisitSummaryQuestionnaire"
* identifier[=].period.start = "2024-11-14"
* identifier[+].use = #temp
* identifier[=].value = "QuestionTemplate-CitC-COVID19-InitialAssessment"
* identifier[=].period.end = "2024-11-14"


/*-------------------DNA-----------------------------*/

* item[0].linkId = "DNA"
* item[=].text = "DID NOT ATTEND"
* item[=].type = #group

* item[=].item[0].linkId = "1"
* item[=].item[=].text = "Patient Information"
* item[=].item[=].type = #group
* item[=].item[=].prefix = "1."

* item[=].item[=].item[0].linkId = "1.1"
* item[=].item[=].item[=].prefix = "1.1."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].maxLength = 7
* item[=].item[=].item[=].text = "NHI number"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = false

* item[=].item[=].item[+].linkId = "1.2"
* item[=].item[=].item[=].prefix = "1.2."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Date of birth"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false

* item[=].item[=].item[+].linkId = "1.3"
* item[=].item[=].item[=].prefix = "1.3."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Residential address"

* item[=].item[+].linkId = "2"
* item[=].item[=].text = "Clinic Information"
* item[=].item[=].type = #group
* item[=].item[=].prefix = "2."

* item[=].item[=].item[0].linkId = "2.1"
* item[=].item[=].item[=].prefix = "2.1."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Colposcopy clinic name"

* item[=].item[=].item[+].linkId = "2.2"
* item[=].item[=].item[=].prefix = "2.2."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Colposcopy HPI facility ID"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "2.3"
* item[=].item[=].item[=].prefix = "2.3."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Colposcopist name"

* item[=].item[=].item[+].linkId = "2.4"
* item[=].item[=].item[=].prefix = "2.4."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Colposcopist HPI-CPN"
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "3"
* item[=].item[=].text = "DNA"
* item[=].item[=].type = #group
* item[=].item[=].prefix = "3."

* item[=].item[=].item[0].linkId = "3.1"
* item[=].item[=].item[=].prefix = "3.1."
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].text = "Scheduled visit date"

* item[=].item[=].item[+].linkId = "3.2"
* item[=].item[=].item[=].prefix = "3.2."
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].text = "Rescheduled appointment date"

* item[=].item[=].item[+].linkId = "3.3"
* item[=].item[=].item[=].prefix = "3.3."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Reason for DNA"
