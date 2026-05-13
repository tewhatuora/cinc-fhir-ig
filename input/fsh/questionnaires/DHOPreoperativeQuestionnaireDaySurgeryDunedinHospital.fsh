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

* item.type = #group
* item.linkId = "sectioone_01"
* item.text = "Section One"
* item.readOnly = false

* item.item[0].type = #boolean
* item.item[=].linkId = "operation_10"
* item.item[=].text = "Have you ever had an operation and/or anaesthetic?"
* item.item[=].repeats = false
* item.item[+].type = #string
* item.item[=].linkId = "problemdescribe"
* item.item[=].text = "If YES, please provide an overview and date:"
* item.item[=].enableWhen.question = "operation_10"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerBoolean = true
* item.item[=].enableBehavior = #any
* item.item[=].repeats = false
* item.item[+].type = #boolean
* item.item[=].linkId = "closerelative"
* item.item[=].text = "Have you or a close relative ever had problems with an anaesthetic?"
* item.item[=].repeats = false
* item.item[+].type = #string
* item.item[=].linkId = "anaestheticproblemdescribe"
* item.item[=].text = "If YES, describe the problem:"
* item.item[=].enableWhen.question = "closerelative"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerBoolean = true
* item.item[=].enableBehavior = #any
* item.item[=].repeats = false
* item.item[+].type = #boolean
* item.item[=].linkId = "medicationsallergy"
* item.item[=].text = "Are you allergic to any medications or other substances?"
* item.item[=].repeats = false
* item.item[+].type = #string
* item.item[=].linkId = "answerallergy"
* item.item[=].text = "If YES, please list:"
* item.item[=].enableWhen.question = "medicationsallergy"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerBoolean = true
* item.item[=].enableBehavior = #all
* item.item[=].repeats = false
* item.item[+].type = #boolean
* item.item[=].linkId = "anymedications"
* item.item[=].text = "Are you taking or have you taken any medications in the last 6 months?"
* item.item[=].repeats = false
* item.item[+].type = #string
* item.item[=].linkId = "allmedications"
* item.item[=].text = "If YES, please list all medications:"
* item.item[=].enableWhen.question = "anymedications"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerBoolean = true
* item.item[=].enableBehavior = #all
* item.item[=].repeats = false
* item.item[+].type = #boolean
* item.item[=].linkId = "hadmdro"
* item.item[=].text = "Have you ever had MDRO? (Superbug infection)"
* item.item[=].repeats = false
* item.item[+].type = #boolean
* item.item[=].linkId = "workedorpatient"
* item.item[=].text = "Have you worked or been a patient in a hospital in NZ or overseas in the last 6 months?"
* item.item[=].repeats = false
* item.item[+].type = #string
* item.item[=].linkId = "answerwhen"
* item.item[=].text = "If YES, state when and where:"
* item.item[=].enableWhen.question = "workedorpatient"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerBoolean = true
* item.item[=].enableBehavior = #all
* item.item[=].repeats = false
* item.item[+].type = #boolean
* item.item[=].linkId = "artificialjoint"
* item.item[=].text = "Do you have an artificial joint, heart valve or a pacemaker?"
* item.item[=].repeats = false
* item.item[+].type = #boolean
* item.item[=].linkId = "looseteeth"
* item.item[=].text = "Do you have dentures, partial plate, loose teeth?"
* item.item[=].repeats = false
* item.item[+].type = #boolean
* item.item[=].linkId = "smoke"
* item.item[=].text = "Do you smoke?"
* item.item[=].repeats = false
* item.item[+].type = #string
* item.item[=].linkId = "howmanysmoke"
* item.item[=].text = "If YES, how many per day?"
* item.item[=].enableWhen.question = "smoke"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerBoolean = true
* item.item[=].enableBehavior = #all
* item.item[=].repeats = false
* item.item[+].type = #boolean
* item.item[=].linkId = "sufferingcold"
* item.item[=].text = "Are you suffering from or recovering from a cold, sore throat, flu or covid19?"
* item.item[=].repeats = false
* item.item[+].type = #boolean
* item.item[=].linkId = "pregnant"
* item.item[=].text = "Are you or could you be pregnant?"
* item.item[=].repeats = false