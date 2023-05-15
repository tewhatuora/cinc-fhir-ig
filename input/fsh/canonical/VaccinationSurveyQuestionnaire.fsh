Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $sct = http://snomed.info/sct
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

Instance: VaccinationSurveyQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
* id = "Questionnaire-VaccinationSurveyQuestionnaire"
* meta.versionId = "1"
* meta.lastUpdated = "2023-05-11T05:00:00.000Z"
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire-VaccinationSurveyQuestionnaire"
* identifier.use = #usual
* identifier.value = "QuestionTemplate-VaccinationSurvey"
* identifier.period.start = "2023-05-12"
* version = "1.0.0"
* name = "COVID19 Vaccination side effects survey"
* title = "COVID19 Vaccination Side Effects Questionnaire"
* status = #draft
* subjectType = #Patient
* publisher = "Te Whatu Ora"
* description = "Te Whatu Ora post COVID-19 vaccination survey."
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* useContext.valueCodeableConcept.text = "Vaccination Side Effect Questionnaire"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* purpose = "Survey of side effects experienced after COVID-19 vaccination"
* code = $sct#293104008 "Vaccine adverse reaction"
* item[0].item[0].item.type = #display
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item.linkId = "SideEffects.InjectionSite_helpText"
* item[=].item[=].item.text = "Have you noticed any reaction where the vaccination was injected - e.g. pain, redness, swelling or itching at or near the injection site"
* item[=].item[=].type = #boolean
* item[=].item[=].linkId = "SideEffects.InjectionSite"
* item[=].item[=].code = $sct#95376002 "Injection site disorder"
* item[=].item[=].text = "Injection site reaction?"
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "SideEffects.Fever"
* item[=].item[=].code = $sct#386661006 "Fever"
* item[=].item[=].text = "Fever / high temperature?"
* item[=].item[=].required = true
* item[=].item[=].readOnly = false
* item[=].item[=].initial.valueBoolean = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "SideEffects.Rash"
* item[=].item[=].code = $sct#271807003 "Rash"
* item[=].item[=].text = "Rash (not at injection site)?"
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "SideEffects.Rash.WhenStarted"
* item[=].item[=].text = "When did the rash start? (select one)"
* item[=].item[=].enableWhen.question = "SideEffects.Rash"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Within 1 hour after vaccination"
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding.display = "Within a day after vaccination"
* item[=].item[=].answerOption[+].valueCoding.display = "More than a day after vaccination"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "SideEffects.Rash.HowLong"
* item[=].item[=].text = "How long did the rash last? (select one)"
* item[=].item[=].enableWhen.question = "SideEffects.Rash"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Less than 30 minutes"
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding.display = "30 minutes to 24 hours"
* item[=].item[=].answerOption[+].valueCoding.display = "More than 24 hours"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "SideEffects.AchesAndPains"
* item[=].item[=].code = $sct#82991003 "Generalized aches and pains"
* item[=].item[=].text = "Headache, muscle/body aches, or joint aches/pain?"
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "SideEffects.AchesAndPains.Selected"
* item[=].item[=].text = "Please select all that apply"
* item[=].item[=].enableWhen.question = "SideEffects.AchesAndPains"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = #25064002 "Headache"
* item[=].item[=].answerOption[+].valueCoding = #68962001 "Muscle/body aches"
* item[=].item[=].answerOption[+].valueCoding = #57676002 "Joint aches/pain"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "SideEffects.Chills"
* item[=].item[=].code = $sct#274640006 "Fever with chills"
* item[=].item[=].text = "Chills (shivering or feeling cold)?"
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false
* item[=].item[+].item.type = #choice
* item[=].item[=].item.linkId = "SideEffects.Stomach.Selected"
* item[=].item[=].item.code = $sct#386617003 "Digestive system observation"
* item[=].item[=].item.text = "Please select all that apply"
* item[=].item[=].item.enableWhen.question = "SideEffects.Stomach"
* item[=].item[=].item.enableWhen.operator = #=
* item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item.enableBehavior = #all
* item[=].item[=].item.required = true
* item[=].item[=].item.readOnly = false
* item[=].item[=].item.repeats = true
* item[=].item[=].item.answerOption[0].valueCoding = $sct#422587007 "Nausea"
* item[=].item[=].item.answerOption[+].valueCoding = $sct#422400008 "Vomiting"
* item[=].item[=].item.answerOption[+].valueCoding = $sct#62315008 "Diarrhoea"
* item[=].item[=].item.answerOption[+].valueCoding = $sct#271681002 "Stomach pain"
* item[=].item[=].type = #boolean
* item[=].item[=].linkId = "SideEffects.Stomach"
* item[=].item[=].text = "Stomach symptoms? (please describe below)"
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "SideEffects.Fatigue"
* item[=].item[=].code = $sct#84229001 "Fatigue"
* item[=].item[=].text = "Fatigue or tiredness?"
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false
* item[=].item[+].item.type = #text
* item[=].item[=].item.linkId = "SideEffects.Other.Description"
* item[=].item[=].item.text = "Please describe any other symptoms"
* item[=].item[=].item.enableWhen.question = "SideEffects.Other"
* item[=].item[=].item.enableWhen.operator = #=
* item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item.enableBehavior = #all
* item[=].item[=].item.required = false
* item[=].item[=].type = #boolean
* item[=].item[=].linkId = "SideEffects.Other"
* item[=].item[=].text = "Did you have any other symptoms not listed above?"
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false
* item[=].type = #group
* item[=].linkId = "page01"
* item[=].text = "Select all the side effects you experienced after your recent COVID-19 vaccination"
* item[=].required = true
* item[+].text = "Did you take any medicines to ease your symptoms (eg: paracetamol or ibuprofen)?"
* item[=].type = #boolean
* item[=].linkId = "Medicines"
* item[=].required = true
* item[=].initial.valueBoolean = false
* item[=].item.text = "Did the medicines help reduce your symptoms?"
* item[=].item.linkId = "Medicines.ReducedSymptoms"
* item[=].item.enableWhen.question = "Medicines"
* item[=].item.enableWhen.operator = #=
* item[=].item.enableWhen.answerBoolean = true
* item[=].item.enableBehavior = #all
* item[=].item.type = #boolean
* item[=].item.required = true
* item[=].item.initial.valueBoolean = true
* item[+].text = "Did you go to a doctor for your symptoms?"
* item[=].linkId = "SawDoctor"
* item[=].type = #boolean
* item[=].required = true
* item[=].initial.valueBoolean = false
* item[+].text = "Did any of the symptoms you reported cause you to miss work, study, or normal daily activities?"
* item[=].type = #boolean
* item[=].linkId = "MissedActivities"
* item[=].required = true
* item[=].initial.valueBoolean = false
* item[=].item.type = #choice
* item[=].item.linkId = "MissedActivities.Period"
* item[=].item.text = "How many days did you miss? (select one)"
* item[=].item.enableWhen.question = "MissedActivities"
* item[=].item.enableWhen.operator = #=
* item[=].item.enableWhen.answerBoolean = true
* item[=].item.enableBehavior = #all
* item[=].item.required = true
* item[=].item.answerOption[0].valueCoding.display = "Less than 1 day"
* item[=].item.answerOption[=].initialSelected = true
* item[=].item.answerOption[+].valueCoding.display = "1 day"
* item[=].item.answerOption[+].valueCoding.display = "2 days"
* item[=].item.answerOption[+].valueCoding.display = "3 days or more"
* item[+].type = #choice
* item[=].linkId = "Pregnant"
* item[=].code = $sct#77386006 "Pregnancy"
* item[=].text = "Are you pregnant?"
* item[=].required = true
* item[=].answerOption[0].valueCoding.display = "Yes"
* item[=].answerOption[=].initialSelected = true
* item[=].answerOption[+].valueCoding.display = "No"
* item[=].answerOption[+].valueCoding.display = "Unknown"
* item[+].text = "Do you have any long-term medical conditions?"
* item[=].linkId = "LongTermConditions"
* item[=].type = #boolean
* item[=].required = true
* item[=].initial.valueBoolean = false
* item[=].item.item.type = #text
* item[=].item.item.linkId = "LongTermConditions.Other"
* item[=].item.item.text = "Please list any other long term condition(s) you have"
* item[=].item.item.required = false
* item[=].item.type = #choice
* item[=].item.linkId = "LongTermConditions.Selected"
* item[=].item.text = "Please select the conditions you have"
* item[=].item.enableWhen.question = "LongTermConditions"
* item[=].item.enableWhen.operator = #=
* item[=].item.enableWhen.answerBoolean = true
* item[=].item.enableBehavior = #all
* item[=].item.required = true
* item[=].item.readOnly = false
* item[=].item.repeats = true
* item[=].item.answerOption[0].valueCoding = $sct#4301008 "Autoimmune conditions (eg. arthritis)"
* item[=].item.answerOption[+].valueCoding = $sct#32709003 "Alcohol or other drug addictions"
* item[=].item.answerOption[+].valueCoding = $sct#195967001 "Asthma"
* item[=].item.answerOption[+].valueCoding.display = "Cancer"
* item[=].item.answerOption[+].valueCoding = $sct#82423001 "Chronic pain"
* item[=].item.answerOption[+].valueCoding = $sct#13645005 "Chronic obstructive pulmonary disease"
* item[=].item.answerOption[+].valueCoding = $sct#73211009 "Diabetes"
* item[=].item.answerOption[+].valueCoding = $sct#770924008 "Gout"
* item[=].item.answerOption[+].valueCoding = $sct#56265001 "Heart disease"
* item[=].item.answerOption[+].valueCoding = $sct#74732009 "Mental health disorder"
* item[=].item.answerOption[+].valueCoding = $sct#414916001 "Obesity"