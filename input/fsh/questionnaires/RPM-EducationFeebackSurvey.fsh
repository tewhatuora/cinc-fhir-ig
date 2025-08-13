Instance: RPM-EducationFeebackSurvey
InstanceOf: Questionnaire
Usage: #example
* meta.profile = "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/RemoteMonitoringEducationalFeedbackSurveyQuestionnaire"
* identifier.use = #official
* identifier.value = "RemoteMonitoringHeartFailureSymptomSurveyQuestionnaire"
* identifier.period.start = "2023-08-16"
* title = "Remote Patient Monitoring Educational Content Feedback Survey/Questionnaire"
* status = #draft
* subjectType = #Patient
* publisher = "Te Whatu Ora"
* contact.name = "Te Whatu Ora"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.tewhatuora.govt.nz/"
* description = "This questionnaire is used to collect Patient feedback regarding an educational content module"
* item.item[0].type = #choice
* item.item[=].linkId = "p01-q01-Rating"
* item.item[=].prefix = "page 1 question 1"
* item.item[=].text = "How do you rate the module experiance out of 5 (5 is best)?"
* item.item[=].required = true
* item.item[=].repeats = false
* item.item[=].answerOption[0].valueCoding.display = "5 - Perfect"
* item.item[=].answerOption[+].valueCoding.display = "4 - Pretty Good"
* item.item[=].answerOption[+].valueCoding.display = "3 - All Right"
* item.item[=].answerOption[+].valueCoding.display = "2 - Not Great"
* item.item[=].answerOption[+].valueCoding.display = "1 - It Sucks"
* item.item[+].type = #text
* item.item[=].linkId = "p01-q02-Feedback"
* item.item[=].prefix = "page 1 question 2"
* item.item[=].text = "Can you tell us what we could do to make it better?"
* item.item[=].required = false
* item.item[=].repeats = false
* item.type = #group
* item.linkId = "p01"
* item.prefix = "page 1"
* item.text = "This is a simple educational content module feedback questionnaire"