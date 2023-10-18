Alias: $sct = http://snomed.info/sct
Instance: COVIDVaccinationSurveyQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Description: "Example payload demonstrating data collected in a post COVID vaccination adverse reaction survey."
Usage: #example
* status = #completed
* authored = "2023-05-15T01:58:00.504Z"
* questionnaire = Canonical(COVIDVaccinationSurveyQuestionnaire)

* subject = Reference(CareyCarrington) "Carey Carrington"
* subject.type = "Patient"

* author.type = "Practitioner"
* author.identifier.use = #official
* author.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* author.identifier.value = "99ZZFX"
* author.display = "Dottie McStuffins"
* item[0].linkId = "p02"
* item[=].text = "Side Effects"
* item[=].item[0].linkId = "p02-q01-SideEffects"
* item[=].item[=].text = "Select all the side effects you experienced after your recent COVID-19 vaccination"
* item[=].item[=].answer[0].valueCoding = $sct#386661006 "Fever"
* item[=].item[=].answer[+].valueCoding = $sct#68962001 "Muscle pain"
* item[=].item[=].answer[+].valueCoding = $sct#57676002 "Joint pain"
* item[=].item[=].answer[+].valueCoding = $sct#422587007 "Nausea"
* item[=].item[+].linkId = "p02-q02-SideEffects.Rash"
* item[=].item[=].text = "Rash not near injection site"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "p02-q02-1-SideEffects.Rash.WhenStarted"
* item[=].item[=].text = "When did the rash appear?"
* item[=].item[=].answer.valueCoding.display = "Within 1 hour after vaccination"
* item[=].item[+].linkId = "p02-q02-2-SideEffects.Rash.HowLong"
* item[=].item[=].text = "How long did the rash last?"
* item[=].item[=].answer.valueCoding.display = "30 minutes to 24 hours"
* item[=].item[+].linkId = "p02-q03-SideEffects.Other"
* item[=].item[=].text = "Other or not listed side effect?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "p02-q03-1-SideEffects.Other.Description"
* item[=].item[=].text = "What other side effects did you experience?"
* item[=].item[=].answer.valueString = "some other side effect"
* item[+].linkId = "p03"
* item[=].text = "Symptom Relief"
* item[=].item[0].linkId = "p03-q01-SymptomRelief.Medicines"
* item[=].item[=].text = "Did you take any medicines to ease your symptoms for example paracetamol or ibuprofen?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "p03-q01-1-Medicines.ReducedSymptoms"
* item[=].item[=].text = "Did the medicines help ease your symptoms?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "p03-q02-Medicines.SawDoctor"
* item[=].item[=].text = "Did you see a healthcare provider for your symptoms?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "p03-q03-MissedActivities"
* item[=].item[=].text = "Did your symptoms cause you to miss any normal daily or normal daily activities? For example, work, school, exercise or other activities."
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "p03-q03-1-MissedActivities.Period"
* item[=].item[=].text = "How many days did you miss?"
* item[=].item[=].answer.valueCoding.display = "2 days"
* item[+].linkId = "p04"
* item[=].text = "Health Conditions"
* item[=].item[0].linkId = "p04-q01-Pregnant"
* item[=].item[=].text = "Are you pregnant or have you given birth in the last 6 weeks?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "p04-q02-LongTermConditions"
* item[=].item[=].text = "Do you have any of the following conditions?"
* item[=].item[=].answer[0].valueCoding = $sct#363346000 "Cancer"
* item[=].item[=].answer[+].valueCoding = $sct#195967001 "Asthma"
* item[=].item[=].answer[+].valueCoding = $sct#73211009 "Diabetes"
* item[=].item[=].answer[+].valueCoding = $sct#770924008 "Acute gout"
* item[=].item[+].linkId = "p04-q02-1-LongTermConditions.Other"
* item[=].item[=].text = "Other or not listed long term condition?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "p04-q02-2-LongTermConditions.Other.Description"
* item[=].item[=].text = "Please list any other long term condition(s) you have"
* item[=].item[=].answer.valueString = "some other condition"