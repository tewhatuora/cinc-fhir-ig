Alias: $osas = https://fhir-ig.digital.health.nz/cs/osas

Instance: DHORespiratoryPhysiologyPaediatricOSASScreeningQuestionnaire
InstanceOf: Questionnaire
Usage: #definition

* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHORespiratoryPhysiologyPaediatricOSASScreeningQuestionnaire"
* version = "1.0"
* name = "DHORespiratoryPhysiologyPaediatricOSASScreeningQuestionnaire"
* title = " Respiratory Physiology Paediatric OSAS Screening Questionnaire"
* status = #active
* description = "A Respiratory Physiology Paediatric OSAS Screening Questionnaire."

// ================= PATIENT/CHILD/MINOR and CAREGIVER DETAILS =================

* item[0].type = #group
* item[=].linkId = "patientformcomplete"
* item[=].text = "Patient Details"

* item[=].item[0].type = #string
* item[=].item[=].linkId = "surname_11"
* item[=].item[=].text = "Surname"
* item[=].item[=].required = true

* item[=].item[+].type = #string
* item[=].item[=].linkId = "fullname_12"
* item[=].item[=].text = "Full Name"
* item[=].item[=].required = true

* item[=].item[+].type = #string
* item[=].item[=].linkId = "nhinumber_13"
* item[=].item[=].text = "NHI number"
* item[=].item[=].required = true

* item[=].item[+].type = #date
* item[=].item[=].linkId = "dob_14"
* item[=].item[=].text = "DOB"
* item[=].item[=].required = true

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sex_15"
* item[=].item[=].text = "Sex"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = #male "Male"
* item[=].item[=].answerOption[+].valueCoding = #female "Female"

* item[=].item[+].type = #string
* item[=].item[=].linkId = "caregivername"
* item[=].item[=].text = "Caregiver Name"
* item[=].item[=].required = true

// ================= ANSWER ON BEHALF OF CHILD=================

* item[+].type = #group
* item[=].linkId = "answeronbehalf"
* item[=].text = "Please answer on behalf of your child for the past month."

//==================CHILDS MEDICAL HISTORY =====================

* item[=].item[0].type = #group
* item[=].item[=].linkId = "options_31"
* item[=].item[=].text = "Does your child have any of the following:"

// Q1
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].linkId = "runnynose"
* item[=].item[=].item[=].text = "A constant blocked or runny nose?"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

// Q2
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].linkId = "chestinfections"
* item[=].item[=].item[=].text = "Recurrent chest infections/pneumonia?"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

// Q3
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].linkId = "airwaynrrowing"
* item[=].item[=].item[=].text = "An airway narrowing or abnormality?"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

// Q4
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].linkId = "syndromemajor"
* item[=].item[=].item[=].text = "A syndrome or other major health problem?"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

* item[=].item[=].item[=].item[0].type = #text
* item[=].item[=].item[=].item[=].linkId = "type_01"
* item[=].item[=].item[=].item[=].text = "Type"
* item[=].item[=].item[=].item[=].enableWhen[0].question = "syndromemajor"
* item[=].item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].item[=].enableWhen[=].answerCoding = $osas#yes "Yes"
* item[=].item[=].item[=].item[=].required = true

// Q5
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].linkId = "tonsils"
* item[=].item[=].item[=].text = "Does your child have large tonsils?"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

// Q6
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].linkId = "tonsilsremoved"
* item[=].item[=].item[=].text = "Has your child had their adenoids or tonsils removed?"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

// ================= WHILE SLEEPING SYMPTOMS=================

* item[+].type = #group
* item[=].linkId = "whilesleeping"
* item[=].text = "While sleeping, does your child"

* item[=].item[0].type = #choice
* item[=].item[=].linkId = "snore_22"
* item[=].item[=].text = "snore more than half the time?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "alwayssnore"
* item[=].item[=].text = "always snore?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "snoreloundly"
* item[=].item[=].text = "snore loudly?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "troublebreathing"
* item[=].item[=].text = "have trouble breathing, or struggle to breathe?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "loudbreathing"
* item[=].item[=].text = "have \"heavy\" or loud breathing?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "stopbreathingnight"
* item[=].item[=].text = "Have you ever seen your child stop breathing during the night?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

// ================= CURRENT HEALTH CONDITION OPTIONS QUESTIONS=================

* item[+].type = #group
* item[=].linkId = "followingoptions"
* item[=].text = "Does your child have the following"

* item[=].item[0].type = #choice
* item[=].item[=].linkId = "breathethroughmouth"
* item[=].item[=].text = "tend to breathe through the mouth during the day?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "wetthebed"
* item[=].item[=].text = "occasionally wet the bed?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "unrefreshedmorning"
* item[=].item[=].text = "wake up feeling unrefreshed in the morning?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sleepinessduringday"
* item[=].item[=].text = "have a problem with sleepiness during the day?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sleepyatnight"
* item[=].item[=].text = "Has a teacher commented that your child appears sleepy during the day?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "hardtowakeup"
* item[=].item[=].text = "Is it hard to wake your child up in the morning?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "headachesinthemorning"
* item[=].item[=].text = "Does your child wake up with headaches in the morning?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "stopgrowing"
* item[=].item[=].text = "Did your child stop growing at a normal rate at any time since birth?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "childoverweight"
* item[=].item[=].text = "Is your child overweight?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

// ================= BEHAVIORAL FOLLOWING OPTIONS QUESTIONS=================

* item[+].type = #group
* item[=].linkId = "childoftenhas"
* item[=].text = "My child often"

* item[=].item[0].type = #choice
* item[=].item[=].linkId = "listenissues"
* item[=].item[=].text = "does not seem to listen when spoken to directly."
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "difficultyinorganizing"
* item[=].item[=].text = "has difficulty organizing task and activities."
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "stimulieasily"
* item[=].item[=].text = "is easily distracted by extraneous stimuli."
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "squirmsseat"
* item[=].item[=].text = "fidgets with hands or feet or squirms in seat."
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "drivenbyamotor"
* item[=].item[=].text = "is 'on the go' or often acts as if 'driven by a motor'."
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "intrudesother"
* item[=].item[=].text = "interrupts or intrudes on others (e.g. butts into conversations or games)."
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $osas#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $osas#no "No"
* item[=].item[=].answerOption[+].valueCoding = $osas#unknown "Unknown"