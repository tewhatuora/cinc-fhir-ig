Alias: $sct = http://snomed.info/sct
Alias: $unitsofmeasure = http://unitsofmeasure.org
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

Instance: PregnancyAssessmentSurveyQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
* item[0].item[0].type = #choice
* item[=].item[=].linkId = "p01-q01-PregnancyStatus"
* item[=].item[=].prefix = "page 1 question 1"
* item[=].item[=].text = "Are you currently pregnant or postpartum?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding.display = "Pregnant"
* item[=].item[=].answerOption[+].valueCoding.display = "Postpartum"
* item[=].item[+].type = #integer
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].extension[=].valueCoding = #Weeks "Weeks"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueInteger = 40
* item[=].item[=].linkId = "p01-q01-1-PregnancyStatus.Gestation"
* item[=].item[=].prefix = "page 1 question 1.1"
* item[=].item[=].text = "Gestation"
* item[=].item[=].enableWhen.question = "p01-q01-PregnancyStatus"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Pregnant"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "p01-q01-2-PregnancyStatus.DeliveryDate"
* item[=].item[=].prefix = "page 1 question 1.2"
* item[=].item[=].text = "Expected Delivery Date (EDD)"
* item[=].item[=].enableWhen.question = "p01-q01-PregnancyStatus"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Pregnant"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #integer
* item[=].item[=].linkId = "p01-q01-3-PregnancyStatus.Postpartum"
* item[=].item[=].prefix = "page 1 question 1.3"
* item[=].item[=].text = "Postpartum"
* item[=].item[=].enableWhen.question = "p01-q01-PregnancyStatus"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Postpartum"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #integer
* item[=].item[=].linkId = "p01-q02-Parity"
* item[=].item[=].code = $sct#364325004 "Parity"
* item[=].item[=].prefix = "page 1 question 2"
* item[=].item[=].text = "Para"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].item.text = "How many live births of viable gestation has the patient had?"
* item[=].item[=].item.type = #display
* item[=].item[=].item.linkId = "p01-q02-Partiy.HelpText"
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[+].type = #integer
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].linkId = "p01-q03-Gravida"
* item[=].item[=].code = $sct#161732006 "Gravida"
* item[=].item[=].prefix = "page 1 question 3"
* item[=].item[=].text = "Gravida"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "p01"
* item[=].prefix = "page 1"
* item[=].text = "Pregnancy Context"
* item[+].item[0].type = #text
* item[=].item[=].linkId = "p02-q01-MidwifeName"
* item[=].item[=].prefix = "page 2 question 1"
* item[=].item[=].text = "Midwife Name"
* item[=].item[=].required = true
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p02-q02-MidwifeContact"
* item[=].item[=].prefix = "page 2 question 2"
* item[=].item[=].text = "Midwife Contact"
* item[=].item[=].required = true
* item[=].type = #group
* item[=].linkId = "p01"
* item[=].prefix = "page 2"
* item[=].text = "Midwife Information"
* item[+].item[0].type = #text
* item[=].item[=].linkId = "p03-q01-Ultrasound"
* item[=].item[=].code = $sct#370380004
* item[=].item[=].prefix = "page 3 question 1"
* item[=].item[=].text = "Ultrasound Findings"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p03-q02-BloodTest"
* item[=].item[=].code = $sct#106200001
* item[=].item[=].prefix = "page 3 question 2"
* item[=].item[=].text = "Blood Tests"
* item[=].type = #group
* item[=].linkId = "p03"
* item[=].prefix = "page 3"
* item[=].text = "Findings"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "p04-q01-CurrentComplications"
* item[=].item[=].prefix = "page 4 question 1"
* item[=].item[=].text = "Any current pregnancy complications?"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p04-q01-1-CurrentComplications.Details"
* item[=].item[=].prefix = "page 4 question 1.1"
* item[=].item[=].text = "Please explain your pregnancy complications"
* item[=].item[=].enableWhen.question = "p04-q01-p04-q01-CurrentComplications"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p04-q02-ComplicationsPrevious"
* item[=].item[=].prefix = "page 4 question 2"
* item[=].item[=].text = "Any previous pregnancy complications?"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p04-q02-1-ComplicationsPrevious.Details"
* item[=].item[=].prefix = "page 4 question 2.1"
* item[=].item[=].text = "Please explain any complications from previous pregnancies"
* item[=].item[=].enableWhen.question = "p04-q02-ComplicationsPrevious"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p04-q03-PreEclampsia"
* item[=].item[=].code = $sct#398254007 "Pre-eclampsia"
* item[=].item[=].prefix = "page 4 question 3"
* item[=].item[=].text = "Any signs of pre-eclampsia?"
* item[=].item[=].item.text = "Headache, Epigastric pain, flashing lights."
* item[=].item[=].item.type = #display
* item[=].item[=].item.linkId = "p04-q03-p04-q03-PreEclampsia.HelpText"
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p04-q03-1-PreEclampsia.Details"
* item[=].item[=].prefix = "page 4 question 3.1"
* item[=].item[=].text = "Please explain any symptoms suggestive of pre-eclampsia?"
* item[=].item[=].enableWhen.question = "p04-q03-PreEclampsia"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].item.text = "lateral swelling, redness or calf-tenderness"
* item[=].item[=].item.type = #display
* item[=].item[=].item.linkId = "p04-q04-DVT.HelpText"
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[=].type = #boolean
* item[=].item[=].linkId = "p04-q04-DVT"
* item[=].item[=].code = $sct#128053003 "Deep venous thrombosis"
* item[=].item[=].prefix = "page 4 question 4"
* item[=].item[=].text = "Any signs suggestive of a DVT?"
* item[=].item[=].required = true
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p04-q04-1-DVT.Details"
* item[=].item[=].prefix = "page 4 question 4.1"
* item[=].item[=].text = "Please explain any symptoms suggestive of a DVT"
* item[=].item[=].enableWhen.question = "p04-q04-DVT"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p04-q05-Dysuria"
* item[=].item[=].code = $sct#49650001 "Dysuria"
* item[=].item[=].prefix = "page 4 question 5"
* item[=].item[=].text = "Any signs of Dysuria?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p04-q05-1-Dysuria.Details"
* item[=].item[=].prefix = "page 4 question 5.1"
* item[=].item[=].text = "Please explain any details of your Dysuria"
* item[=].item[=].enableWhen.question = "p04-q05-Dysuria"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p04-q06-VaginalDischarge"
* item[=].item[=].code = $sct#271939006 "Vaginal discharge"
* item[=].item[=].prefix = "page 4 question 6"
* item[=].item[=].text = "Vaginal Discharge?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].initial.valueBoolean = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p04-q06-1-VaginalDischarge.Details"
* item[=].item[=].prefix = "page 4 question 6.1"
* item[=].item[=].text = "Please explain any details."
* item[=].item[=].enableWhen.question = "p04-q06-VaginalDischarge"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "p04"
* item[=].prefix = "page 4"
* item[=].text = "Complications and Symptoms"
* item[+].item.type = #text
* item[=].item.linkId = "p05-q01-ObstetricianNotes"
* item[=].item.prefix = "page 5 question 1"
* item[=].item.text = "Obstetrician Details and Discussion, including any potential clexane requirement?"
* item[=].type = #group
* item[=].linkId = "p05"
* item[=].prefix = "page 5"
* item[=].text = "Obstetrician Notes"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "p06-q01-FetalMovement"
* item[=].item[=].code = $sct#289431008 "Fetal movements present"
* item[=].item[=].prefix = "page 6 question 1"
* item[=].item[=].text = "Any baby movement felt?"
* item[=].item[=].required = true
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p06-q01-1-FetalMovement.Details"
* item[=].item[=].prefix = "page 6 question 1.1"
* item[=].item[=].text = "Any details surrounding the baby movement?"
* item[=].item[=].enableWhen.question = "p06-q01-FetalMovement"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p06-q02-VaginalBleeding"
* item[=].item[=].code = $sct#289530006 "Vaginal bleeding"
* item[=].item[=].prefix = "page 6 question 2"
* item[=].item[=].text = "Any vaginal bleeding?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "p06-q02-1-VaginalBleeding.Details"
* item[=].item[=].prefix = "page 6 question 2.1"
* item[=].item[=].text = "Any details surrounding vaginal bleeding?"
* item[=].item[=].enableWhen.question = "p06-q02-VaginalBleeding"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].type = #group
* item[=].linkId = "p06"
* item[=].prefix = "page 6"
* item[=].text = "Post 23 Week Information"
* item[=].enableWhen.question = "p01-q01-1"
* item[=].enableWhen.operator = #>=
* item[=].enableWhen.answerInteger = 23
* item[=].enableBehavior = #all
* item[+].item[0].type = #string
* item[=].item[=].linkId = "p07-q01-PracticeName"
* item[=].item[=].prefix = "page 7 question 1"
* item[=].item[=].text = "GP Practice Name"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "p07-q02-PracticeEDI"
* item[=].item[=].prefix = "page 7 question 2"
* item[=].item[=].text = "Practice EDI"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p07-q03-GPSend"
* item[=].item[=].prefix = "page 7 question 3"
* item[=].item[=].text = "Send note to GP Inbox?"
* item[=].item[=].required = true
* item[=].type = #group
* item[=].linkId = "p07"
* item[=].prefix = "page 7"
* item[=].text = "General Practice Information"
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/PregnancyAssessmentSurvey"
* title = "Pregnancy Assessment Survey"
* status = #draft
* description = "Te Whatu Ora pregnancy assessment survey."