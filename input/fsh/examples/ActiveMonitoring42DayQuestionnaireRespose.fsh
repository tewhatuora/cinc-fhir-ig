Alias: $sct = http://snomed.info/sct

Instance: ActiveMonitoring42DayQuestionnaireRespose
InstanceOf: QuestionnaireResponse
Description: "Example payload demonstrating data collected in a Active Monitoring 42 Day Questionnaire Respose."
Usage: #example
* status = #completed
* authored = "2023-05-15T01:58:00.504Z"
* questionnaire = Canonical(ActiveMonitoringDay42Survey)
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZXP7823"
* subject.display = "Carey Carrington"
* author.type = "Practitioner"
* author.identifier.use = #official
* author.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* author.identifier.value = "99ZZFX"
* author.display = "Dottie McStuffins"
* item[0].linkId = "p02-q01-Vaccincation"
* item[=].text = "Did you receive a dose of the COVID-19 bivalent or flu vaccine about six weeks ago?"
* item[=].answer.valueCoding.display = "Yes, both"
* item[+].linkId = "p03"
* item[=].text = "Vaccine Administration"
* item[=].item[0].linkId = "p03-q01-VaccineAdministration.SurveyResponse"
* item[=].item[=].text = "Did you respond to the day 7 survey?"
* item[=].item[=].answer.valueCoding.display = "No"
* item[=].item[+].linkId = "p03-q01-1-VaccineAdministration.SurveyResponse.Why"
* item[=].item[=].text = "Why did you not respond to the day 7 survey? Select all that apply"
* item[=].item[=].answer[0].valueCoding.display = "Did not have enough time"
* item[=].item[=].answer[+].valueCoding.display = "Did not receive a day 7 survey"
* item[+].linkId = "p04"
* item[=].text = "Adverse Reactions"
* item[=].item[0].linkId = "p04-q01-AdverseReactions"
* item[=].item[=].text = "Did you report experiencing any reactions to  your vaccine on the day 7 survey?"
* item[=].item[=].answer.valueCoding.display = "Yes"
* item[=].item[+].linkId = "p04-q01-1-AdverseReactions.Still"
* item[=].item[=].text = "Are you still experiencing those reactions reported on the day 7 survey?"
* item[=].item[=].answer.valueCoding.display = "No"
* item[=].item[+].linkId = "p04-q02-MedicalAdvice"
* item[=].item[=].text = "Since the last survey have you sought medical help/ advice related to your vaccination?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "p04-q02-1-MedicalAdvice.Select"
* item[=].item[=].text = "Please select all that apply"
* item[=].item[=].answer[0].valueCoding.display = "Phone advice from a helpline (e.g.  Healthline)"
* item[=].item[=].answer[+].valueCoding.display = "Marae"
* item[+].linkId = "p05"
* item[=].text = "Rare Diagnoses"
* item[=].item[0].linkId = "p05-q01-MedicalCondition"
* item[=].item[=].text = "Since the day 7 survey, have you been diagnosed by a medical professional with a medical condition?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "p05-q01-1-MedicalCondition.Select"
* item[=].item[=].text = "Please select all that apply"
* item[=].item[=].answer[0].valueCoding = $sct#21018002 "Inflamed nerves or nerve degradation (Neuritis or Neuropathy)"
* item[=].item[=].answer[+].valueCoding.display = "Diagnosis of any other new conditions"
* item[=].item[+].linkId = "p05-q01-1-1-MedicalCondition.Select.Other"
* item[=].item[=].text = "Please specify which other conditions."
* item[=].item[=].answer.valueString = "Sore Heart."
* item[=].item[+].linkId = "p05-q01-2-MedicalCondition.Help"
* item[=].item[=].text = "Since seeking medical help, has the issue  gone away, or is being managed successfully?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "p05-q01-3-MedicalCondition.MissingDays"
* item[=].item[=].text = "Have you missed any days of work, study, or normal daily activities as a result of the  diagnosis?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "p05-q01-3-1-MedicalCondition.MissingDays.HowMany"
* item[=].item[=].text = "How many days did you miss?"
* item[=].item[=].answer.valueCoding.display = "1 day"
* item[+].linkId = "p06"
* item[=].text = "Virus Infection"
* item[=].item.linkId = "p06-q01-VirusInfection"
* item[=].item.text = "Since receiving the vaccine, have you been diagnosed with COVID-19 or flu?"
* item[=].item.answer.valueCoding.display = "Yes, but don’t know which one"
* item[+].linkId = "p07"
* item[=].text = "Vaccine Experience"
* item[=].item.linkId = "p07-q01-VaccineExperience"
* item[=].item.text = "Do you have any other comments about your  experience?"
* item[=].item.answer.valueBoolean = false