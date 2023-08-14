Alias: $sct = http://snomed.info/sct
Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type

Instance: ActiveMonitoringDay7Survey
InstanceOf: Questionnaire
Usage: #example
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/ActiveMonitoringDay7Survey"

* identifier[0].use = #official
* identifier[=].value = "ActiveMonitoringDay7Survey"
* identifier[=].period.start = "2023-07-19"
* identifier[+].use = #temp
* identifier[=].value = "Questionnaire-ActiveMonitoring-Day7SurveyQuestionnaire"
* identifier[=].period.end = "2023-07-19"

* version = "0.1.6"
* name = "ActiveMonitoringDay7Survey"
* title = "Influenza and COVID-19 Booster Vaccination 7 Day Review Questionnaire"
* status = #draft
* subjectType = #Patient
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
* code = $sct#293104008 "Vaccine adverse reaction"

* item[0].type = #display
* item[=].linkId = "p01"
* item[=].prefix = "page 1"
* item[=].text = "This is the first of two surveys about your vaccine experience. This survey will take approximately five minutes to complete. You will be  asked for some demographic data and about any symptoms you have experienced. There is a section at the end for you to comment on  any other parts of the vaccine experience."
* item[+].item[0].type = #choice
* item[=].item[=].linkId = "9960230561791"
* item[=].item[=].text = "Which vaccine did you receive 7 days ago?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Flu"
* item[=].item[=].answerOption[+].valueCoding.display = "COVID Booster"
* item[=].item[=].answerOption[+].valueCoding.display = "Both"
* item[=].item[=].answerOption[+].valueCoding.display = "Don't Know"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "1514890726951"
* item[=].item[=].text = "Were they both given in the arm?"
* item[=].item[=].enableWhen.question = "9960230561791"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Both"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Same arm."
* item[=].item[=].answerOption[+].valueCoding.display = "Different arms."
* item[=].item[=].answerOption[+].valueCoding.display = "Don't Know."
* item[=].item[=].answerOption[+].valueCoding.display = "No."
* item[=].type = #group
* item[=].linkId = "1700498446480"
* item[=].text = "Vaccine Administration"
* item[+].item[0].type = #choice
* item[=].item[=].linkId = "8969650664034"
* item[=].item[=].text = "Do you have any long-term medical conditions?"
* item[=].item[=].answerOption[0].valueCoding.display = "Yes"
* item[=].item[=].answerOption[+].valueCoding.display = "No"
* item[=].item[=].answerOption[+].valueCoding.display = "Prefer not to answer"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "p04-q02-LongTermConditions"
* item[=].item[=].text = "Please select all the long term conditions that apply."
* item[=].item[=].enableWhen.question = "8969650664034"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Yes"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = $sct#4301008 "Autoimmune conditions (eg. arthritis)"
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
* item[=].item[=].linkId = "p04-q02-2-LongTermConditions.Other.Description"
* item[=].item[=].text = "Please explain any other long term medical conditions you have."
* item[=].item[=].enableWhen.question = "p04-q02-LongTermConditions"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].type = #group
* item[=].linkId = "p04"
* item[=].text = "Health Conditions"
* item[+].item.type = #boolean
* item[=].item.linkId = "9239054017102"
* item[=].item.text = "Did you have any reactions following your  vaccine? This includes any reactions your vaccinator told you to expect AND anything  you did not expect that you think might be a  reaction, no matter how minor."
* item[=].type = #group
* item[=].linkId = "3443198873152"
* item[=].text = "Side Effects"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "1545802279887"
* item[=].item[=].code = $sct#95376002 "Injection site disorder"
* item[=].item[=].text = "Did you experience any injection site reactions (pain, redness,  swelling, itching at or near the injection site)?"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "9714543768474"
* item[=].item[=].text = "Please select all in select all the injection site reactions that you experienced."
* item[=].item[=].enableWhen.question = "1545802279887"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = #95388000 "Pain"
* item[=].item[=].answerOption[+].valueCoding = #95380007 "Redness"
* item[=].item[=].answerOption[+].valueCoding = #213340005 "Swelling"
* item[=].item[=].answerOption[+].valueCoding = #95379009 "Itching"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "6975246742853"
* item[=].item[=].text = "Did you have swelling of entire arm?"
* item[=].item[=].enableWhen.question = "1545802279887"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "5986955811622"
* item[=].item[=].code = $sct#30746006 "Lymphadenopathy"
* item[=].item[=].text = "Did you have swelling of lymph nodes under your arm/in the armpit?"
* item[=].item[=].answerOption[0].valueCoding.display = "Yes, under one arm."
* item[=].item[=].answerOption[+].valueCoding.display = "Yes, under both arms."
* item[=].item[=].answerOption[+].valueCoding.display = "No"
* item[=].item[=].answerOption[+].valueCoding.display = "Don't know"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "1916488003714"
* item[=].item[=].code = $sct#386661006 "Fever or high temperature"
* item[=].item[=].text = "Fever (a temperature of 38°C or higher)?"
* item[=].item[=].enableBehavior = #all
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "5034829025752"
* item[=].item[=].code = $sct#274640006 "Chills, shivering or feeling cold"
* item[=].item[=].text = "Chills (shivering and feeling cold)?"
* item[=].item[=].enableBehavior = #all
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p02-q02-SideEffects.Rash"
* item[=].item[=].code = $sct#271807003 "Rash"
* item[=].item[=].text = "Did you experience a rash, not near the injection site?"
* item[=].item[=].required = true
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "p02-q02-1-SideEffects.Rash.WhenStarted"
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
* item[=].item[=].text = "How long did the rash last?"
* item[=].item[=].enableWhen.question = "p02-q02-SideEffects.Rash"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Less than 30 minutes"
* item[=].item[=].answerOption[+].valueCoding.display = "30 minutes to 24 hours"
* item[=].item[=].answerOption[+].valueCoding.display = "More than 24 hours"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "8554528106234"
* item[=].item[=].text = "Please indicate the location of the rash."
* item[=].item[=].enableWhen.question = "p02-q02-SideEffects.Rash"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].answerOption[0].valueCoding.display = "Face"
* item[=].item[=].answerOption[+].valueCoding.display = "Body"
* item[=].item[=].answerOption[+].valueCoding.display = "Arms"
* item[=].item[=].answerOption[+].valueCoding.display = "Legs"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "4363346193622"
* item[=].item[=].text = "Please explain where rash occurred."
* item[=].item[=].enableWhen.question = "8554528106234"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[=].enableBehavior = #all
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "3923989558947"
* item[=].item[=].text = "Did you experience headaches, muscle or body aches, or joint aches or pain?"
* item[=].item[=].required = true
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "3142540911839"
* item[=].item[=].text = "Please select all that apply."
* item[=].item[=].enableWhen.question = "3923989558947"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = $sct#25064002 "Headache"
* item[=].item[=].answerOption[+].valueCoding = $sct#68962001 "Muscle/body aches"
* item[=].item[=].answerOption[+].valueCoding = $sct#57676002 "Joint aches/pain"
* item[=].item[=].answerOption[+].valueCoding.display = "Pain/irritation of the mouth and throat"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "5142974394346"
* item[=].item[=].code = $sct#53619000 "Disorder of digestive system"
* item[=].item[=].text = "Did you experience any gastrointestinal symptoms?"
* item[=].item[=].required = true
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "103448843232"
* item[=].item[=].text = "Please select all that gastrointestinal symptoms that apply."
* item[=].item[=].enableWhen.question = "5142974394346"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = $sct#422587007 "Nausea"
* item[=].item[=].answerOption[+].valueCoding = $sct#422400008 "Vomiting"
* item[=].item[=].answerOption[+].valueCoding = $sct#62315008 "Diarrhoea"
* item[=].item[=].answerOption[+].valueCoding = $sct#21522001 "Abdominal Pain"
* item[=].item[=].answerOption[+].valueCoding = $sct#79890006 "Loss of appetite"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "8319580625679"
* item[=].item[=].text = "Please specify any other gastrointestinal symptoms you experienced."
* item[=].item[=].enableWhen.question = "103448843232"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "4664637794624"
* item[=].item[=].code = $sct#84229001 "Fatigue"
* item[=].item[=].text = "Did you experience fatigue or tiredness?"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "9856234673153"
* item[=].item[=].text = "Did you have any of these Chest Symptoms?  - Please select all that apply"
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = $sct#29857009 "Chest Pain"
* item[=].item[=].answerOption[+].valueCoding.display = "Chest Heaviness"
* item[=].item[=].answerOption[+].valueCoding = $sct#23924001 "Chest Tightness"
* item[=].item[=].answerOption[+].valueCoding.display = "Chest Discomfort"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "1629032111234"
* item[=].item[=].text = "Please specify other chest symptoms you experienced."
* item[=].item[=].enableWhen.question = "9856234673153"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "6799534737808"
* item[=].item[=].text = "Did you experience any of the following heart symptoms?  Please select all that apply."
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = $sct#80313002 "Palpitations"
* item[=].item[=].answerOption[+].valueCoding = $sct#248648003 "Heart racing or pounding"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "8261477185415"
* item[=].item[=].text = "Please specify any other heart symptoms you experienced?"
* item[=].item[=].enableWhen.question = "6799534737808"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "5917150366509"
* item[=].item[=].code = $sct#230145002 "Difficulty breathing"
* item[=].item[=].text = "Did you experience any difficulty breathing?"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p02-q03-SideEffects.Other"
* item[=].item[=].text = "Did you experience any symptoms that were not listed above?"
* item[=].item[=].required = true
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p02-q03-1-SideEffects.Other.Description"
* item[=].item[=].text = "What other side effects did you experience?"
* item[=].item[=].enableWhen.question = "p02-q03-SideEffects.Other"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].type = #group
* item[=].linkId = "p02"
* item[=].text = "Side Effects Details"
* item[=].enableWhen.question = "9239054017102"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[=].enableBehavior = #all
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "p03-q03-MissedActivities"
* item[=].item[=].text = "Did any of the symptoms you reported cause  you to miss work, study, or normal daily  activities?"
* item[=].item[=].required = true
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "p03-q03-1-MissedActivities.Period"
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
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "7416461913171"
* item[=].item[=].text = "Did any of the symptoms cause you to seek advice or care from a healthcare professional?"
* item[=].item[=].required = true
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "7913793043623"
* item[=].item[=].text = "Please select the type of advice or care you sought."
* item[=].item[=].enableWhen.question = "7416461913171"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding.display = "Phone advice from a helpline (e.g.  Healthline)"
* item[=].item[=].answerOption[+].valueCoding.display = "Care from a GP clinic (including the clinic  nurse, a doctor, or a phone call with a  person at the GP clinic)."
* item[=].item[=].answerOption[+].valueCoding.display = "Visit to a hospital emergency department"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "2530373501358"
* item[=].item[=].text = "Please explain any other advice or care you sought."
* item[=].item[=].enableWhen.question = "7913793043623"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Other [Please explain]"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p03-q01-SymptomRelief.Medicines"
* item[=].item[=].text = "Did you take any over the counter medications to relive the pain/discomfort?"
* item[=].item[=].required = true
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "7188480251734"
* item[=].item[=].text = "Please specify what medication you took."
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = $sct#387517004 "Paracetamol"
* item[=].item[=].answerOption[+].valueCoding = $sct#387207008 "Ibuprofen"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "9885093543778"
* item[=].item[=].text = "Please specify any alternate medications you took."
* item[=].item[=].enableWhen.question = "7188480251734"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[=].required = true
* item[=].type = #group
* item[=].linkId = "p03"
* item[=].prefix = "page 3"
* item[=].text = "Symptom Relief"
* item[=].enableWhen.question = "9239054017102"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[=].enableBehavior = #all
* item[+].item[0].type = #choice
* item[=].item[=].linkId = "8990185166937"
* item[=].item[=].text = "How would you rate your overall experience getting the vaccine?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Very Poor"
* item[=].item[=].answerOption[+].valueCoding.display = "Poor"
* item[=].item[=].answerOption[+].valueCoding.display = "Average"
* item[=].item[=].answerOption[+].valueCoding.display = "Good"
* item[=].item[=].answerOption[+].valueCoding.display = "Very Good"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "6916786432547"
* item[=].item[=].text = "Do you have any comments about your vaccine experience?"
* item[=].item[=].required = true
* item[=].item[+].type = #text
* item[=].item[=].linkId = "9011858129576"
* item[=].item[=].text = "Please Explain"
* item[=].item[=].enableWhen.question = "6916786432547"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].type = #group
* item[=].linkId = "4125520410382"
* item[=].text = "Vaccine Experience"
* item[+].type = #display
* item[=].linkId = "p05"
* item[=].text = "Thank you for completing the Day 7 survey, your answers have been submitted. You will receive your Day 42 survey in 35 days. Your  responses will help contribute to the safety monitoring of the Influenza vaccine. The information you provide is protected by the Privacy Act  2020. Please remember this is a survey only and your answers will not result in a medical response. If you have any concerns about your health,  ring Healthline at 0800 611 116 or speak to your healthcare professional.  If you experience any of these symptoms of myocarditis and pericarditis: tightness, heaviness, discomfort, pressure or pain in your chest or  neck; difficulty breathing or catching your breath; feeling faint, dizzy, or light-headed; fluttering, racing, or pounding heart, or feeling like it’s  ‘skipping beats,’ seek medical help promptly and mention your vaccination."
