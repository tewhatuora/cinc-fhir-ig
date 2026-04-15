Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

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
* contained[0] = epworth-sleep-scale
* contained[+] = general-scale
* contained[+] = boolen-choice
* item[0].type = #display
* item[=].linkId = "intro"
* item[=].text = "Epworth Scale"
* item[+].item[0].type = #string
* item[=].item[=].linkId = "name"
* item[=].item[=].text = "Name"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "address"
* item[=].item[=].text = "Address"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "nhi"
* item[=].item[=].text = "NHI"
* item[=].item[+].type = #date
* item[=].item[=].linkId = "dob"
* item[=].item[=].text = "Date Completed"
* item[=].type = #group
* item[=].linkId = "patient-details"
* item[=].text = "Patient Details"
* item[+].item[0].type = #decimal
* item[=].item[=].linkId = "weight"
* item[=].item[=].text = "Weight (kg)"
* item[=].item[+].type = #decimal
* item[=].item[=].linkId = "height"
* item[=].item[=].text = "Height (cm)"
* item[=].item[+].type = #decimal
* item[=].item[=].linkId = "neck"
* item[=].item[=].text = "Neck circumference (cm) - Please use tape measure provided  "
* item[=].item[+].type = #string
* item[=].item[=].linkId = "dentures"
* item[=].item[=].text = "Do you have dentures? (full or partial) "
* item[=].type = #group
* item[=].linkId = "measurements"
* item[=].text = "Measurements"
* item[+].item[0].type = #open-choice
* item[=].item[=].linkId = "snoring"
* item[=].item[=].text = "According to what others have told you, how often do you think you snore? "
* item[=].item[=].answerValueSet = "#general-scale"
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
* item[=].type = #group
* item[=].linkId = "sleep-apnoea"
* item[=].text = "Sleep Apnoea"
* item[+].item[0].type = #choice
* item[=].item[=].linkId = "refreshed"
* item[=].item[=].text = "Do you wake feeling refreshed?"
* item[=].item[=].answerValueSet = "#general-scale"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sleepy"
* item[=].item[=].text = "How often do you feel sleepy and want to fall asleep in the daytime? "
* item[=].item[=].answerValueSet = "#general-scale"
* item[=].type = #group
* item[=].linkId = "daytime"
* item[=].text = "Sleepiness during the Day "
* item[+].item[0].type = #display
* item[=].item[=].linkId = "fallasleep"
* item[=].item[=].text = "How likely are you to doze off or fall asleep in the following situations - in contrast to feeling tired. This    refers to your usual way of life in recent times. Even if you have not done some of these things    recently, try to work out how they would have affected you.  "
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sittingandreading"
* item[=].item[=].text = "Sitting & Reading"
* item[=].item[=].answerValueSet = "#epworth-sleep-scale"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "reading"
* item[=].item[=].text = "Watching TV"
* item[=].item[=].answerValueSet = "#epworth-sleep-scale"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sittingactivity"
* item[=].item[=].text = "Sitting inactive in a public place (theatre, meeting, etc)"
* item[=].item[=].answerValueSet = "#epworth-sleep-scale"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "incarforanhour"
* item[=].item[=].text = " A passenger in a car for one hour"
* item[=].item[=].answerValueSet = "#epworth-sleep-scale"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "lyingdown"
* item[=].item[=].text = "Lying down in the afternoon (if circumstances permit)"
* item[=].item[=].answerValueSet = "#epworth-sleep-scale"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sittingtalking"
* item[=].item[=].text = "Sitting talking to someone"
* item[=].item[=].answerValueSet = "#epworth-sleep-scale"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "trafficlights"
* item[=].item[=].text = "In a car whilst stopped in traffic or traffic lights"
* item[=].item[=].answerValueSet = "#epworth-sleep-scale"
* item[=].type = #group
* item[=].linkId = "epworth"
* item[=].text = "Epworth Sleepiness Score"
* item[+].item[0].type = #boolean
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
* item[=].item[=].text = "Heart disease (heart failure, heart attack, angina, arrhythmia e.g. atrial fibrillation, stent or bypass?)   "
* item[=].item[+].item.type = #boolean
* item[=].item[=].item.linkId = "controldifficulty"
* item[=].item[=].item.text = "If yes, is difficult to control?"
* item[=].item[=].item.enableWhen.question = "bp"
* item[=].item[=].item.enableWhen.operator = #=
* item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item.enableBehavior = #all
* item[=].item[=].type = #boolean
* item[=].item[=].linkId = "bp"
* item[=].item[=].text = "High blood pressure"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "stroke"
* item[=].item[=].text = "Previous stroke or TIA ‘mini-stroke’?"
* item[=].item[+].item.type = #boolean
* item[=].item[=].item.linkId = "yescontroldifficulty"
* item[=].item[=].item.text = "If yes, is it difficult to control?"
* item[=].item[=].item.enableWhen.question = "diabetes"
* item[=].item[=].item.enableWhen.operator = #=
* item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item.enableBehavior = #any
* item[=].item[=].type = #boolean
* item[=].item[=].linkId = "diabetes"
* item[=].item[=].text = "Diabetes"
* item[=].item[+].item.type = #boolean
* item[=].item[=].item.linkId = "depression_11"
* item[=].item[=].item.text = "If yes, is it difficult to control?"
* item[=].item[=].item.enableWhen.question = "depression"
* item[=].item[=].item.enableWhen.operator = #=
* item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item.enableBehavior = #any
* item[=].item[=].type = #boolean
* item[=].item[=].linkId = "depression"
* item[=].item[=].text = "Depression"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "asthma"
* item[=].item[=].text = "Asthma/COPD"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "neuro"
* item[=].item[=].text = "Neuromuscular disease"
* item[=].item[+].item.type = #string
* item[=].item[=].item.linkId = "neurodisease"
* item[=].item[=].item.text = "If yes, is it difficult to control?"
* item[=].item[=].item.enableWhen.question = "epilepsy"
* item[=].item[=].item.enableWhen.operator = #=
* item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item.enableBehavior = #any
* item[=].item[=].type = #boolean
* item[=].item[=].linkId = "epilepsy"
* item[=].item[=].text = "Epilepsy"
* item[=].type = #group
* item[=].linkId = "medical"
* item[=].text = "Medical History"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "breath"
* item[=].item[=].text = "Do you get short of breath during your daily activities?"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "occupation"
* item[=].item[=].text = "What is your Occupation?"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "job-risk"
* item[=].item[=].text = "Has your job been at risk due to sleepiness or loss or concentration?"
* item[=].item[+].item[0].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item[=].linkId = "licenseclass"
* item[=].item[=].item[=].text = "What is your vehicle licence class?"
* item[=].item[=].item[=].enableWhen.question = "doze-driving"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].answerOption[0].valueCoding.display = "Class 1 (motorcar)"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Class 2"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Class 3"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Class 4"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Class 5"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Class 6 (Motorcycle)"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item[=].linkId = "licenseendorsement"
* item[=].item[=].item[=].text = "What is your vehicle licence endorsement?"
* item[=].item[=].item[=].enableWhen.question = "doze-driving"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].answerOption[0].valueCoding.display = "P"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "V"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "D"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "F"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "R"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "T"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "W"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "I"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "O"
* item[=].item[=].type = #boolean
* item[=].item[=].linkId = "doze-driving"
* item[=].item[=].text = "Do you have a vehicle licence?"
* item[=].type = #group
* item[=].linkId = "lifestyle"
* item[=].text = "Lifestyle"
* item[+].item.item.type = #text
* item[=].item.item.linkId = "sleeptime"
* item[=].item.item.text = "If yes, please describe your symptoms: "
* item[=].item.item.enableWhen.question = "sleep-time"
* item[=].item.item.enableWhen.operator = #=
* item[=].item.item.enableWhen.answerBoolean = true
* item[=].item.item.enableBehavior = #any
* item[=].item.type = #boolean
* item[=].item.linkId = "sleep-time"
* item[=].item.text = "When you try to relax in the evening or sleep at night, do you ever have unpleasant,   restless feelings in your legs that can be relieved by walkin"
* item[=].type = #group
* item[=].linkId = "sleep-pattern"
* item[=].text = "Restless Legs"
* item[+].item[0].type = #time
* item[=].item[=].linkId = "wake-time"
* item[=].item[=].text = "What time do you go to sleep at night?"
* item[=].item[+].type = #time
* item[=].item[=].linkId = "shift"
* item[=].item[=].text = "What time do you get up in the morning?"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "shiftwork"
* item[=].item[=].text = "Do you do shift work?"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "usualhourswork"
* item[=].item[=].text = "Please describe your usual hours of work   "
* item[=].type = #group
* item[=].linkId = "sleephours"
* item[=].text = "Hours of Sleep "
* item[+].item[0].type = #string
* item[=].item[=].linkId = "takelongtosleep"
* item[=].item[=].text = "How long does it take you to get to sleep?"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "wakeupatnight"
* item[=].item[=].text = "How many times do you usually wake up during the night? "
* item[=].item[+].type = #string
* item[=].item[=].linkId = "backtosleep"
* item[=].item[=].text = "When you wake up, how long does it usually take you to get back to sleep?   "
* item[=].item[+].type = #string
* item[=].item[=].linkId = "disturbsyoursleep"
* item[=].item[=].text = "Do you have pain that disturbs your sleep?   "
* item[=].type = #string
* item[=].linkId = "medications"
* item[=].text = "Difficulty Sleeping  "
* item[=].repeats = true
* item[+].item[0].item.type = #text
* item[=].item[=].item.linkId = "hallucinations02"
* item[=].item[=].item.text = "If yes, please describe your symptoms:"
* item[=].item[=].item.enableWhen.question = "hallucinations01"
* item[=].item[=].item.enableWhen.operator = #=
* item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item.enableBehavior = #any
* item[=].item[=].type = #boolean
* item[=].item[=].linkId = "hallucinations01"
* item[=].item[=].text = "Do you have hallucinations (you see, feel or hear things that aren’t there) while falling asleep or waking up?"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "cannotmove"
* item[=].item[=].text = "Do you ever feel you can’t move or talk at all for 1 to 2 minutes after you wake up?  "
* item[=].item[+].item.type = #string
* item[=].item[=].item.linkId = "laughter02"
* item[=].item[=].item.text = "If yes, please describe your symptoms: "
* item[=].item[=].item.enableWhen.question = "laughter01"
* item[=].item[=].item.enableWhen.operator = #=
* item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item.enableBehavior = #any
* item[=].item[=].type = #boolean
* item[=].item[=].linkId = "laughter01"
* item[=].item[=].text = "Do you have sudden bouts of muscle weakness brought on by laughter or emotion?  "
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "sleepdifficulty01"
* item[=].item[=].text = "Do you have any other difficulties with sleep, like nightmares, acting out dreams, sleepwalking?"
* item[=].item[=].item.type = #text
* item[=].item[=].item.linkId = "sleepdifficulty02"
* item[=].item[=].item.text = "If yes, please describe your symptoms: "
* item[=].item[=].item.enableWhen.question = "sleepdifficulty01"
* item[=].item[=].item.enableWhen.operator = #=
* item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item.enableBehavior = #any
* item[=].type = #string
* item[=].linkId = "othersymptoms"
* item[=].text = "Other Symptoms"

