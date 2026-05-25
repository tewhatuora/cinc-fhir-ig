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

* item[0].item[0].type = #string
* item[=].item[=].linkId = "caregivername"
* item[=].item[=].text = "Caregiver Name"
* item[=].item[=].required = true
* item[=].item[+].type = #string
* item[=].item[=].linkId = "childrelationship"
* item[=].item[=].text = "Relationship to child"
* item[=].item[=].required = true
* item[=].type = #group
* item[=].linkId = "caregiverdetails"
* item[=].text = "Caregiver Details"
* item[+].item[0].item[0].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].item[=].linkId = "runnynose"
* item[=].item[=].item[=].text = "Select all that apply"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[0].valueCoding.display = "A constant blocked or runny nose?"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Recurrent chest infections/pneumonia?"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "An airway narrowing or abnormality?"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Does your child have large tonsils?"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Has your child had their adenoids or tonsils removed?"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "A syndrome or other major health problem?"
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].linkId = "specifytype"
* item[=].item[=].item[=].text = "Please specify the syndrome or major health problem"
* item[=].item[=].item[=].enableWhen.question = "runnynose"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.display = "A syndrome or other major health problem?"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].required = false
* item[=].item[=].type = #group
* item[=].item[=].linkId = "options_31"
* item[=].item[=].text = "1. Does your child have any of the following"
* item[=].item[+].item.type = #choice
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].item.linkId = "snore_22"
* item[=].item[=].item.text = "Select all that apply"
* item[=].item[=].item.required = false
* item[=].item[=].item.repeats = true
* item[=].item[=].item.answerOption[0].valueCoding.display = "Snore more than half the time?"
* item[=].item[=].item.answerOption[+].valueCoding.display = "Always snore?"
* item[=].item[=].item.answerOption[+].valueCoding.display = "Snore loudly?"
* item[=].item[=].item.answerOption[+].valueCoding.display = "Have trouble breathing, or struggle to breathe?"
* item[=].item[=].item.answerOption[+].valueCoding.display = "Have \"heavy\" or loud breathing?"
* item[=].item[=].item.answerOption[+].valueCoding.display = "Have you ever seen your child stop breathing during the night?"
* item[=].item[=].type = #group
* item[=].item[=].linkId = "whilesleeping"
* item[=].item[=].text = "2. While sleeping, does your child"
* item[=].item[+].item.type = #choice
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].item.linkId = "breathethroughmouth"
* item[=].item[=].item.text = "Select all that apply"
* item[=].item[=].item.required = false
* item[=].item[=].item.repeats = true
* item[=].item[=].item.answerOption[0].valueCoding.display = "Tend to breathe through the mouth during the day?"
* item[=].item[=].item.answerOption[+].valueCoding.display = "Have a dry mouth on waking up in the morning?"
* item[=].item[=].item.answerOption[+].valueCoding.display = "Occasionally wet the bed?"
* item[=].item[=].item.answerOption[+].valueCoding.display = "Wake up feeling unrefreshed in the morning?"
* item[=].item[=].item.answerOption[+].valueCoding.display = "Have a problem with sleepiness during the day?"
* item[=].item[=].item.answerOption[+].valueCoding.display = "Has a teacher commented that your child appears sleepy during the day?"
* item[=].item[=].item.answerOption[+].valueCoding.display = "Is it hard to wake your child up in the morning?"
* item[=].item[=].item.answerOption[+].valueCoding.display = "Does your child wake up with headaches in the morning?"
* item[=].item[=].item.answerOption[+].valueCoding.display = "Did your child stop growing at a normal rate at any time since birth?"
* item[=].item[=].item.answerOption[+].valueCoding.display = "Is your child overweight?"
* item[=].item[=].type = #group
* item[=].item[=].linkId = "followingoptions"
* item[=].item[=].text = "3. Does your child"
* item[=].item[+].item.type = #choice
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].item.linkId = "listenissues"
* item[=].item[=].item.text = "Select all that apply"
* item[=].item[=].item.required = false
* item[=].item[=].item.repeats = true
* item[=].item[=].item.answerOption[0].valueCoding.display = "Does not seem to listen when spoken to directly."
* item[=].item[=].item.answerOption[+].valueCoding.display = "Has difficulty organizing task and activities."
* item[=].item[=].item.answerOption[+].valueCoding.display = "Is easily distracted by extraneous stimuli."
* item[=].item[=].item.answerOption[+].valueCoding.display = "Fidgets with hands or feet or squirms in seat."
* item[=].item[=].item.answerOption[+].valueCoding.display = "Is 'on the go' or often acts as if 'driven by a motor'."
* item[=].item[=].item.answerOption[+].valueCoding.display = "Interrupts or intrudes on others (e.g. butts into conversations or games)."
* item[=].item[=].type = #group
* item[=].item[=].linkId = "childoftenhas"
* item[=].item[=].text = "4. My child often"
* item[=].item[=].required = false
* item[=].type = #group
* item[=].linkId = "answeronbehalf"
* item[=].text = "Please answer on behalf of your child for the past month."