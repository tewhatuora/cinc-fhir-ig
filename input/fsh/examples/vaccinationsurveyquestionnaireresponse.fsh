Alias: $sct = http://snomed.info/sct
Instance: COVIDVaccinationSurveyQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Description: "An example QuestionnaireResponse payload demonstrating data collected in a post COVID vaccination adverse reaction survey."
Usage: #example
* status = #completed
* authored = "2023-05-15T01:58:00.504Z"
* questionnaire = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire-COVID-VaccinationSurveyQuestionnaire"
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
* item[0].linkId = "p01-q01-SideEffects"
* item[=].text = "Select all the side effects you experienced after your recent COVID-19 vaccination"
* item[=].answer[0].valueCoding = $sct#25064002 "Headache"
* item[=].answer[=].item[0].linkId = "p01-q02-SideEffects.Rash"
* item[=].answer[=].item[=].text = "Rash not near injection site"
* item[=].answer[=].item[=].answer.valueBoolean = true
* item[=].answer[=].item[=].answer.item[0].linkId = "p01-q02-1-SideEffects.Rash.WhenStarted"
* item[=].answer[=].item[=].answer.item[=].text = "When did the rash appear?"
* item[=].answer[=].item[=].answer.item[=].answer.valueCoding.display = "Within 1 hour after vaccination"
* item[=].answer[=].item[=].answer.item[+].linkId = "p01-q02-2-SideEffects.Rash.HowLong"
* item[=].answer[=].item[=].answer.item[=].text = "How long did the rash last?"
* item[=].answer[=].item[=].answer.item[=].answer.valueCoding.display = "More than 24 hours"
* item[=].answer[=].item[+].linkId = "p01-q03-SideEffects.Other"
* item[=].answer[=].item[=].text = "Other or not listed side effect?"
* item[=].answer[=].item[=].answer.valueBoolean = true
* item[=].answer[=].item[=].answer.item.linkId = "p01-q03-1-SideEffects.Other.Description"
* item[=].answer[=].item[=].answer.item.text = "What other side effects did you experience?"
* item[=].answer[=].item[=].answer.item.answer.valueString = "Some other side effect"
* item[=].answer[+].valueCoding = $sct#422587007 "Nausea"
* item[=].answer[+].valueCoding = $sct#84229001 "Fatigue"
* item[+].linkId = "p02-q01-SymptomRelief.Medicines"
* item[=].text = "Did you take any medicines to ease your symptoms for example paracetamol or ibuprofen?"
* item[=].answer.valueBoolean = true
* item[=].answer.item.linkId = "p02-q01-1-Medicines.ReducedSymptoms"
* item[=].answer.item.text = "Did the medicines help ease your symptoms?"
* item[=].answer.item.answer.valueBoolean = true
* item[+].linkId = "p02-q02-Medicines.SawDoctor"
* item[=].text = "Did you see a healthcare provider for your symptoms?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "p02-q03-MissedActivities"
* item[=].text = "Did your symptoms cause you to miss any normal daily or normal daily activities? For example, work, school, exercise or other activities."
* item[=].answer.valueBoolean = true
* item[=].answer.item.linkId = "p02-q03-1-MissedActivities.Period"
* item[=].answer.item.text = "How many days did you miss?"
* item[=].answer.item.answer.valueCoding.display = "3 days or more"
* item[+].linkId = "p03-q01-Pregnant"
* item[=].text = "Are you pregnant or have you given birth in the last 6 weeks?"
* item[=].answer.valueCoding.display = "Yes"
* item[+].linkId = "p03-q02-LongTermConditions"
* item[=].text = "Do you have any of the following conditions?"
* item[=].answer[0].valueCoding = $sct#73211009 "Diabetes"
* item[=].answer[=].item.linkId = "p03-q02-1-LongTermConditions.Other"
* item[=].answer[=].item.text = "Please list any other long term condition(s) you have"
* item[=].answer[=].item.answer.valueString = "Some other condition"
* item[=].answer[+].valueCoding = $sct#56265001 "Heart disease"
* item[=].answer[+].valueCoding.display = "Other condition or illness"