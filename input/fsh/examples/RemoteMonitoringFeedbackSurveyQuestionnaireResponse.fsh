Alias: $sct = http://snomed.info/sct

Instance: RemoteMonitoringFeedbackSurveyQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Usage: #example
* status = #completed
* authored = "2023-09-18T01:25:43.882Z"
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZXP7823"
* subject.display = "Carey Carrington"
* author.type = "Patient"
* author.identifier.use = #official
* author.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* author.identifier.value = "ZXP7823"
* author.display = "Carey Carrington"
* item.linkId = "p01"
* item.text = "Welcome to a weekly feedback survey, this is your chance to tell us about any ideas you have about this experience. Things you want us to capture or change that would make this better."
* item.item[0].linkId = "p01-q01-Rating"
* item.item[=].text = "How do you rate the solution out of 5 (5 is best)?"
* item.item[=].answer.valueCoding.display = "3 - All Right"
* item.item[+].linkId = "p01-q02-Feedback"
* item.item[=].text = "Can you tell us what we could do to make it better?"
* item.item[=].answer.valueString = "Nothing to say right now!"