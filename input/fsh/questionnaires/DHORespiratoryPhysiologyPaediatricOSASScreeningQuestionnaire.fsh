Instance: DHORespiratoryPhysiologyPaediatricOSASScreeningQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHORespiratoryPhysiologyPaediatricOSASScreeningQuestionnaire"
* version = "1.0"
* name = "DHORespiratoryPhysiologyPaediatricOSASScreeningQuestionnaire"
* title = " Respiratory Physiology Paediatric OSAS Screening Questionnaire"
* status = #active
* description = "A Respiratory Physiology Paediatric OSAS Screening Questionnaire."
* item[0].type = #display
* item[=].linkId = "patientformcomplete"
* item[=].text = "Please ensure patient details are completed here"
* item[+].type = #string
* item[=].linkId = "surname_11"
* item[=].text = "Surname"
* item[=].required = true
* item[+].type = #string
* item[=].linkId = "fullname_12"
* item[=].text = "Full Name"
* item[=].required = true
* item[+].type = #string
* item[=].linkId = "nhinumber_13"
* item[=].text = "NHI number"
* item[=].required = true
* item[+].type = #date
* item[=].linkId = "dob_14"
* item[=].text = "DOB"
* item[=].required = true
* item[+].type = #choice
* item[=].linkId = "sex_15"
* item[=].text = "Sex"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #male "Male"
* item[=].answerOption[+].valueCoding = #female "Female"
* item[+].type = #string
* item[=].linkId = "caregivername"
* item[=].text = "Caregiver Name"
* item[=].required = true
* item[+].type = #date
* item[=].linkId = "date_31"
* item[=].text = "Date"
* item[=].required = true
* item[+].type = #display
* item[=].linkId = "answeronbehalf"
* item[=].text = "Please answer on behalf of your child for the past month."
* item[+].type = #display
* item[=].linkId = "options_31"
* item[=].text = "Does your child have any of the following:"
* item[+].type = #choice
* item[=].linkId = "runnynose"
* item[=].text = "A constant blocked or runny nose?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "chestinfections"
* item[=].text = "Recurrent chest infections/pneumonia?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "airwaynrrowing"
* item[=].text = "An airway narrowing or abnormality?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "syndromemajor"
* item[=].text = "A syndrome or other major health problem?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #string
* item[=].linkId = "type_01"
* item[=].text = "Type"
* item[=].required = true
* item[+].type = #choice
* item[=].linkId = "tonsils"
* item[=].text = "Does your child have large tonsils?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "tonsilsremoved"
* item[=].text = "Has your child had their adenoids or tonsils removed?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #display
* item[=].linkId = "whilesleeping"
* item[=].text = "While sleeping, does your child"
* item[+].type = #choice
* item[=].linkId = "snore_22"
* item[=].text = "snore more than half the time?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "alwayssnore"
* item[=].text = "always snore?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "snoreloundly"
* item[=].text = "snore loudly?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "troublebreathing"
* item[=].text = "have trouble breathing, or struggle to breathe?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "loudbreathing"
* item[=].text = "have \"heavy\" or loud breathing?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "stopbreathingnight"
* item[=].text = "Have you ever seen your child stop breathing during the night?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #display
* item[=].linkId = "followingoptions"
* item[=].text = "Does your child has the following"
* item[+].type = #choice
* item[=].linkId = "breathethroughmouth"
* item[=].text = "tend to breathe through the mouth during the day?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "wetthebed"
* item[=].text = "occasionally wet the bed?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "unrefreshedmorning"
* item[=].text = "wake up feeling unrefreshed in the morning?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "sleepinessduringday"
* item[=].text = "have a problem with sleepiness during the day?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "sleepyatnight"
* item[=].text = "Has a teacher commented that your child appears sleepy during the day?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "hardtowakeup"
* item[=].text = "Is it hard to wake your child up in the morning?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "headachesinthemorning"
* item[=].text = "Does your child wake up with headaches in the morning?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "stopgrowing"
* item[=].text = "Did your child stop growing at a normal rate at any time since birth?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "childoverweight"
* item[=].text = "Is your child overweight?"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #display
* item[=].linkId = "childoftenhas"
* item[=].text = "My child often ."
* item[+].type = #choice
* item[=].linkId = "listenissues"
* item[=].text = "does not seem to listen when spoken to directly."
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "difficultyinorganizing"
* item[=].text = "has difficulty organizing task and activities."
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "stimulieasily"
* item[=].text = "is easily distracted by extraneous stimuli."
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "squirmsseat"
* item[=].text = "fidgets with hands or feet or squirms in seat."
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "drivenbyamotor"
* item[=].text = "is 'on the go' or often acts as if 'driven by a motor'."
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"
* item[+].type = #choice
* item[=].linkId = "intrudesother"
* item[=].text = "interrupts or intrudes on others (e.g. butts into conversations or games)."
* item[=].required = true
* item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].answerOption[+].valueCoding = #no "No"
* item[=].answerOption[+].valueCoding = #unknown "Unknown"