Instance: epworth-sleep-scale
InstanceOf: ValueSet
Usage: #inline
* status = #draft
* date = "2026-04-14T02:03:51.418Z"
* expansion.timestamp = "2026-04-14T02:03:49.587Z"
* expansion.contains[0].code = #0
* expansion.contains[=].display = "0 -- NEVER doze"
* expansion.contains[+].code = #1
* expansion.contains[=].display = "1 -- SLIGHT chance of dozing  "
* expansion.contains[+].code = #2
* expansion.contains[=].display = "2.-- MODERATE chance of dozing  "
* expansion.contains[+].code = #3
* expansion.contains[=].display = "3 -- HIGH chance of dozing  "

Instance: general-scale
InstanceOf: ValueSet
Usage: #inline
* status = #draft
* date = "2026-04-14T02:08:31.235Z"
* expansion.timestamp = "2026-04-14T02:08:29.128Z"
* expansion.contains[0].code = #4
* expansion.contains[=].display = "Always"
* expansion.contains[+].code = #3
* expansion.contains[=].display = "Often"
* expansion.contains[+].code = #2
* expansion.contains[=].display = "Sometimes"
* expansion.contains[+].code = #1
* expansion.contains[=].display = "Rarely"
* expansion.contains[+].code = #0
* expansion.contains[=].display = "Never"

Instance: boolen-choice
InstanceOf: ValueSet
Usage: #inline
* status = #draft
* date = "2026-04-14T02:10:27.587Z"
* expansion.timestamp = "2026-04-14T02:10:26.293Z"
* expansion.contains[0].display = "Yes"
* expansion.contains[+].display = "No"