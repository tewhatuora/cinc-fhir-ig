Alias: $sct = http://snomed.info/sct

Instance: RemoteMonitoringHeartFailureSymptomSurveyQuestionnaireResponse
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
* item.text = "Welcome to today's survey, this is your chance to tell us about any symptoms you have had with your heart failure in the last 24 hours"
* item.item[0].linkId = "p01-q01-Symptoms"
* item.item[=].text = "Think about what symptoms you have had in the last 24 hours?"
* item.item[=].answer[0].valueCoding = $sct#84229001 "Tiredness or Weakness"
* item.item[=].answer[+].valueCoding = $sct#29857009 "Chest Pain"
* item.item[=].answer[+].valueCoding = $sct#49727002 "Cough"
* item.item[+].linkId = "p01-q01-OtherInfo"
* item.item[=].text = "Is there anything else you want to tell us about the last 24 hours?"
* item.item[=].answer.valueString = "Not at this time\n"