Alias: $general = https://fhir-ig.digital.health.nz/cs/general-scale
Alias: $ess = https://fhir-ig.digital.health.nz/cs/EpworthSleepScale
Alias: $qic = http://hl7.org/fhir/questionnaire-item-control
Alias: $licence-class = https://fhir-ig.digital.health.nz/cs/Licence-Class
Alias: $licence-endorsement = https://fhir-ig.digital.health.nz/cs/Vehicle-licence-endorsement

Instance: DHOSleepQuestionnaire
InstanceOf: Questionnaire
Usage: #definition

* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOSleepQuestionnaire"
* version = "1.0"
* name = "DHOSleepQuestionnaire"
* title = "Sleep Questionnaire"
* status = #active
* subjectType = #Patient
* description = "The Questionnaire collects patient-reported sleep symptoms, habits, and risk factors to support assessment of sleep disorders such as sleep apnoea."
* purpose = "Enables clinicians to evaluate risk and guide further investigation and care."

// ================= INTRO =================

* item[0].type = #group
* item[=].linkId = "intro"
* item[=].text = "Sleep Service"

* item[=].item[0].type = #display
* item[=].item[=].linkId = "986140922139"
* item[=].item[=].text = "We have received a referral to our Sleep Service from your doctor."

* item[=].item[+].type = #display
* item[=].item[=].linkId = "588842164207"
* item[=].item[=].text = "Please note we cannot consider your referral/sleep study results until we have this information completed by you."

// ================= MEASUREMENTS =================

* item[+].type = #group
* item[=].linkId = "measurements"
* item[=].text = "Measurements"

* item[=].item[0].type = #decimal
* item[=].item[=].linkId = "weight"
* item[=].item[=].text = "Weight (kg)"

* item[=].item[+].type = #decimal
* item[=].item[=].linkId = "height"
* item[=].item[=].text = "Height (cm)"

* item[=].item[+].type = #decimal
* item[=].item[=].linkId = "neck"
* item[=].item[=].text = "Neck circumference (cm) - Please use tape measure provided"

* item[=].item[+].type = #string
* item[=].item[=].linkId = "dentures"
* item[=].item[=].text = "Do you have dentures? (full or partial)"

// ================= SLEEP APNOEA =================

* item[+].type = #group
* item[=].linkId = "sleep-apnoea"
* item[=].text = "Sleep Apnoea"

* item[=].item[0].type = #open-choice
* item[=].item[=].linkId = "snoring"
* item[=].item[=].text = "According to what others have told you, how often do you think you snore?"
* item[=].item[=].answerOption[0].valueCoding = $general#Always "Always"
* item[=].item[=].answerOption[+].valueCoding = $general#Often "Often"
* item[=].item[=].answerOption[+].valueCoding = $general#Sometimes "Sometimes"
* item[=].item[=].answerOption[+].valueCoding = $general#Rarely "Rarely"
* item[=].item[=].answerOption[+].valueCoding = $general#Never "Never"

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "stop-breathing"
* item[=].item[=].text = "Has anyone heard you stop breathing in your sleep?"

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "choking"
* item[=].item[=].text = "Do you sometimes wake with a choking or gasping sensation?"

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "family"
* item[=].item[=].text = "Does anyone in your family have obstructive sleep apnoea?"

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "toilet"
* item[=].item[=].text = "Do you get up to go to the toilet more than once a night?"

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "headache"
* item[=].item[=].text = "Do you regularly wake with headaches in the morning?"

// ================= SLEEPINESS DURING THE DAY =================

* item[+].type = #group
* item[=].linkId = "daytime"
* item[=].text = "Sleepiness during the Day"

* item[=].item[0].type = #choice
* item[=].item[=].linkId = "refreshed"
* item[=].item[=].text = "Do you wake feeling refreshed?"
* item[=].item[=].answerOption[0].valueCoding = $general#Always "Always"
* item[=].item[=].answerOption[+].valueCoding = $general#Often "Often"
* item[=].item[=].answerOption[+].valueCoding = $general#Sometimes "Sometimes"
* item[=].item[=].answerOption[+].valueCoding = $general#Rarely "Rarely"
* item[=].item[=].answerOption[+].valueCoding = $general#Never "Never"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sleepy"
* item[=].item[=].text = "How often do you feel sleepy and want to fall asleep in the daytime?"
* item[=].item[=].answerOption[0].valueCoding = $general#Always "Always"
* item[=].item[=].answerOption[+].valueCoding = $general#Often "Often"
* item[=].item[=].answerOption[+].valueCoding = $general#Sometimes "Sometimes"
* item[=].item[=].answerOption[+].valueCoding = $general#Rarely "Rarely"
* item[=].item[=].answerOption[+].valueCoding = $general#Never "Never"

// ================= EPWORTH SLEEPINESS SCORE =================

* item[+].type = #group
* item[=].linkId = "epworth"
* item[=].text = "Epworth Sleepiness Score"

