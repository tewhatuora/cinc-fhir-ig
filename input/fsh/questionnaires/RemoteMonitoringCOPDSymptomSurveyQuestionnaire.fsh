Alias: $sct = http://snomed.info/sct

Instance: RemoteMonitoringCOPDSymptomSurveyQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/RemoteMonitoringCOPDSymptomSurveyQuestionnaire"
* identifier.use = #official
* identifier.value = "RemoteMonitoringCOPDSymptomSurveyQuestionnaire"
* title = "Remote Monitoring COPD Survey"
* name = "RemoteMonitoringCOPDSymptomSurveyQuestionnaire"
* status = #draft
* subjectType = #Patient
* publisher = "Te Whatu Ora"
* contact.name = "Te Whatu Ora"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.tewhatuora.govt.nz/"
* description = "A questionnaire for a daily symptom surveying for Remote Monitoring of COPD Patients"
* item.item[0].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].linkId = "p01-q01-Symptoms"
* item.item[=].prefix = "page 1 question 1"
* item.item[=].text = "Think about what symptoms you have had in the last 24 hours?"
* item.item[=].required = false
* item.item[=].repeats = true
* item.item[=].answerOption[0].valueCoding.display = "I am more breathless today than yesterday"
* item.item[=].answerOption[+].valueCoding.display = "I need my reliever medicine more often than yesterday"
* item.item[=].answerOption[+].valueCoding.display = "I am unable to do things I normally do"
* item.item[=].answerOption[+].valueCoding.display = "I am more tired"
* item.item[=].answerOption[+].valueCoding.display = "I am losing my appetite or interest in eating"
* item.item[=].answerOption[+].valueCoding.display = "I have signs of a fever (hot/cold flushes, a temperature)"
* item.item[=].answerOption[+].valueCoding.display = "I did not sleep well"
* item.item[+].type = #boolean
* item.item[=].linkId = "p01-q02-Peakflow"
* item.item[=].prefix = "page 1 question 2"
* item.item[=].text = "Did you use your Peakflow meter today?"
* item.item[=].required = true
* item.item[+].type = #integer
* item.item[=].linkId = "p01-q02-1-Peakflow.Value"
* item.item[=].prefix = "page 1 question 2.1"
* item.item[=].text = "What was the score?"
* item.item[=].enableWhen.question = "p01-q02-Peakflow"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerBoolean = true
* item.item[=].enableBehavior = #all
* item.item[+].type = #text
* item.item[=].linkId = "p01-q03-OtherInfo"
* item.item[=].prefix = "page 1 question 3"
* item.item[=].text = "Is there anything else you want to tell us about the last 24 hours?"
* item.item[=].required = false
* item.item[=].repeats = false
* item.type = #group
* item.linkId = "p01"
* item.prefix = "page 1"
* item.text = "Welcome to today's survey, this is your chance to tell us about how you have been feeling for the past day. Do you have any of these symptoms?"