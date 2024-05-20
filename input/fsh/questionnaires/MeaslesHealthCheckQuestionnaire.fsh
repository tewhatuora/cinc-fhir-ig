Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $sct = http://snomed.info/sct

Instance: MeaslesHealthCheckQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/MeaslesHealthCheckQuestionnaire"
* identifier.use = #official
* identifier.value = "MeaslesHealthCheckQuestionnaire"
* date = "2023-11-07"
* status = #draft
* experimental = false
* name = "MeaslesHealthCheckQuestionnaire"
* subjectType = #Patient
* publisher = "Te Whatu Ora"
* description = "Te Whatu Ora survey of Symptoms, Context and Quarantine informations surrounding Measles Patients"
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* useContext.valueCodeableConcept.text = "Measles Daily Health Check"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* purpose = "Survey of Symptoms, Context and Quarantine informations surrounding Measles Patients"
* code = $sct#293104008 "Measles"
* title = "Measles Daily Health Check"
* item[0].type = #string
* item[=].linkId = "p00-MetaSourceEnvironment"
* item[=].text = "Source environment"
* item[=].initial.valueString = "Placeholder"
* item[=].extension.valueBoolean = true
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[+].type = #display
* item[=].linkId = "p01-Introduction"
* item[=].prefix = "page 1 "
* item[=].text = "Please complete this health check form. If you feel very sick right now contact your doctor or Healthline on 0800 611 116 for medical help. If it is an emergency call 111 and tell them you have been in contact with someone with measles."
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "p02-q01-Symptoms"
* item[=].item[=].prefix = "page 2 question 1"
* item[=].item[=].text = "Do you currently have any measles symptoms? (required) For example: fever, red blotchy rash, cough, runny nose, sore red eyes."
* item[=].item[=].text.extension.valueString = "<p>Do you currently have any measles symptoms? (required)</p><p>For example: fever, red blotchy rash, cough, runny nose, sore red eyes.</p>"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item[=].required = true
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "p02-q01-1-Symptoms.Which"
* item[=].item[=].prefix = "page 2 question 1.1"
* item[=].item[=].text = "What symptoms do you currently have? (required)"
* item[=].item[=].enableWhen.question = "p02-q01-Symptoms"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding.display = "Fever "
* item[=].item[=].answerOption[+].valueCoding.display = "Red blotchy rash"
* item[=].item[=].answerOption[+].valueCoding.display = "Cough"
* item[=].item[=].answerOption[+].valueCoding.display = "Runny nose"
* item[=].item[=].answerOption[+].valueCoding.display = "Sore red eyes"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p02-q01-1-1-Symptoms.RashFever"
* item[=].item[=].prefix = "page 2 question 1.1.1"
* item[=].item[=].text = "Did you have a fever when you first noticed the rash? (required)"
* item[=].item[=].required = true
* item[=].item[=].enableWhen.question = "p02-q01-1-Symptoms.Which"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Red blotchy rash"
* item[=].item[=].enableBehavior = #all
* item[=].item[+].type = #date
* item[=].item[=].linkId = "p02-q01-1-2--Symptoms.RashWhen"
* item[=].item[=].prefix = "page 2 question 1.1.2"
* item[=].item[=].text = "When did the rash appear? (required)"
* item[=].item[=].enableWhen.question = "p02-q01-1-Symptoms.Which"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Red blotchy rash"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].enableBehavior = #all
* item[=].item[=].extension[0].valueDate = "2024"
* item[=].item[=].extension[=].valueDate.extension.valueExpression.expression = "today() - 30 days"
* item[=].item[=].extension[=].valueDate.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueDate.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[+].valueDate = "2040"
* item[=].item[=].extension[=].valueDate.extension.valueExpression.expression = "today()"
* item[=].item[=].extension[=].valueDate.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueDate.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p02-q01-1-3-4-Symptoms.RashWhereSpread"
* item[=].item[=].prefix = "page 2 question 1.1.3"
* item[=].item[=].text = "Where on your body did the rash start? If the rash has spread, provide details of where it has spread to? (required)"
* item[=].item[=].enableWhen.question = "p02-q01-1-Symptoms.Which"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Red blotchy rash"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p02-q01-1-5-Symptoms.Which.Other"
* item[=].item[=].prefix = "page 2 question 1.1.4"
* item[=].item[=].text = "Provide details of your other symptoms: (required)"
* item[=].item[=].enableWhen.question = "p02-q01-1-Symptoms.Which"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p02-q01-2-Symptoms.Worsened"
* item[=].item[=].prefix = "page 2 question 1.2"
* item[=].item[=].text = "Have any of your symptoms worsened since your last health check? (required)"
* item[=].item[=].enableWhen.question = "p02-q01-Symptoms"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p02-q01-2-1-Symptoms.Worsened.Details"
* item[=].item[=].prefix = "page 2 question 1.2.1"
* item[=].item[=].text = "What are the details of your worsening symptoms? (required)"
* item[=].item[=].enableWhen.question = "p02-q01-2-Symptoms.Worsened"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "p02"
* item[=].prefix = "page 2"
* item[=].text = "Symptoms"
* item[+].item.type = #choice
* item[=].item.linkId = "p03-q01-Contact"
* item[=].item.prefix = "page 3 question 1"
* item[=].item.text = "Do you know if you have had any contact with someone with measles since your last health check? (required)"
* item[=].item.required = true
* item[=].item.repeats = false
* item[=].item.answerOption[0].valueCoding.display = "Yes"
* item[=].item.answerOption[+].valueCoding.display = "No"
* item[=].item.answerOption[+].valueCoding.display = "I don't know"
* item[=].type = #group
* item[=].linkId = "p03"
* item[=].prefix = "page 3"
* item[=].text = "Health Context"
* item[+].item[0].type = #text
* item[=].item[=].linkId = "p04-q01-Visitors"
* item[=].item[=].prefix = "page 4 question 1"
* item[=].item[=].text = "We want to know if you've been around anyone who might not be immune to measles. Have you had any visitors or left where you're staying? (required)"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p04-q02-Quarantine"
* item[=].item[=].prefix = "page 4 question 2"
* item[=].item[=].text = "Do you need any help to continue to quarantine? (required)"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p04-q03-1-Quarantine.Help"
* item[=].item[=].prefix = "page 4 question 3"
* item[=].item[=].text = "Please tell us what help you need: (required)"
* item[=].item[=].enableWhen.question = "p04-q02-Quarantine"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "p04"
* item[=].prefix = "page 4"
* item[=].text = "Quarantine"
* item[+].item.type = #group
* item[=].item.linkId = "p05-Container"
* item[=].item.prefix = "page 5 container"
* item[=].item.item[0].type = #display
* item[=].item.item[=].linkId = "p05-Remember"
* item[=].item.item[=].prefix = "page 5 q01"
* item[=].item.item[=].text = "Remember, if you feel very sick right now contact your doctor or Healthline on 0800 611 116 for medical help. If it is an emergency call 111."
* item[=].item.item[=].text.extension.valueString = "<p><b>Remember, if you feel very sick right now contact your doctor or Healthline on 0800 611 116 for medical help. If it is an emergency call 111.</b></p>"
* item[=].item.item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[+].type = #display
* item[=].item.item[=].linkId = "p05-Healthline"
* item[=].item.item[=].prefix = "page 5 q02"
* item[=].item.item[=].text = "Healthline is available 24 hours a day, 7 days a week if you need them. If you need to see your GP or doctor in person, always call before leaving your home to tell them you have been in contact with measles."
* item[=].item.item[+].type = #display
* item[=].item.item[=].linkId = "p05-Close"
* item[=].item.item[=].prefix = "page 5 q03"
* item[=].item.item[=].text = "You may now close this page."
* item[=].type = #group
* item[=].text = "Thank you for completing the daily heath check."
* item[=].linkId = "p05"
* item[=].prefix = "page 5"
* item[=].extension.valueCodeableConcept.coding.code = #post-submit
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"