* item[=].item[0].type = #display
* item[=].item[=].linkId = "fallasleep"
* item[=].item[=].text = "How likely are you to doze off or fall asleep in the following situations - in contrast to feeling tired. This refers to your usual way of life in recent times. Even if you have not done some of these things recently, try to work out how they would have affected you."

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sittingandreading"
* item[=].item[=].text = "Sitting & Reading"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- NEVER doze"
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- SLIGHT chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- MODERATE chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- HIGH chance of dozing"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "watchingTV"
* item[=].item[=].text = "Watching TV"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- NEVER doze"
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- SLIGHT chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- MODERATE chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- HIGH chance of dozing"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sittingactivity"
* item[=].item[=].text = "Sitting inactive in a public place (theatre, meeting, etc)"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- NEVER doze"
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- SLIGHT chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- MODERATE chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- HIGH chance of dozing"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "incarforanhour"
* item[=].item[=].text = "A passenger in a car for one hour"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- NEVER doze"
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- SLIGHT chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- MODERATE chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- HIGH chance of dozing"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "lyingdown"
* item[=].item[=].text = "Lying down in the afternoon (if circumstances permit)"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- NEVER doze"
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- SLIGHT chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- MODERATE chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- HIGH chance of dozing"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sittingtalking"
* item[=].item[=].text = "Sitting talking to someone"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- NEVER doze"
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- SLIGHT chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- MODERATE chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- HIGH chance of dozing"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "trafficlights"
* item[=].item[=].text = "In a car whilst stopped in traffic or traffic lights"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- NEVER doze"
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- SLIGHT chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- MODERATE chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- HIGH chance of dozing"

// ================= MEDICAL HISTORY =================

* item[+].type = #group
* item[=].linkId = "medical"
* item[=].text = "Medical History"

* item[=].item[0].type = #boolean
* item[=].item[=].linkId = "hayfever"
* item[=].item[=].text = "Hayfever or constantly blocked nose"
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "nasal"
* item[=].item[=].text = "Previous nasal surgery"

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "airway"
* item[=].item[=].text = "Previous airway surgery? (e.g. tonsils removed)"

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "heart"
* item[=].item[=].text = "Heart disease (heart failure, heart attack, angina, arrhythmia e.g. atrial fibrillation, stent or bypass?)"

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "bp"
* item[=].item[=].text = "High blood pressure"

* item[=].item[=].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "controldifficulty"
* item[=].item[=].item[=].text = "If yes, is it difficult to control?"
* item[=].item[=].item[=].enableWhen[0].question = "bp"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableBehavior = #all

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "stroke"
* item[=].item[=].text = "Previous stroke or TIA ‘mini-stroke’?"

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "diabetes"
* item[=].item[=].text = "Diabetes"

* item[=].item[=].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "yescontroldifficulty"
* item[=].item[=].item[=].text = "If yes, is it difficult to control?"
* item[=].item[=].item[=].enableWhen[0].question = "diabetes"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableBehavior = #any

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "depression"
* item[=].item[=].text = "Depression"

* item[=].item[=].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "depression_11"
* item[=].item[=].item[=].text = "If yes, is it difficult to control?"
* item[=].item[=].item[=].enableWhen[0].question = "depression"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableBehavior = #any

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "asthma"
* item[=].item[=].text = "Asthma/COPD"

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "neuro"
* item[=].item[=].text = "Neuromuscular disease"

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "epilepsy"
* item[=].item[=].text = "Epilepsy"

* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].linkId = "neurodisease"
* item[=].item[=].item[=].text = "If yes, is it difficult to control?"
* item[=].item[=].item[=].enableWhen[0].question = "epilepsy"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableBehavior = #any

// ================= LIFESTYLE =================

* item[+].type = #group
* item[=].linkId = "lifestyle"
* item[=].text = "Lifestyle"

* item[=].item[0].type = #boolean
* item[=].item[=].linkId = "breath"
* item[=].item[=].text = "Do you get short of breath during your daily activities?"

* item[=].item[+].type = #string
* item[=].item[=].linkId = "occupation"
* item[=].item[=].text = "What is your Occupation?"

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "job-risk"
* item[=].item[=].text = "Has your job been at risk due to sleepiness or loss of concentration?"

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "doze-driving"
* item[=].item[=].text = "Do you have a vehicle licence?"

* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $qic#radio-button "Radio Button"
* item[=].item[=].item[=].linkId = "licenseclass"
* item[=].item[=].item[=].text = "What is your vehicle licence class?"
* item[=].item[=].item[=].enableWhen[0].question = "doze-driving"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].answerOption[0].valueCoding = $licence-class#1 "Class 1 (motorcar)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-class#2 "Class 2"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-class#3 "Class 3"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-class#4 "Class 4"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-class#5 "Class 5"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-class#6 "Class 6 (Motorcycle)"

* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $qic#radio-button "Radio Button"
* item[=].item[=].item[=].linkId = "licenseendorsement"
* item[=].item[=].item[=].text = "What is your vehicle licence endorsement?"
* item[=].item[=].item[=].enableWhen[0].question = "doze-driving"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].answerOption[0].valueCoding = $licence-endorsement#P "P"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-endorsement#V "V"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-endorsement#D "D"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-endorsement#F "F"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-endorsement#R "R"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-endorsement#T "T"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-endorsement#W "W"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-endorsement#I "I"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-endorsement#O "O"