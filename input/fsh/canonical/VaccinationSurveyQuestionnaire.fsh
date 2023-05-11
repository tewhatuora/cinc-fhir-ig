Instance: VaccinationSurveyQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
* id = "Questionnaire-VaccinationSurvey"
* identifier.period.start = "2023-05-12"
* identifier.use = #usual
* identifier.value = "QuestionTemplate-VaccinationSurvey"
* purpose = "Survey of side effects experienced after COVID-19 vaccination"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* description = "The Ministry of Health would like to ask you about your recent COVID-19 vaccination."
* title = "COVID19 Vaccination Side Effects Questionnaire"
* subjectType = #Patient
* version = "1.0.0"
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/Questionnaire-VaccinationSurvey"
* meta.lastUpdated = "2023-05-11T05:00:00.000Z"
* meta.versionId = "1"
* name = "COVID19 Vaccination side effects survey"
* publisher = "Te Whatu Ora"
* useContext.valueCodeableConcept.text = "Vaccination Side Effect Questionnaire"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#workflow "Workflow Setting"
* status = #draft

* item[0].text = "Did you experience any side effects in the days after your recent COVID-19 vaccination?"
* item[=].linkId = "SurveyParticipation"
* item[=].type = #choice
* item[=].required = true
* item[=].answerOption[0].valueCoding.display = "YES I did experience side effects of my recent COVID-19 vaccination"
* item[=].answerOption[=].valueCoding.code = #Yes
* item[=].answerOption[=].initialSelected = true
* item[=].answerOption[+].valueCoding.display = "NO I did not experience side effects"
* item[=].answerOption[=].valueCoding.code = #No
* item[=].answerOption[+].valueCoding.display = "STOP I would prefer to Opt Out and not take part in this survey"
* item[=].answerOption[=].valueCoding.code = #Stop

* item[+].text = "Select all the side effects you experienced after your recent COVID-19 vaccination"
* item[=].type = #group
* item[=].linkId = "SideEffects"
* item[=].required = true
* item[=].enableBehavior = #all
* item[=].enableWhen.question = "SurveyParticipation"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding.code = #Yes

* item[=].item[0].text = "Injection site reaction? (pain, redness, swelling, itching at or near the injection site)"
* item[=].item[=].linkId = "SideEffects.InjectionSite"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].text = "Fever / high temperature?"
* item[=].item[=].linkId = "SideEffects.Fever"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].text = "Rash (not at injection site)?"
* item[=].item[=].linkId = "SideEffects.Rash"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].text = "When did the rash start? (select one)"
* item[=].item[=].linkId = "SideEffects.Rash.WhenStarted"
* item[=].item[=].enableWhen.question = "SideEffects.Rash"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Within 1 hour after vaccination"
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding.display = "Within a day after vaccination"
* item[=].item[=].answerOption[+].valueCoding.display = "More than a day after vaccination"

* item[=].item[+].text = "How long did the rash last? (select one)"
* item[=].item[=].linkId = "SideEffects.Rash.HowLong"
* item[=].item[=].enableWhen.question = "SideEffects.Rash"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Less than 30 minutes"
* item[=].item[=].answerOption[0].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding.display = "30 minutes to 24 hours"
* item[=].item[=].answerOption[+].valueCoding.display = "More than 24 hours"

* item[=].item[+].text = "Headache, muscle/body aches, or joint aches/pain?"
* item[=].item[=].linkId = "SideEffects.AchesAndPains"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].text = "Please select all that apply"
* item[=].item[=].linkId = "SideEffects.AchesAndPains.Selected"
* item[=].item[=].enableWhen.question = "SideEffects.AchesAndPains"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Headache"
* item[=].item[=].answerOption[+].valueCoding.display = "Muscle/body aches"
* item[=].item[=].answerOption[+].valueCoding.display = "Joint aches/pain"

* item[=].item[+].text = "Chills (shivering or feeling cold)?"
* item[=].item[=].linkId = "SideEffects.Chills"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].text = "Stomach symptoms? (please describe below)"
* item[=].item[=].linkId = "SideEffects.Stomach"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[=].item[0].text = "Please select all that apply"
* item[=].item[=].item[=].linkId = "SideEffects.Stomach.Selected"
* item[=].item[=].item[=].enableWhen.question = "SideEffects.Stomach"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueCoding.display = "Nausea"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Vomiting"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Diarrhoea"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Stomach pain"

* item[=].item[+].text = "Fatigue or tiredness?"
* item[=].item[=].linkId = "SideEffects.Fatigue"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].text = "Did you have any other symptoms not listed above?"
* item[=].item[=].linkId = "SideEffects.Other"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[=].item[0].text = "Please describe any other symptoms"
* item[=].item[=].item[=].linkId = "SideEffects.Other.Description"
* item[=].item[=].item[=].enableWhen.question = "SideEffects.Other"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].required = false

* item[+].text = "Did you take any medicines to ease your symptoms (eg: paracetamol or ibuprofen)?"
* item[=].type = #boolean
* item[=].linkId = "Medicines"
* item[=].required = true
* item[=].initial.valueBoolean = false

* item[=].item[0].text = "Did the medicines help reduce your symptoms?"
* item[=].item[=].linkId = "Medicines.ReducedSymptoms"
* item[=].item[=].enableWhen.question = "Medicines"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = true

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

* item[=].item[0].text = "How many days did you miss? (select one)"
* item[=].item[=].linkId = "MissedActivities.Period"
* item[=].item[=].enableWhen.question = "MissedActivities"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Less than 1 day"
* item[=].item[=].answerOption[0].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding.display = "1 day"
* item[=].item[=].answerOption[+].valueCoding.display = "2 days"
* item[=].item[=].answerOption[+].valueCoding.display = "3 days or more"

* item[+].text = "Are you pregnant?"
* item[=].linkId = "Pregnant"
* item[=].type = #choice
* item[=].required = true
* item[=].answerOption[0].valueCoding.display = "Yes"
* item[=].answerOption[0].initialSelected = true
* item[=].answerOption[+].valueCoding.display = "No"
* item[=].answerOption[+].valueCoding.display = "Unknown"

* item[+].text = "Do you have any long-term medical conditions?"
* item[=].linkId = "LongTermConditions"
* item[=].type = #boolean
* item[=].required = true
* item[=].initial.valueBoolean = false

* item[=].item[0].text = "Please select the conditions you have"
* item[=].item[=].linkId = "LongTermConditions.Selected"
* item[=].item[=].enableWhen.question = "LongTermCondition"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Autoimmune conditions (eg. arthritis)"
* item[=].item[=].answerOption[+].valueCoding.display = "Alcohol or other drug addictions"
* item[=].item[=].answerOption[+].valueCoding.display = "Asthma"
* item[=].item[=].answerOption[+].valueCoding.display = "Cancer"
* item[=].item[=].answerOption[+].valueCoding.display = "Chronic pain"
* item[=].item[=].answerOption[+].valueCoding.display = "Chronic obstructive pulmonary disease"
* item[=].item[=].answerOption[+].valueCoding.display = "Diabetes"
* item[=].item[=].answerOption[+].valueCoding.display = "Gout"
* item[=].item[=].answerOption[+].valueCoding.display = "Heart disease"
* item[=].item[=].answerOption[+].valueCoding.display = "Mental health condition"
* item[=].item[=].answerOption[+].valueCoding.display = "Obesity"

* item[=].item[=].item[0].text = "Please list any other long term condition(s) you have"
* item[=].item[=].item[=].linkId = "LongTermConditions.Other"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].required = false
