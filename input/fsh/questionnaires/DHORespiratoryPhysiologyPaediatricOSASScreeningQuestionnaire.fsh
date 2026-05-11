Instance: DHORespiratoryPhysiologyPaediatricOSASScreeningQuestionnaire
InstanceOf: Questionnaire
Usage: #definition

* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHORespiratoryPhysiologyPaediatricOSASScreeningQuestionnaire"
* version = "1.0"
* identifier.use = #official
* identifier.value = "DHORespiratoryPhysiologyPaediatricOSASScreeningQuestionnaire"
* name = "DHORespiratoryPhysiologyPaediatricOSASScreeningQuestionnaire"
* title = "Respiratory Physiology Paediatric OSAS Screening Questionnaire"
* status = #active
* description = "A Respiratory Physiology Paediatric OSAS Screening Questionnaire."

// ================= PATIENT/CHILD/MINOR and CAREGIVER DETAILS =================


* item[0].type = #group
* item[=].linkId = "caregiverdetails"
* item[=].text = "Caregiver Details"
* item[=].item[0].type = #string
* item[=].item[=].linkId = "caregivername"
* item[=].item[=].text = "Caregiver Name"
* item[=].item[=].required = true
* item[=].item[+].type = #string
* item[=].item[=].linkId = "childrelationship"
* item[=].item[=].text = "Relationship to child"
* item[=].item[=].required = true


// ================= Milds Signs and Symptoms =================

* item[+].type = #group
* item[=].linkId = "answeronbehalf"
* item[=].text = "Please answer on behalf of your child for the past month."
* item[=].item[0].type = #group
* item[=].item[=].linkId = "options_31"
* item[=].item[=].text = "Does your child have any of the following:"

* item[=].item[=].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "runnynose"
* item[=].item[=].item[=].text = "A constant blocked or runny nose?"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "chestinfections"
* item[=].item[=].item[=].text = "Recurrent chest infections/pneumonia?"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "airwaynrrowing"
* item[=].item[=].item[=].text = "An airway narrowing or abnormality?"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "syndromemajor"
* item[=].item[=].item[=].text = "A syndrome or other major health problem?"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].item[=].linkId = "specifytype"
* item[=].item[=].item[=].item[=].text = "If Yes please specify Type"

* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "tonsils"
* item[=].item[=].item[=].text = "Does your child have large tonsils?"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "tonsilsremoved"
* item[=].item[=].item[=].text = "Has your child had their adenoids or tonsils removed?"
* item[=].item[=].item[=].required = true


// ================= Symptoms while sleeping=================

* item[+].type = #group
* item[=].linkId = "whilesleeping"
* item[=].text = "While sleeping, does your child"

* item[=].item[0].type = #boolean
* item[=].item[=].linkId = "snore_22"
* item[=].item[=].text = "snore more than half the time?"
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "alwayssnore"
* item[=].item[=].text = "always snore?"
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "snoreloundly"
* item[=].item[=].text = "snore loudly?"
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "troublebreathing"
* item[=].item[=].text = "have trouble breathing, or struggle to breathe?"
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "loudbreathing"
* item[=].item[=].text = "have \"heavy\" or loud breathing?"
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "stopbreathingnight"
* item[=].item[=].text = "Have you ever seen your child stop breathing during the night?"
* item[=].item[=].required = true

* item[+].type = #group
* item[=].linkId = "followingoptions"
* item[=].text = "Does your child have the following"

* item[=].item[0].type = #boolean
* item[=].item[=].linkId = "breathethroughmouth"
* item[=].item[=].text = "tend to breathe through the mouth during the day?"
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "wetthebed"
* item[=].item[=].text = "occasionally wet the bed?"
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "unrefreshedmorning"
* item[=].item[=].text = "wake up feeling unrefreshed in the morning?"
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "sleepinessduringday"
* item[=].item[=].text = "have a problem with sleepiness during the day?"
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "sleepyatnight"
* item[=].item[=].text = "Has a teacher commented that your child appears sleepy during the day?"
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "hardtowakeup"
* item[=].item[=].text = "Is it hard to wake your child up in the morning?"
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "headachesinthemorning"
* item[=].item[=].text = "Does your child wake up with headaches in the morning?"
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "stopgrowing"
* item[=].item[=].text = "Did your child stop growing at a normal rate at any time since birth?"
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "childoverweight"
* item[=].item[=].text = "Is your child overweight?"
* item[=].item[=].required = true

// ================= Behavioral Questions=================

* item[+].type = #group
* item[=].linkId = "childoftenhas"
* item[=].text = "My child often"

* item[=].item[0].type = #boolean
* item[=].item[=].linkId = "listenissues"
* item[=].item[=].text = "does not seem to listen when spoken to directly."
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "difficultyinorganizing"
* item[=].item[=].text = "has difficulty organizing task and activities."
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "stimulieasily"
* item[=].item[=].text = "is easily distracted by extraneous stimuli."
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "squirmsseat"
* item[=].item[=].text = "fidgets with hands or feet or squirms in seat."
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "drivenbyamotor"
* item[=].item[=].text = "is 'on the go' or often acts as if 'driven by a motor'."
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "intrudesother"
* item[=].item[=].text = "interrupts or intrudes on others (e.g. butts into conversations or games)."
* item[=].item[=].required = true