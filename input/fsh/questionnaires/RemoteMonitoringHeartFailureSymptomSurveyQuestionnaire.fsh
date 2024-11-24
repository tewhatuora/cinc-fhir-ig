Alias: $sct = http://snomed.info/sct

Instance: RemoteMonitoringHeartFailureSymptomSurveyQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
* item.item[0].type = #choice
* item.item[=].linkId = "p01-q01-Symptoms"
* item.item[=].prefix = "page 1 question 1"
* item.item[=].text = "Think about what symptoms you have had in the last 24 hours?"
* item.item[=].required = false
* item.item[=].repeats = true
* item.item[=].answerOption[0].valueCoding = $sct#267036007 "Shortness of Breath"
* item.item[=].answerOption[+].valueCoding = $sct#84229001 "Tiredness or Weakness"
* item.item[=].answerOption[+].valueCoding = $sct#26237000 "Ankle Swelling"
* item.item[=].answerOption[+].valueCoding = $sct#49436004 "Rapid or Irregular Heartbeat"
* item.item[=].answerOption[+].valueCoding = $sct#56018004 "Wheezing"
* item.item[=].answerOption[+].valueCoding = $sct#49727002 "Cough"
* item.item[=].answerOption[+].valueCoding = $sct#29857009 "Chest Pain"
* item.item[=].answerOption[+].valueCoding = $sct#314938000 "Poor Sleep"
* item.item[=].answerOption[+].valueCoding = $sct#8943002 "Weight Gain"
* item.item[+].type = #text
* item.item[=].linkId = "p01-q01-OtherInfo"
* item.item[=].prefix = "page 1 question 2"
* item.item[=].text = "Is there anything else you want to tell us about the last 24 hours?"
* item.item[=].required = false
* item.item[=].repeats = false
* item.type = #group
* item.linkId = "p01"
* item.prefix = "page 1"
* item.text = "Welcome to today's survey, this is your chance to tell us about any symptoms you have had with your heart failure in the last 24 hours"
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/RemoteMonitoringHeartFailureSymptomSurveyQuestionnaire"
* identifier[0].use = #official
* identifier[=].value = "RemoteMonitoringHeartFailureSymptomSurveyQuestionnaire"
* identifier[=].period.start = "2023-08-16"
* identifier[+].use = #temp
* identifier[=].value = "Questionnaire-RemoteMonitoringHeartFailureSymptomSurveyQuestionnaire"
* identifier[=].period.start = "2023-03-07"
* identifier[=].period.end = "2023-07-26"
* title = "Remote Monitoring Heart Failure Symptom Survey Questionnaire"
* description = "A questionnaire for a daily symptom surveying for Heart Failure patients"
* status = #draft
* subjectType = #Patient
* publisher = "Te Whatu Ora"
* contact.name = "Te Whatu Ora"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.tewhatuora.govt.nz/"