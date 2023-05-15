Alias: $sct = http://snomed.info/sct

Instance: VaccinationSurveyQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Description: "An example QuestionnaireResponse payload demonstrating data collected in a post vaccination adverse reaction survey."
Usage: #example
* status = #completed
* authored = "2023-05-15T01:58:00.504Z"
* questionnaire = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire-Questionnaire-VaccinationSurveyQuestionnaire"
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
* item[0].linkId = "page01"
* item[=].text = "Select all the side effects you experienced after your recent COVID-19 vaccination"
* item[=].item[0].linkId = "SideEffects.InjectionSite"
* item[=].item[=].text = "Injection site reaction?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "SideEffects.Fever"
* item[=].item[=].text = "Fever / high temperature?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "SideEffects.Rash"
* item[=].item[=].text = "Rash (not at injection site)?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "SideEffects.Rash.WhenStarted"
* item[=].item[=].text = "When did the rash start? (select one)"
* item[=].item[=].answer.valueCoding.display = "Within 1 hour after vaccination"
* item[=].item[+].linkId = "SideEffects.Rash.HowLong"
* item[=].item[=].text = "How long did the rash last? (select one)"
* item[=].item[=].answer.valueCoding.display = "Less than 30 minutes"
* item[=].item[+].linkId = "SideEffects.AchesAndPains"
* item[=].item[=].text = "Headache, muscle/body aches, or joint aches/pain?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "SideEffects.AchesAndPains.Selected"
* item[=].item[=].text = "Please select all that apply"
* item[=].item[=].answer[0].valueCoding = #25064002 "Headache"
* item[=].item[=].answer[+].valueCoding = #57676002 "Joint aches/pain"
* item[=].item[+].linkId = "SideEffects.Chills"
* item[=].item[=].text = "Chills (shivering or feeling cold)?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "SideEffects.Stomach"
* item[=].item[=].text = "Stomach symptoms? (please describe below)"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[=].answer.item.linkId = "SideEffects.Stomach.Selected"
* item[=].item[=].answer.item.text = "Please select all that apply"
* item[=].item[=].answer.item.answer[0].valueCoding = $sct#422587007 "Nausea"
* item[=].item[=].answer.item.answer[+].valueCoding = $sct#271681002 "Stomach pain"
* item[=].item[+].linkId = "SideEffects.Fatigue"
* item[=].item[=].text = "Fatigue or tiredness?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "SideEffects.Other"
* item[=].item[=].text = "Did you have any other symptoms not listed above?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[=].answer.item.linkId = "SideEffects.Other.Description"
* item[=].item[=].answer.item.text = "Please describe any other symptoms"
* item[=].item[=].answer.item.answer.valueString = "some other symptoms"
* item[+].linkId = "Medicines"
* item[=].text = "Did you take any medicines to ease your symptoms (eg: paracetamol or ibuprofen)?"
* item[=].answer.valueBoolean = true
* item[=].answer.item.linkId = "Medicines.ReducedSymptoms"
* item[=].answer.item.text = "Did the medicines help reduce your symptoms?"
* item[=].answer.item.answer.valueBoolean = false
* item[+].linkId = "SawDoctor"
* item[=].text = "Did you go to a doctor for your symptoms?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "MissedActivities"
* item[=].text = "Did any of the symptoms you reported cause you to miss work, study, or normal daily activities?"
* item[=].answer.valueBoolean = true
* item[=].answer.item.linkId = "MissedActivities.Period"
* item[=].answer.item.text = "How many days did you miss? (select one)"
* item[=].answer.item.answer.valueCoding.display = "2 days"
* item[+].linkId = "Pregnant"
* item[=].text = "Are you pregnant?"
* item[=].answer.valueCoding.display = "Yes"
* item[+].linkId = "LongTermConditions"
* item[=].text = "Do you have any long-term medical conditions?"
* item[=].answer.valueBoolean = true
* item[=].answer.item.linkId = "LongTermConditions.Selected"
* item[=].answer.item.text = "Please select the conditions you have"
* item[=].answer.item.answer[0].valueCoding = $sct#195967001 "Asthma"
* item[=].answer.item.answer[=].item.linkId = "LongTermConditions.Other"
* item[=].answer.item.answer[=].item.text = "Please list any other long term condition(s) you have"
* item[=].answer.item.answer[=].item.answer.valueString = "Come other condition"
* item[=].answer.item.answer[+].valueCoding = $sct#82423001 "Chronic pain"
* item[=].answer.item.answer[+].valueCoding = $sct#56265001 "Heart disease"
* item[=].answer.item.answer[+].valueCoding = $sct#74732009 "Mental health disorder"