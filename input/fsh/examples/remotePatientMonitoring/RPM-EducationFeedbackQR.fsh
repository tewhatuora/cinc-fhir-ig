Instance: GOFSH-GENERATED-ID-0
InstanceOf: QuestionnaireResponse
Usage: #example
* questionnaire = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/RemoteMonitoringEducationalFeedbackSurveyQuestionnaire"
* status = #completed
* subject = Reference(CareyCarrington) "Carey Carrington"
* subject.type = "Patient"
* authored = "2025-08-27T10:30:00+12:00"
* item.linkId = "p01"
* item.text = "This is a simple educational content module feedback questionnaire"
* item.item[0].linkId = "p01-q01-Useful"
* item.item[=].text = "What did you think of this module"
* item.item[=].answer.valueCoding.display = "Useful"
* item.item[+].linkId = "p01-q02-Feedback"
* item.item[=].text = "Can you tell us what we could do to make it better?"
* item.item[=].answer.valueString = "It was very clear and easy to follow."