Instance: DHOSleepQuestionnaire
InstanceOf: Questionnaire
Usage: #example
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOSleepQuestionnaire"
* identifier.use = #official
* identifier.value = "DHOSleepQuestionnaire"
* version = "1.0"
* name = "DHOSleepQuestionnaire"
* title = "Sleep Service Questionnaire"
* status = #active
* subjectType = #Patient
* description = "The Questionnaire collects patient-reported sleep symptoms, habits, and risk factors to support assessment of sleep disorders such as sleep apnoea."
* purpose = "Enables clinicians to evaluate risk and guide further investigation and care."
* item[0].item[0].type = #display
* item[=].item[=].linkId = "measurements"
* item[=].item[=].text = "Measurements"
* item[=].item[+].type = #decimal
* item[=].item[=].linkId = "weight"
* item[=].item[=].text = "Weight (kg)"
* item[=].item[=].required = false
* item[=].item[+].type = #decimal
* item[=].item[=].linkId = "height"
* item[=].item[=].text = "Height (cm)"
* item[=].item[=].required = false
* item[=].item[+].type = #decimal
* item[=].item[=].linkId = "neck"
* item[=].item[=].text = "Neck circumference (cm) - Please use tape measure provided"
* item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "dentures"
* item[=].item[=].text = "Do you have dentures? (full or partial)"
* item[=].item[=].required = false
* item[=].type = #group
* item[=].linkId = "intro"
* item[=].text = "1. We have received a referral to our Sleep Service from your doctor. Please note we cannot consider your referral/sleep study results until we have this information completed by you."
* item[+].item[0].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].linkId = "snoring"
* item[=].item[=].text = "According to what others have told you, how often do you think you snore?"
* item[=].item[=].required = false
* item[=].item[=].answerOption[0].valueCoding = $general-scale#Always "Always"
* item[=].item[=].answerOption[+].valueCoding = $general-scale#Often "Often"
* item[=].item[=].answerOption[+].valueCoding = $general-scale#Sometimes "Sometimes"
* item[=].item[=].answerOption[+].valueCoding = $general-scale#Rarely "Rarely"
* item[=].item[=].answerOption[+].valueCoding = $general-scale#Never "Never"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].linkId = "choking"
* item[=].item[=].text = "Select all that apply"
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = $sleep-options#1 "Has anyone heard you stop breathing in your sleep?"
* item[=].item[=].answerOption[+].valueCoding = $sleep-options#2 "Do you sometimes wake with a choking or gasping sensation?"
* item[=].item[=].answerOption[+].valueCoding = $sleep-options#3 "Does anyone in your family have obstructive sleep apnoea?"
* item[=].item[=].answerOption[+].valueCoding = $sleep-options#4 "Do you get up to go to the toilet more than once a night?"
* item[=].item[=].answerOption[+].valueCoding = $sleep-options#5 "Do you regularly wake with headaches in the morning?"
* item[=].type = #group
* item[=].linkId = "sleep-apnoea"
* item[=].text = "2. Sleep Apnoea"
* item[+].item[0].type = #choice
* item[=].item[=].linkId = "refreshed"
* item[=].item[=].text = "Do you wake feeling refreshed?"
* item[=].item[=].required = false
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerOption[0].valueCoding = $general-scale#Always "Always"
* item[=].item[=].answerOption[+].valueCoding = $general-scale#Often "Often"
* item[=].item[=].answerOption[+].valueCoding = $general-scale#Sometimes "Sometimes"
* item[=].item[=].answerOption[+].valueCoding = $general-scale#Rarely "Rarely"
* item[=].item[=].answerOption[+].valueCoding = $general-scale#Never "Never"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sleepy"
* item[=].item[=].text = "How often do you feel sleepy and want to fall asleep in the daytime?"
* item[=].item[=].required = false
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerOption[0].valueCoding = $general-scale#Always "Always"
* item[=].item[=].answerOption[+].valueCoding = $general-scale#Often "Often"
* item[=].item[=].answerOption[+].valueCoding = $general-scale#Sometimes "Sometimes"
* item[=].item[=].answerOption[+].valueCoding = $general-scale#Rarely "Rarely"
* item[=].item[=].answerOption[+].valueCoding = $general-scale#Never "Never"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "OftenNaps"
* item[=].item[=].text = "Do you often have a nap during the day?"
* item[=].type = #group
* item[=].linkId = "daytime"
* item[=].text = "3. Sleepiness during the Day"
* item[+].type = #group
* item[=].linkId = "epworth"
* item[=].text = "4. Epworth Sleepiness Score"
* item[=].item[0].type = #display
* item[=].item[=].linkId = "fallasleep"
* item[=].item[=].text = "How likely are you to doze off or fall asleep in the following situations - in contrast to feeling tired. This refers to your usual way of life in recent times. Even if you have not done some of these things recently, try to work out how they would have affected you."
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sittingandreading"
* item[=].item[=].text = "Sitting & Reading"
* item[=].item[=].required = true
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- NEVER doze"
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- SLIGHT chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- MODERATE chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- HIGH chance of dozing"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "watchingTV"
* item[=].item[=].text = "Watching TV"
* item[=].item[=].required = true
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- NEVER doze"
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- SLIGHT chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- MODERATE chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- HIGH chance of dozing"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sittingactivity"
* item[=].item[=].text = "Sitting inactive in a public place (theatre, meeting, etc)"
* item[=].item[=].required = true
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- NEVER doze"
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- SLIGHT chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- MODERATE chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- HIGH chance of dozing"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "incarforanhour"
* item[=].item[=].text = "A passenger in a car for one hour"
* item[=].item[=].required = true
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- NEVER doze"
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- SLIGHT chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- MODERATE chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- HIGH chance of dozing"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "lyingdown"
* item[=].item[=].text = "Lying down in the afternoon (if circumstances permit)"
* item[=].item[=].required = true
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- NEVER doze"
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- SLIGHT chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- MODERATE chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- HIGH chance of dozing"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sittingtalking"
* item[=].item[=].text = "Sitting talking to someone"
* item[=].item[=].required = true
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- NEVER doze"
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- SLIGHT chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- MODERATE chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- HIGH chance of dozing"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sittingQuitely"
* item[=].item[=].text = "Sitting quietly after lunch without alcohol"
* item[=].item[=].required = true
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- NEVER doze"
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- SLIGHT chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- MODERATE chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- HIGH chance of dozing"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "trafficlights"
* item[=].item[=].text = "In a car whilst stopped in traffic or at traffic lights"
* item[=].item[=].required = true
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- NEVER doze"
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- SLIGHT chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- MODERATE chance of dozing"
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- HIGH chance of dozing"
* item[=].item[+].type = #display
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "total-score-display"
* item[=].item[=].text = "Total score"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].text.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].text.extension.valueExpression.expression = "iif(%epworthTotal <= 12, iif(%epworthTotal = 0, '0', iif(%epworthTotal = 1, '1', iif(%epworthTotal = 2, '2', iif(%epworthTotal = 3, '3', iif(%epworthTotal = 4, '4', iif(%epworthTotal = 5, '5', iif(%epworthTotal = 6, '6', iif(%epworthTotal = 7, '7', iif(%epworthTotal = 8, '8', iif(%epworthTotal = 9, '9', iif(%epworthTotal = 10, '10', iif(%epworthTotal = 11, '11', iif(%epworthTotal = 12, '12', ''))))))))))))), iif(%epworthTotal = 13, '13', iif(%epworthTotal = 14, '14', iif(%epworthTotal = 15, '15', iif(%epworthTotal = 16, '16', iif(%epworthTotal = 17, '17', iif(%epworthTotal = 18, '18', iif(%epworthTotal = 19, '19', iif(%epworthTotal = 20, '20', iif(%epworthTotal = 21, '21', iif(%epworthTotal = 22, '22', iif(%epworthTotal = 23, '23', iif(%epworthTotal = 24, '24', '')))))))))))))"
* item[+].item[0].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].linkId = "hayfever"
* item[=].item[=].text = "Select all that apply"
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = $sleep-options#1 "Hayfever or constantly blocked nose"
* item[=].item[=].answerOption[+].valueCoding = $sleep-options#2 "Previous nasal surgery"
* item[=].item[=].answerOption[+].valueCoding = $sleep-options#3 "Previous airway surgery? (e.g. tonsils removed)"
* item[=].item[=].answerOption[+].valueCoding = $sleep-options#4 "Heart disease (heart failure, heart attack, angina, arrhythmia e.g. atrial fibrillation, stent or bypass?)"
* item[=].item[=].answerOption[+].valueCoding = $sleep-options#5 "Previous stroke or TIA ‘mini-stroke’?"
* item[=].item[=].answerOption[+].valueCoding = $sleep-options#6 "Asthma/COPD"
* item[=].item[=].answerOption[+].valueCoding = $sleep-options#7 "Neuromuscular disease"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "bp"
* item[=].item[=].text = "High blood pressure"
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "controldifficulty"
* item[=].item[=].text = "If yes, is it difficult to control?"
* item[=].item[=].required = false
* item[=].item[=].enableBehavior = #all
* item[=].item[=].enableWhen.question = "bp"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "diabetes"
* item[=].item[=].text = "Diabetes"
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "yescontroldifficulty"
* item[=].item[=].text = "If yes, is it difficult to control?"
* item[=].item[=].enableWhen.question = "diabetes"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "epilepsy"
* item[=].item[=].text = "Epilepsy"
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "neurodisease"
* item[=].item[=].text = "If yes, is it difficult to control?"
* item[=].item[=].enableWhen.question = "epilepsy"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "depression"
* item[=].item[=].text = "Depression"
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "depression_11"
* item[=].item[=].text = "If yes, is it difficult to control?"
* item[=].item[=].required = false
* item[=].item[=].enableBehavior = #all
* item[=].item[=].enableWhen.question = "depression"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].type = #group
* item[=].linkId = "medical"
* item[=].text = "5. Medical History"
* item[+].type = #group
* item[=].linkId = "lifestyle"
* item[=].text = "6. Lifestyle"
* item[=].item[0].type = #boolean
* item[=].item[=].linkId = "breath"
* item[=].item[=].text = "Do you get short of breath during your daily activities?"
* item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "occupation"
* item[=].item[=].text = "What is your Occupation?"
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "job-risk"
* item[=].item[=].text = "Has your job been at risk due to sleepiness or loss of concentration?"
* item[=].item[=].required = false
* item[=].item[+].item[0].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].item[=].linkId = "licenseclass"
* item[=].item[=].item[=].text = "Class"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[0].valueCoding = $licence-class#1 "Class 1 - Car licence"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-class#2 "Class 2 - Medium rigid vehicle licence"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-class#3 "Class 3 - Medium combination vehicle licence"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-class#4 "Class 4 - Heavy rigid vehicle licence"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-class#5 "Class 5 - Heavy combination vehicle licence"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-class#6 "Class 6 - Motorcycle licence"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].item[=].linkId = "licenseendorsement"
* item[=].item[=].item[=].text = "Endorcements"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[0].valueCoding = $licence-endorsement#P "P - Passenger"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-endorsement#V "V - Vehicle Recovery"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-endorsement#D "D - Dangerous Goods"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-endorsement#F "F - Forklift"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-endorsement#R "R - Rollers"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-endorsement#T "T - Tracks"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-endorsement#W "W - Wheels"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-endorsement#I "I - Instructor"
* item[=].item[=].item[=].answerOption[+].valueCoding = $licence-endorsement#O "O - Testing Officer"
* item[=].item[=].type = #group
* item[=].item[=].linkId = "licencedetails"
* item[=].item[=].text = "If you have a vehicle licence, what classes and endorsements does it have?"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "dozedwhiledriving"
* item[=].item[=].text = "Have you ever dozed at the wheel?"
* item[=].item[=].required = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "dozingdate"
* item[=].item[=].text = "When did this happen?"
* item[=].item[=].required = false
* item[=].item[=].enableBehavior = #all
* item[=].item[=].enableWhen.question = "dozedwhiledriving"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].type = #text
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#text-box "Text Box"
* item[=].item[=].linkId = "dozingdetails"
* item[=].item[=].text = "Tell us about it:"
* item[=].item[=].enableWhen.question = "dozedwhiledriving"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[+].type = #group
* item[=].item[=].linkId = "CaffeineIntake"
* item[=].item[=].text = "Caffeine intake (amount per day especially mid-afternoon to late evening)"
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].linkId = "TeaIntake"
* item[=].item[=].item[=].text = "Tea"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].linkId = "coffieeIntake"
* item[=].item[=].item[=].text = "Coffee"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].linkId = "lifeStyleDrinks"
* item[=].item[=].item[=].text = "Coke, Pepsi, life style drinks"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].linkId = "EnergyDrinks"
* item[=].item[=].item[=].text = "Energy drinks"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].linkId = "ChocolateDrinksBars"
* item[=].item[=].item[=].text = "Chocolate drinks or bars"
* item[=].item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "AlcholicDrinks"
* item[=].item[=].text = "How many alcoholic drinks do you have, on average, per week?"
* item[=].item[=].required = false
* item[+].type = #group
* item[=].linkId = "SleepHistory"
* item[=].text = "7. Previous Sleep Studies"
* item[=].item[0].type = #boolean
* item[=].item[=].linkId = "PrevSleepStudy"
* item[=].item[=].text = "Have you ever had a sleep study?"
* item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "HowLong"
* item[=].item[=].text = "Approximately how long ago?"
* item[=].item[=].required = false
* item[=].item[=].enableBehavior = #all
* item[=].item[=].enableWhen.question = "PrevSleepStudy"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "PrivateLab"
* item[=].item[=].item[=].text = "Private specialist"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "DHOLab"
* item[=].item[=].item[=].text = "Sleep Laboratory (Dunedin or Invercargill Hospital)"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].linkId = "OtherSleepLab"
* item[=].item[=].item[=].text = "Another Sleep Laboratory, please specify"
* item[=].item[=].item[=].required = false
* item[=].item[=].type = #group
* item[=].item[=].linkId = "Conducted"
* item[=].item[=].text = "Was it conducted by"
* item[=].item[=].enableWhen.question = "PrevSleepStudy"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "RestlessLeg1"
* item[=].item[=].text = "When you try to relax in the evening or sleep at night, do you ever have unpleasant, restless feelings in your legs that can be relieved by walking or movement?"
* item[=].item[=].required = false
* item[=].item[+].type = #text
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#text-box "Text Box"
* item[=].item[=].linkId = "RestlessLeg2"
* item[=].item[=].text = "If yes, please describe your symptoms"
* item[=].item[=].enableWhen.question = "RestlessLeg1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].type = #group
* item[=].linkId = "RestlessLeg"
* item[=].text = "8. Restless Legs"
* item[+].item[0].type = #string
* item[=].item[=].linkId = "SleepHours1"
* item[=].item[=].text = "What time do you go to sleep at night?"
* item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "SleepHours2"
* item[=].item[=].text = "What time do you get up in the morning?"
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "SleepHours3"
* item[=].item[=].text = "Do you do shift work?"
* item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "SleepHours4"
* item[=].item[=].text = "Please describe your usual hours of work:"
* item[=].item[=].required = false
* item[=].type = #group
* item[=].linkId = "SleepHours"
* item[=].text = "9. Hours of Sleep"
* item[+].item[0].type = #string
* item[=].item[=].linkId = "SleepDifficulty1"
* item[=].item[=].text = "How long does it take you to get to sleep?"
* item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "SleepDifficulty2"
* item[=].item[=].text = "How many times do you usually wake up during the night?"
* item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "SleepDifficulty3"
* item[=].item[=].text = "When you wake up, how long does it usually take you to get back to sleep?"
* item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "SleepDifficulty4"
* item[=].item[=].text = "Do you have pain that disturbs your sleep?"
* item[=].item[=].required = false
* item[=].type = #group
* item[=].linkId = "SleepDifficulty"
* item[=].text = "10. Difficulty Sleeping"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "OtherSymptoms1"
* item[=].item[=].text = "Do you have hallucinations (you see, feel or hear things that aren’t there) while falling asleep or waking up?"
* item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "OtherSymptoms2"
* item[=].item[=].text = "If yes, please describe your symptoms"
* item[=].item[=].enableWhen.question = "OtherSymptoms1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "OtherSymptoms3"
* item[=].item[=].text = "Do you ever feel you can’t move or talk at all for 1 to 2 minutes after you wake up?"
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "OtherSymptoms4"
* item[=].item[=].text = "Do you have sudden bouts of muscle weakness brought on by laughter or emotion?"
* item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "OtherSymptoms5"
* item[=].item[=].text = "If yes, please describe your symptoms"
* item[=].item[=].enableWhen.question = "OtherSymptoms4"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "OtherSymptoms7"
* item[=].item[=].text = "Do you have any other difficulties with sleep, like nightmares, acting out dreams, sleep walking?"
* item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "OtherSymptoms6"
* item[=].item[=].text = "If yes, please describe your symptoms"
* item[=].item[=].enableWhen.question = "OtherSymptoms7"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].type = #group
* item[=].linkId = "OtherSymptoms"
* item[=].text = "11. Other Symptoms"
* item[+].item.type = #text
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = $qic#text-box "Text Box"
* item[=].item.linkId = "listMeds"
* item[=].item.text = "List all medications"
* item[=].item.required = false
* item[=].type = #group
* item[=].linkId = "Medication"
* item[=].text = "12. Medications"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "SmokeHistory1"
* item[=].item[=].text = "Have you ever smoked"
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "SmokeHistory2"
* item[=].item[=].text = "Current smoker"
* item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "SmokeHistory3"
* item[=].item[=].text = "Years smoked"
* item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "SmokeHistory4"
* item[=].item[=].text = "Average per day"
* item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "SmokeHistory5"
* item[=].item[=].text = "Years Quit"
* item[=].item[=].required = false
* item[=].type = #group
* item[=].linkId = "SmokeHistory"
* item[=].text = "13. Smoke History"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "header"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId='epworth').item"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "sittingReadingScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='sittingandreading').answer.valueCoding.code.exists(), %header.where(linkId='sittingandreading').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "watchingTvScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='watchingTV').answer.valueCoding.code.exists(), %header.where(linkId='watchingTV').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "sittingInactiveScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='sittingactivity').answer.valueCoding.code.exists(), %header.where(linkId='sittingactivity').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "passengerCarBreakScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='incarforanhour').answer.valueCoding.code.exists(), %header.where(linkId='incarforanhour').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "restInTheAfternoonsScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='lyingdown').answer.valueCoding.code.exists(), %header.where(linkId='lyingdown').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "sittingWithSomeoneScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='sittingtalking').answer.valueCoding.code.exists(), %header.where(linkId='sittingtalking').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "sittingAndTalkingScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='sittingQuitely').answer.valueCoding.code.exists(), %header.where(linkId='sittingQuitely').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "trafficLightsScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='trafficlights').answer.valueCoding.code.exists(), %header.where(linkId='trafficlights').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "epworthTotal"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%sittingReadingScore + %watchingTvScore + %sittingInactiveScore + %passengerCarBreakScore + %restInTheAfternoonsScore + %sittingWithSomeoneScore + %sittingAndTalkingScore + %trafficLightsScore"