Alias: $sct = http://snomed.info/sct
Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

Instance: ActiveMonitoringDay7Survey
InstanceOf: Questionnaire
Usage: #definition
* version = "0.1.6"
* identifier[0].use = #official
* identifier[=].value = "ActiveMonitoringDay7Survey"
* identifier[=].period.start = "2023-07-19"
* identifier[+].use = #temp
* identifier[=].value = "Questionnaire-ActiveMonitoring-Day7SurveyQuestionnaire"
* identifier[=].period.end = "2023-07-19"
* code = $sct#293104008 "Vaccine adverse reaction"
* subjectType = #Patient
* status = #draft
* publisher = "Te Whatu Ora"
* contact.name = "Te Whatu Ora"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.tewhatuora.govt.nz/"
* description = "Te Whatu Ora 7-day post Influenza/Covid-19 booster vaccination survey."
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* useContext.valueCodeableConcept.text = "Vaccination Side Effect Questionnaire"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* purpose = "Survey of side effects and overall experience of Influenza/COVID-19 Booster vaccination after 7 days."
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/ActiveMonitoringDay7Survey"
* name = "ActiveMonitoringDay7Survey"
* title = "Influenza and COVID-19 Booster Vaccination 7 Day Review Questionnaire"
* item[0].type = #display
* item[=].linkId = "p01"
* item[=].prefix = "page 1"
* item[=].text = "This is the first of two surveys about your vaccine experience. This survey will take approximately five minutes to complete. You will be  asked for some demographic data and about any symptoms you have experienced. There is a section at the end for you to comment on  any other parts of the vaccine experience."
* item[+].type = #group
* item[=].required = false
* item[=].linkId = "p02"
* item[=].prefix = "page 2"
* item[=].text = "Vaccine Administration"
* item[=].item[0].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].required = true
* item[=].item[=].linkId = "p02-q01-VaccineType"
* item[=].item[=].prefix = "page 2 question 1"
* item[=].item[=].text = "Which vaccine did you receive 7 days ago?"
* item[=].item[=].answerOption[0].valueCoding.display = "Flu"
* item[=].item[=].answerOption[+].valueCoding.display = "COVID Booster"
* item[=].item[=].answerOption[+].valueCoding.display = "Both"
* item[=].item[=].answerOption[+].valueCoding.display = "Don't Know"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].required = true
* item[=].item[=].linkId = "p02-q01-1-VaccineType.WhichArm"
* item[=].item[=].prefix = "page 2 question 1.1"
* item[=].item[=].text = "Were they both given in the arm?"
* item[=].item[=].enableWhen.answerCoding.display = "Both"
* item[=].item[=].enableWhen.question = "p02-q01-VaccineType"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableBehavior = #all
* item[=].item[=].answerOption[0].valueCoding.display = "Same arm."
* item[=].item[=].answerOption[+].valueCoding.display = "Different arms."
* item[=].item[=].answerOption[+].valueCoding.display = "Don't Know."
* item[=].item[=].answerOption[+].valueCoding.display = "No."
* item[+].type = #group
* item[=].required = false
* item[=].linkId = "p03"
* item[=].prefix = "page 3"
* item[=].text = "Health Conditions"
* item[=].item[0].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].required = false
* item[=].item[=].linkId = "p03-q01-LongTermConditions"
* item[=].item[=].text = "Do you have any long-term medical conditions?"
* item[=].item[=].answerOption[0].valueCoding.display = "Yes"
* item[=].item[=].answerOption[+].valueCoding.display = "No"
* item[=].item[=].answerOption[+].valueCoding.display = "Prefer not to answer"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "p03-q01-1-LongTermConditions.Select"
* item[=].item[=].text = "Please select all the long term conditions that apply."
* item[=].item[=].enableWhen.answerCoding.display = "Yes"
* item[=].item[=].enableWhen.question = "p03-q01-LongTermConditions"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableBehavior = #all
* item[=].item[=].answerOption[0].valueCoding = $sct#85828009 "Autoimmune conditions (eg. arthritis)"
* item[=].item[=].answerOption[+].valueCoding = $sct#32709003 "Alcohol or other drug addictions"
* item[=].item[=].answerOption[+].valueCoding = $sct#195967001 "Asthma"
* item[=].item[=].answerOption[+].valueCoding = $sct#363346000 "Cancer"
* item[=].item[=].answerOption[+].valueCoding = $sct#82423001 "Chronic pain"
* item[=].item[=].answerOption[+].valueCoding = $sct#13645005 "Chronic obstructive pulmonary disease"
* item[=].item[=].answerOption[+].valueCoding = $sct#73211009 "Diabetes"
* item[=].item[=].answerOption[+].valueCoding = $sct#770924008 "Gout"
* item[=].item[=].answerOption[+].valueCoding = $sct#56265001 "Heart disease"
* item[=].item[=].answerOption[+].valueCoding = $sct#74732009 "Mental health condition"
* item[=].item[=].answerOption[+].valueCoding = $sct#414916001 "Obesity"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[+].type = #text
* item[=].item[=].required = false
* item[=].item[=].linkId = "p03-q01-1-1-LongTermConditions.Select.Other"
* item[=].item[=].text = "Please explain any other long term medical conditions you have."
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[=].enableWhen.question = "p03-q01-1-LongTermConditions.Select"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableBehavior = #all
* item[+].type = #group
* item[=].required = false
* item[=].linkId = "p04"
* item[=].prefix = "page 4"
* item[=].text = "Side Effects"
* item[=].item.type = #boolean
* item[=].item.required = false
* item[=].item.linkId = "p04-q01-SideEffects"
* item[=].prefix = "page 4 question 1"
* item[=].item.text = "Did you have any reactions following your  vaccine? This includes any reactions your vaccinator told you to expect AND anything  you did not expect that you think might be a  reaction, no matter how minor."
* item[+].type = #group
* item[=].required = false
* item[=].linkId = "p05"
* item[=].prefix = "page 5"
* item[=].text = "Side Effects Details"
* item[=].enableWhen.answerBoolean = true
* item[=].enableWhen.question = "p04-q01-SideEffects"
* item[=].enableWhen.operator = #=
* item[=].enableBehavior = #all
* item[=].item[0].type = #boolean
* item[=].item[=].code = $sct#95376002 "Injection site disorder"
* item[=].item[=].required = false
* item[=].item[=].linkId = "p05-q01-InjectionSiteDisorder"
* item[=].prefix = "page 5 question 1"
* item[=].item[=].text = "Did you experience any injection site reactions (pain, redness,  swelling, itching at or near the injection site)?"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "p05-q01-1-InjectionSiteDisorder.Select"
* item[=].item[=].text = "Please select all in select all the injection site reactions that you experienced."
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableWhen.question = "p05-q01-InjectionSiteDisorder"
* item[=].prefix = "page 5 question 1.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableBehavior = #all
* item[=].item[=].answerOption[0].valueCoding = #95388000 "Pain"
* item[=].item[=].answerOption[+].valueCoding = #95380007 "Redness"
* item[=].item[=].answerOption[+].valueCoding = #213340005 "Swelling"
* item[=].item[=].answerOption[+].valueCoding = #95379009 "Itching"
* item[=].item[+].type = #boolean
* item[=].item[=].required = false
* item[=].item[=].linkId = "p05-q01-2-InjectionSiteDisorder.EntireArm"
* item[=].prefix = "page 5 question 1.2"
* item[=].item[=].text = "Did you have swelling of entire arm?"
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableWhen.question = "p05-q01-InjectionSiteDisorder"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[+].type = #choice
* item[=].item[=].code = $sct#30746006 "Lymphadenopathy"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].required = false
* item[=].item[=].linkId = "p05-q02-LymphNode"
* item[=].prefix = "page 5 question 2"
* item[=].item[=].text = "Did you have swelling of lymph nodes under your arm/in the armpit?"
* item[=].item[=].answerOption[0].valueCoding.display = "Yes, under one arm."
* item[=].item[=].answerOption[+].valueCoding.display = "Yes, under both arms."
* item[=].item[=].answerOption[+].valueCoding.display = "No"
* item[=].item[=].answerOption[+].valueCoding.display = "Don't know"
* item[=].item[+].type = #boolean
* item[=].item[=].code = $sct#386661006 "Fever or high temperature"
* item[=].item[=].required = false
* item[=].item[=].linkId = "p05-q03-Fever"
* item[=].prefix = "page 5 question 3"
* item[=].item[=].text = "Fever (a temperature of 38°C or higher)?"
* item[=].item[+].type = #boolean
* item[=].item[=].code = $sct#274640006 "Chills, shivering or feeling cold"
* item[=].item[=].required = false
* item[=].item[=].linkId = "p05-q04-Chills"
* item[=].prefix = "page 5 question 4"
* item[=].item[=].text = "Chills (shivering and feeling cold)?"
* item[=].item[+].type = #boolean
* item[=].item[=].code = $sct#271807003 "Rash"
* item[=].item[=].required = true
* item[=].item[=].linkId = "p05-q05-Rash"
* item[=].prefix = "page 5 question 5"
* item[=].item[=].text = "Did you experience a rash, not near the injection site?"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].required = true
* item[=].item[=].linkId = "p05-q05-1-Rash.WhenStarted"
* item[=].prefix = "page 5 question 5.1"
* item[=].item[=].text = "When did the rash appear?"
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableWhen.question = "p05-q05-Rash"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableBehavior = #all
* item[=].item[=].answerOption[0].valueCoding.display = "Within 1 hour after vaccination"
* item[=].item[=].answerOption[+].valueCoding.display = "Within a day after vaccination"
* item[=].item[=].answerOption[+].valueCoding.display = "More than a day after vaccination"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].required = true
* item[=].item[=].linkId = "p05-q05-2-Rash.HowLong"
* item[=].prefix = "page 5 question 5.2"
* item[=].item[=].text = "How long did the rash last?"
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableWhen.question = "p05-q05-Rash"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableBehavior = #all
* item[=].item[=].answerOption[0].valueCoding.display = "Less than 30 minutes"
* item[=].item[=].answerOption[+].valueCoding.display = "30 minutes to 24 hours"
* item[=].item[=].answerOption[+].valueCoding.display = "More than 24 hours"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].required = false
* item[=].item[=].linkId = "p05-q05-3-Rash.Location"
* item[=].prefix = "page 5 question 5.3"
* item[=].item[=].text = "Please indicate the location of the rash."
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableWhen.question = "p05-q05-Rash"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].answerOption[0].valueCoding.display = "Face"
* item[=].item[=].answerOption[+].valueCoding.display = "Body"
* item[=].item[=].answerOption[+].valueCoding.display = "Arms"
* item[=].item[=].answerOption[+].valueCoding.display = "Legs"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[+].type = #text
* item[=].item[=].required = false
* item[=].item[=].linkId = "p05-q05-3-1-Rash.Location.Other"
* item[=].prefix = "page 5 question 5.3.1"
* item[=].item[=].text = "Please explain where rash occurred."
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[=].enableWhen.question = "p05-q05-3-Rash.Location"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableBehavior = #all
* item[=].item[+].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].linkId = "p05-q06-Aches"
* item[=].prefix = "page 5 question 6"
* item[=].item[=].text = "Did you experience headaches, muscle or body aches, or joint aches or pain?"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "p05-q06-1-Aches.Select"
* item[=].prefix = "page 5 question 6.1"
* item[=].item[=].text = "Please select all that apply."
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableWhen.question = "p05-q06-Aches"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableBehavior = #all
* item[=].item[=].answerOption[0].valueCoding = $sct#25064002 "Headache"
* item[=].item[=].answerOption[+].valueCoding = $sct#68962001 "Muscle/body aches"
* item[=].item[=].answerOption[+].valueCoding = $sct#57676002 "Joint pain"
* item[=].item[=].answerOption[+].valueCoding.display = "Pain/irritation of the mouth and throat"
* item[=].item[+].type = #boolean
* item[=].item[=].code = $sct#53619000 "Disorder of digestive system"
* item[=].item[=].required = true
* item[=].item[=].linkId = "p05-q07-DigestiveDisorder"
* item[=].prefix = "page 5 question 7"
* item[=].item[=].text = "Did you experience any gastrointestinal symptoms?"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "p05-q07-1-DigestiveDisorder.Select"
* item[=].prefix = "page 5 question 7.1"
* item[=].item[=].text = "Please select all that gastrointestinal symptoms that apply."
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableWhen.question = "p05-q07-DigestiveDisorder"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].answerOption[0].valueCoding = $sct#422587007 "Nausea"
* item[=].item[=].answerOption[+].valueCoding = $sct#422400008 "Vomiting"
* item[=].item[=].answerOption[+].valueCoding = $sct#62315008 "Diarrhoea"
* item[=].item[=].answerOption[+].valueCoding = $sct#21522001 "Abdominal Pain"
* item[=].item[=].answerOption[+].valueCoding = $sct#79890006 "Loss of appetite"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[+].type = #string
* item[=].item[=].required = false
* item[=].item[=].linkId = "p05-q07-1-1-DigestiveDisorder.Select.Other"
* item[=].prefix = "page 5 question 7.1.1"
* item[=].item[=].text = "Please specify any other gastrointestinal symptoms you experienced."
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[=].enableWhen.question = "p05-q07-1-DigestiveDisorder.Select"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[+].type = #boolean
* item[=].item[=].code = $sct#84229001 "Fatigue"
* item[=].item[=].required = true
* item[=].item[=].linkId = "p05-q08-Fatigue"
* item[=].prefix = "page 5 question 8"
* item[=].item[=].text = "Did you experience fatigue or tiredness?"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "p05-q09-Chest"
* item[=].prefix = "page 5 question 9"
* item[=].item[=].text = "Did you have any of these Chest Symptoms?  - Please select all that apply"
* item[=].item[=].answerOption[0].valueCoding = $sct#29857009 "Chest Pain"
* item[=].item[=].answerOption[+].valueCoding.display = "Chest Heaviness"
* item[=].item[=].answerOption[+].valueCoding = $sct#23924001 "Chest Tightness"
* item[=].item[=].answerOption[+].valueCoding.display = "Chest Discomfort"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[+].type = #text
* item[=].item[=].required = true
* item[=].item[=].linkId = "p05-q09-1-Chest.Other"
* item[=].prefix = "page 5 question 9.1"
* item[=].item[=].text = "Please specify other chest symptoms you experienced."
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[=].enableWhen.question = "p05-q09-Chest"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableBehavior = #all
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "p05-q10-Heart"
* item[=].prefix = "page 5 question 10"
* item[=].item[=].text = "Did you experience any of the following heart symptoms?  Please select all that apply."
* item[=].item[=].answerOption[0].valueCoding = $sct#80313002 "Palpitations"
* item[=].item[=].answerOption[+].valueCoding = $sct#248648003 "Heart racing or pounding"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[+].type = #text
* item[=].item[=].required = true
* item[=].item[=].linkId = "p05-q10-1-Heart.Other"
* item[=].prefix = "page 5 question 10.1"
* item[=].item[=].text = "Please specify any other heart symptoms you experienced?"
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[=].enableWhen.question = "p05-q10-Heart"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableBehavior = #all
* item[=].item[+].type = #boolean
* item[=].item[=].code = $sct#230145002 "Difficulty breathing"
* item[=].item[=].required = true
* item[=].item[=].linkId = "p05-q11-Breathing"
* item[=].prefix = "page 5 question 11"
* item[=].item[=].text = "Did you experience any difficulty breathing?"
* item[=].item[+].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].linkId = "p05-q12-OtherSymptoms"
* item[=].prefix = "page 5 question 12"
* item[=].item[=].text = "Did you experience any symptoms that were not listed above?"
* item[=].item[+].type = #text
* item[=].item[=].required = false
* item[=].item[=].linkId = "p05-q12-1-OtherSymptoms.Explain"
* item[=].prefix = "page 5 question 12.1"
* item[=].item[=].text = "What other side effects did you experience?"
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableWhen.question = "p05-q12-OtherSymptoms"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableBehavior = #all
* item[+].type = #group
* item[=].required = false
* item[=].linkId = "p06"
* item[=].prefix = "page 6"
* item[=].text = "Symptom Relief"
* item[=].enableWhen.answerBoolean = true
* item[=].enableWhen.question = "p04-q01-SideEffects"
* item[=].enableWhen.operator = #=
* item[=].enableBehavior = #all
* item[=].item[0].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].linkId = "p06-q01-MissingDays"
* item[=].prefix = "page 6 question 1"
* item[=].item[=].text = "Did any of the symptoms you reported cause  you to miss work, study, or normal daily  activities?"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].required = true
* item[=].item[=].linkId = "p06-q01-1-MissingDays.HowMany"
* item[=].prefix = "page 6 question 1.1"
* item[=].item[=].text = "How many days did you miss?"
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableWhen.question = "p06-q01-MissingDays"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableBehavior = #all
* item[=].item[=].answerOption[0].valueCoding.display = "Less than 1 day"
* item[=].item[=].answerOption[+].valueCoding.display = "1 day"
* item[=].item[=].answerOption[+].valueCoding.display = "2 days"
* item[=].item[=].answerOption[+].valueCoding.display = "3 days or more"
* item[=].item[+].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].linkId = "p06-q02-SymptomRelief"
* item[=].prefix = "page 6 question 2"
* item[=].item[=].text = "Did any of the symptoms cause you to seek advice or care from a healthcare professional?"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "p06-q02-1-SymptomRelief.Select"
* item[=].prefix = "page 6 question 2.1"
* item[=].item[=].text = "Please select the type of advice or care you sought."
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableWhen.question = "p06-q02-SymptomRelief"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableBehavior = #all
* item[=].item[=].answerOption[0].valueCoding.display = "Phone advice from a helpline (e.g.  Healthline)"
* item[=].item[=].answerOption[+].valueCoding.display = "Care from a GP clinic (including the clinic  nurse, a doctor, or a phone call with a  person at the GP clinic)."
* item[=].item[=].answerOption[+].valueCoding.display = "Visit to a hospital emergency department"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[+].type = #text
* item[=].item[=].required = true
* item[=].item[=].linkId = "p06-q02-1-1-SymptomRelief.Select.Other"
* item[=].prefix = "page 6 question 2.1.1"
* item[=].item[=].text = "Please explain any other advice or care you sought."
* item[=].item[=].enableWhen.answerCoding.display = "Other [Please explain]"
* item[=].item[=].enableWhen.question = "p06-q02-1-SymptomRelief.Select"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableBehavior = #all
* item[=].item[+].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].linkId = "p06-q03-Medicines"
* item[=].prefix = "page 6 question 3"
* item[=].item[=].text = "Did you take any over the counter medications to relive the pain/discomfort?"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "p06-q03-1-Medicines.Select"
* item[=].prefix = "page 6 question 3.1"
* item[=].item[=].text = "Please specify what medication you took."
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableWhen.question = "p06-q03-Medicines"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableBehavior = #all
* item[=].item[=].answerOption[0].valueCoding = $sct#387517004 "Paracetamol"
* item[=].item[=].answerOption[+].valueCoding = $sct#387207008 "Ibuprofen"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[+].type = #text
* item[=].item[=].required = true
* item[=].item[=].linkId = "p06-q03-1-1-Medicines.Select.Other"
* item[=].prefix = "page 6 question 3.1.1"
* item[=].item[=].text = "Please specify any alternate medications you took."
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[=].enableWhen.question = "p06-q03-1-Medicines.Select"
* item[=].item[=].enableWhen.operator = #=
* item[+].type = #group
* item[=].required = false
* item[=].linkId = "p07"
* item[=].prefix = "page 7"
* item[=].text = "Vaccine Experience"
* item[=].item[0].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].required = true
* item[=].item[=].linkId = "p07-q01-Experience"
* item[=].prefix = "page 7 question 1" 
* item[=].item[=].text = "How would you rate your overall experience getting the vaccine?"
* item[=].item[=].answerOption[0].valueCoding.display = "Very Poor"
* item[=].item[=].answerOption[+].valueCoding.display = "Poor"
* item[=].item[=].answerOption[+].valueCoding.display = "Average"
* item[=].item[=].answerOption[+].valueCoding.display = "Good"
* item[=].item[=].answerOption[+].valueCoding.display = "Very Good"
* item[=].item[+].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].linkId = "p07-q02-Comments"
* item[=].prefix = "page 7 question 2" 
* item[=].item[=].text = "Do you have any comments about your vaccine experience?"
* item[=].item[+].type = #text
* item[=].item[=].required = false
* item[=].item[=].linkId = "p07-q02-1-Comments.Explain"
* item[=].prefix = "page 7 question 2.1" 
* item[=].item[=].text = "Please Explain"
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableWhen.question = "p07-q02-Comments"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableBehavior = #all
* item[+].type = #display
* item[=].linkId = "p08"
* item[=].prefix = "page 8"
* item[=].text = "Thank you for completing the Day 7 survey, your answers have been submitted. You will receive your Day 42 survey in 35 days. Your  responses will help contribute to the safety monitoring of the Influenza vaccine. The information you provide is protected by the Privacy Act  2020. Please remember this is a survey only and your answers will not result in a medical response. If you have any concerns about your health,  ring Healthline at 0800 611 116 or speak to your healthcare professional.  If you experience any of these symptoms of myocarditis and pericarditis: tightness, heaviness, discomfort, pressure or pain in your chest or  neck; difficulty breathing or catching your breath; feeling faint, dizzy, or light-headed; fluttering, racing, or pounding heart, or feeling like it’s  ‘skipping beats,’ seek medical help promptly and mention your vaccination."