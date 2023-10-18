Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $sct = http://snomed.info/sct
Instance: COVIDVaccinationSurveyQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/COVIDVaccinationSurveyQuestionnaire"

* identifier[0].use = #official
* identifier[=].value = "COVIDVaccinationSurveyQuestionnaire"
* identifier[=].period.start = "2023-07-19"
* identifier[+].use = #temp
* identifier[=].value = "Questionnaire-COVID-VaccinationSurveyQuestionnaire"
* identifier[=].period.end = "2023-07-19"

* date = "2023-07-19"
* status = #draft
* experimental = false

* name = "COVIDVaccinationSurveyQuestionnaire"
* title = "COVID19 Vaccination Side Effects Questionnaire"
* subjectType = #Patient
* publisher = "Te Whatu Ora"
* description = "Te Whatu Ora post COVID-19 vaccination survey."
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* useContext.valueCodeableConcept.text = "Vaccination Side Effect Questionnaire"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* purpose = "Survey of side effects experienced after COVID-19 vaccination"
* code = $sct#293104008 "Vaccine adverse reaction"

* item[0].type = #display
* item[=].linkId = "p01"
* item[=].prefix = "page 1"
* item[=].text = "Thanks for taking part in our survey to understand the side effects you experienced after your Pfizer COVID-19 vaccination.  Please note this is a survey only and your answers will not result in a medical response to your situation. If you have concerns about your health since your vaccination, particularly if you have had chest pain, racing heartbeat, or trouble breathing, please seek medical attention. You may ring the Healthline at 0800 358 5453 or speak to your healthcare professional.  This survey is optional and will take approximately 5 minutes to complete. Your responses will help us to monitor the safety of the Pfizer COVID-19 vaccine in Aotearoa New Zealand. For more information about this survey, visit http://medsafe.govt.nz/covid-safety-reporting/."
* item[+].type = #group
* item[=].linkId = "p02"
* item[=].prefix = "page 2"
* item[=].text = "Side Effects"
* item[=].item[0].type = #choice
* item[=].item[=].linkId = "p02-q01-SideEffects"
* item[=].item[=].prefix = "page 2 question 1"
* item[=].item[=].text = "Select all the side effects you experienced after your recent COVID-19 vaccination"
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = $sct#95376002 "Pain, redness, swelling, itching at or near the injection site"
* item[=].item[=].answerOption[+].valueCoding = $sct#386661006 "Fever"
* item[=].item[=].answerOption[+].valueCoding = $sct#25064002 "Headache"
* item[=].item[=].answerOption[+].valueCoding = $sct#68962001 "Muscle pain"
* item[=].item[=].answerOption[+].valueCoding = $sct#57676002 "Joint pain"
* item[=].item[=].answerOption[+].valueCoding = $sct#274640006 "Chills and fever"
* item[=].item[=].answerOption[+].valueCoding = $sct#422587007 "Nausea"
* item[=].item[=].answerOption[+].valueCoding = $sct#422400008 "Vomiting"
* item[=].item[=].answerOption[+].valueCoding = $sct#62315008 "Diarrhoea"
* item[=].item[=].answerOption[+].valueCoding = $sct#271681002 "Stomach pain"
* item[=].item[=].answerOption[+].valueCoding = $sct#84229001 "Fatigue"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p02-q02-SideEffects.Rash"
* item[=].item[=].prefix = "page 2 question 2"
* item[=].item[=].code = $sct#271807003 "Rash"
* item[=].item[=].text = "Rash not near injection site"
* item[=].item[=].required = true
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "p02-q02-1-SideEffects.Rash.WhenStarted"
* item[=].item[=].prefix = "page 2 question 2.1"
* item[=].item[=].text = "When did the rash appear?"
* item[=].item[=].enableWhen.question = "p02-q02-SideEffects.Rash"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Within 1 hour after vaccination"
* item[=].item[=].answerOption[+].valueCoding.display = "Within a day after vaccination"
* item[=].item[=].answerOption[+].valueCoding.display = "More than a day after vaccination"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "p02-q02-2-SideEffects.Rash.HowLong"
* item[=].item[=].prefix = "page 2 question 2.2"
* item[=].item[=].text = "How long did the rash last?"
* item[=].item[=].enableWhen.question = "p02-q02-SideEffects.Rash"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Less than 30 minutes"
* item[=].item[=].answerOption[+].valueCoding.display = "30 minutes to 24 hours"
* item[=].item[=].answerOption[+].valueCoding.display = "More than 24 hours"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p02-q03-SideEffects.Other"
* item[=].item[=].prefix = "page 2 question 3"
* item[=].item[=].text = "Other or not listed side effect?"
* item[=].item[=].required = true
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p02-q03-1-SideEffects.Other.Description"
* item[=].item[=].prefix = "page 2 question 3.1"
* item[=].item[=].text = "What other side effects did you experience?"
* item[=].item[=].enableWhen.question = "p02-q03-SideEffects.Other"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[+].type = #group
* item[=].linkId = "p03"
* item[=].prefix = "page 3"
* item[=].text = "Symptom Relief"
* item[=].item[0].type = #boolean
* item[=].item[=].linkId = "p03-q01-SymptomRelief.Medicines"
* item[=].item[=].prefix = "page 3 question 1"
* item[=].item[=].text = "Did you take any medicines to ease your symptoms for example paracetamol or ibuprofen?"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p03-q01-1-Medicines.ReducedSymptoms"
* item[=].item[=].prefix = "page 3 question 1.1"
* item[=].item[=].text = "Did the medicines help ease your symptoms?"
* item[=].item[=].enableWhen.question = "p03-q01-SymptomRelief.Medicines"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p03-q02-Medicines.SawDoctor"
* item[=].item[=].prefix = "page 3 question 2"
* item[=].item[=].text = "Did you see a healthcare provider for your symptoms?"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p03-q03-MissedActivities"
* item[=].item[=].prefix = "page 3 question 3"
* item[=].item[=].text = "Did your symptoms cause you to miss any normal daily or normal daily activities? For example, work, school, exercise or other activities."
* item[=].item[=].required = true
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "p03-q03-1-MissedActivities.Period"
* item[=].item[=].prefix = "page 3 question 3.1"
* item[=].item[=].text = "How many days did you miss?"
* item[=].item[=].enableWhen.question = "p03-q03-MissedActivities"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding.display = "Less than 1 day"
* item[=].item[=].answerOption[+].valueCoding.display = "1 day"
* item[=].item[=].answerOption[+].valueCoding.display = "2 days"
* item[=].item[=].answerOption[+].valueCoding.display = "3 days or more"
* item[+].type = #group
* item[=].linkId = "p04"
* item[=].prefix = "page 4"
* item[=].text = "Health Conditions"
* item[=].item[0].type = #boolean
* item[=].item[=].linkId = "p04-q01-Pregnant"
* item[=].item[=].prefix = "page 4 question 1"
* item[=].item[=].code = $sct#77386006 "Pregnancy"
* item[=].item[=].text = "Are you pregnant or have you given birth in the last 6 weeks?"
* item[=].item[=].required = true
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "p04-q02-LongTermConditions"
* item[=].item[=].prefix = "page 4 question 2"
* item[=].item[=].text = "Do you have any of the following conditions?"
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = $sct#4301008 "Autoimmune conditions (eg. arthritis)"
* item[=].item[=].answerOption[+].valueCoding = $sct#32709003 "Alcohol or other drug addictions"
* item[=].item[=].answerOption[+].valueCoding = $sct#195967001 "Asthma"
* item[=].item[=].answerOption[+].valueCoding = $sct#363346000 "Cancer"
* item[=].item[=].answerOption[+].valueCoding = $sct#82423001 "Chronic pain"
* item[=].item[=].answerOption[+].valueCoding = $sct#13645005 "Chronic obstructive pulmonary disease"
* item[=].item[=].answerOption[+].valueCoding = $sct#73211009 "Diabetes mellitus"
* item[=].item[=].answerOption[+].valueCoding = $sct#770924008 "Acute Gout (disorder)"
* item[=].item[=].answerOption[+].valueCoding = $sct#56265001 "Heart disease"
* item[=].item[=].answerOption[+].valueCoding = $sct#74732009 "Mental health condition"
* item[=].item[=].answerOption[+].valueCoding = $sct#414916001 "Obesity"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p04-q02-1-LongTermConditions.Other"
* item[=].item[=].prefix = "page 4 question 2.1"
* item[=].item[=].text = "Other or not listed long term condition?"
* item[=].item[=].required = true
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p04-q02-2-LongTermConditions.Other.Description"
* item[=].item[=].prefix = "page 4 question 2.2"
* item[=].item[=].text = "Please list any other long term condition(s) you have"
* item[=].item[=].enableWhen.question = "p04-q02-1-LongTermConditions.Other"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[+].type = #display
* item[=].linkId = "p05"
* item[=].prefix = "page 5"
* item[=].text = "Thank you for taking part in this survey. The information you provide is confidential and is protected by the Privacy Act 2020 and by the safeguards we have put in place.  Remember this is a survey only and your answers will not result in a medical response to your situation. If you have concerns about your health since your vaccination, particularly if you have had chest pain, racing heartbeat, or trouble breathing, please seek medical attention. You may ring the Healthline at 0800 358 5453 or speak to your healthcare professional.   Results from the survey will be published on the Medsafe website at http://medsafe.govt.nz/covid-safety-reporting/as the survey progresses."