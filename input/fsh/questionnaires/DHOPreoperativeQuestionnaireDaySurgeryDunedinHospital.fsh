Instance: DHOPreoperativeQuestionnaireDaySurgeryDunedinHospital
InstanceOf: Questionnaire
Usage: #definition

* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOPreoperativeQuestionnaireDaySurgeryDunedinHospital"
* version = "1.0"
* identifier.use = #official
* identifier.value = "DHOPreoperativeQuestionnaireDaySurgeryDunedinHospital"
* name = "DHOPreoperativeQuestionnaireDaySurgeryDunedinHospital"
* title = "Preoperative Questionnaire Day Surgery Dunedin Hospital"
* status = #active
* description = "Pre-operative assessment questionnaire for day surgery patients at Dunedin Hospital."
* purpose = "To collect pre-operative clinical and risk information prior to day surgery."

* item[0].item[0].type = #boolean
* item[=].item[=].linkId = "section1_01"
* item[=].item[=].text = "1. Have you ever had an operation and/or anaesthetic?"
* item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "section1_02"
* item[=].item[=].text = "If YES, please provide an overview and date"
* item[=].item[=].enableWhen.question = "section1_01"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "section1_03"
* item[=].item[=].text = "2. Have you or a close relative ever had problems with an anaesthetic?"
* item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "section1_04"
* item[=].item[=].text = "If YES, describe the problem"
* item[=].item[=].enableWhen.question = "section1_03"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "section1_05"
* item[=].item[=].text = "3. Are you allergic to any medications or other substances?"
* item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "section1_06"
* item[=].item[=].text = "If YES, please list"
* item[=].item[=].enableWhen.question = "section1_05"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "section1_07"
* item[=].item[=].text = "4. Are you taking or have you taken any medications in the last 6 months?"
* item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "section1_08"
* item[=].item[=].text = "If YES, please list all medications"
* item[=].item[=].enableWhen.question = "section1_07"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "section1_09"
* item[=].item[=].text = "5. Have you ever had MDRO? (Superbug infection)"
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "section1_10"
* item[=].item[=].text = "6. Have you worked or been a patient in a hospital in NZ or overseas in the last 6 months?"
* item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "section1_11"
* item[=].item[=].text = "If YES, state when and where"
* item[=].item[=].enableWhen.question = "section1_10"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "section1_12"
* item[=].item[=].text = "7. Do you have an artificial joint, heart valve or a pacemaker?"
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "section1_13"
* item[=].item[=].text = "8. Do you have dentures, partial plate, loose teeth?"
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "section1_14"
* item[=].item[=].text = "9. Do you smoke?"
* item[=].item[=].required = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "section1_15"
* item[=].item[=].text = "If YES, how many per day?"
* item[=].item[=].enableWhen.question = "section1_14"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "section1_16"
* item[=].item[=].text = "10. Are you suffering from or recovering from a cold, sore throat, flu or covid19?"
* item[=].item[=].required = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "section1_17"
* item[=].item[=].text = "11. Are you or could you be pregnant?"
* item[=].item[=].required = false
* item[=].type = #group
* item[=].linkId = "section1"
* item[=].text = "Section One"
* item[=].readOnly = false
* item[+].item[0].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].linkId = "section2_01"
* item[=].item[=].text = "1. Have you suffered from any of these symptoms or medical conditions?"
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding.display = "Heart condition"
* item[=].item[=].answerOption[+].valueCoding.display = "Chest pain/angina"
* item[=].item[=].answerOption[+].valueCoding.display = "High blood pressure"
* item[=].item[=].answerOption[+].valueCoding.display = "Ankle swelling"
* item[=].item[=].answerOption[+].valueCoding.display = "Abnormal shortness of breath"
* item[=].item[=].answerOption[+].valueCoding.display = "Blood clots in legs/lungs"
* item[=].item[=].answerOption[+].valueCoding.display = "Rheumatic fever"
* item[=].item[=].answerOption[+].valueCoding.display = "Persistent cough"
* item[=].item[=].answerOption[+].valueCoding.display = "Asthma"
* item[=].item[=].answerOption[+].valueCoding.display = "Other lung problems"
* item[=].item[=].answerOption[+].valueCoding.display = "Heartburn/reflux"
* item[=].item[=].answerOption[+].valueCoding.display = "Stomach ulcer"
* item[=].item[=].answerOption[+].valueCoding.display = "Bleeding disorders"
* item[=].item[=].answerOption[+].valueCoding.display = "Anaemia"
* item[=].item[=].answerOption[+].valueCoding.display = "Stroke/blackouts"
* item[=].item[=].answerOption[+].valueCoding.display = "Kidney disorders"
* item[=].item[=].answerOption[+].valueCoding.display = "Hepatitis/jaundice"
* item[=].item[=].answerOption[+].valueCoding.display = "Epilepsy/fits"
* item[=].item[=].answerOption[+].valueCoding.display = "Migraine"
* item[=].item[=].answerOption[+].valueCoding.display = "Diabetes type 1 / 2"
* item[=].item[=].answerOption[+].valueCoding.display = "Depression/nerves"
* item[=].item[=].answerOption[+].valueCoding.display = "Arthritis"
* item[=].item[=].answerOption[+].valueCoding.display = "Alcohol related problems"
* item[=].item[=].answerOption[+].valueCoding.display = "Motion sickness"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[+].type = #string
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#text-box "Text Box"
* item[=].item[=].linkId = "section2_02"
* item[=].item[=].text = "If you select other, please provide an explanation."
* item[=].item[=].enableWhen.question = "section2_01"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].linkId = "section2_03"
* item[=].item[=].text = "2. Mobility and balance"
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding.display = "Have you fallen in the past 12 months?"
* item[=].item[=].answerOption[+].valueCoding.display = "Do you use any aids to help you walk or get around? (e.g. walking stick, frame, wheelchair)"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].linkId = "section2_04"
* item[=].item[=].text = "3. Confidence and safety"
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding.display = "Do you ever feel unsteady when walking or standing?"
* item[=].item[=].answerOption[+].valueCoding.display = "Do you need help from another person to move around safely?"
* item[=].type = #group
* item[=].linkId = "section2"
* item[=].text = "Section Two"