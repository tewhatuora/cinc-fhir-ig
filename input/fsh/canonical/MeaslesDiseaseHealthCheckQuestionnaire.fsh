Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control
Alias: $sct = http://snomed.info/sct

Instance: undefined
InstanceOf: Questionnaire
Usage: #definition

* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/MeaslesHealthCheckQuestionnaire"

* identifier[0].use = #official
* identifier[=].value = "MeaslesHealthCheckQuestionnaire"
* date = "2023-11-07"
* status = #draft
* experimental = false

* name = "MeaslesHealthCheckQuestionnaire"
* subjectType = #Patient
* publisher = "Te Whatu Ora"
* description = "Te Whatu Ora survey of Symptoms, Context and Quarantine informations surrounding Measles Patients"
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* useContext.valueCodeableConcept.text = "Measles Disease Health Check Questionnaire"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* purpose = "Survey of Symptoms, Context and Quarantine informations surrounding Measles Patients"
* code = $sct#293104008 "Measles"

* title = "Measles Disease Health Check Questionnaire"
* status = #draft
* item[0].type = #display
* item[=].linkId = "p01-Introduction"
* item[=].prefix = "page 1 "
* item[=].text = "Please complete this health check form. If you feel very sick right now contact your doctor or Healthline on 0800 611 116 for medical help. If it is an emergency call 111 and tell them you have been in contact with someone with measles."

* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "p02-q02-Symptoms"
* item[=].item[=].prefix = "page 2 question 1"
* item[=].item[=].text = "Do you currently have any measles symptoms?"
* item[=].item[=].item.text = "For example: fever, red blotchy rash, cough, runny nose, sore red eyes."
* item[=].item[=].item.type = #display
* item[=].item[=].item.linkId = "p02-q02-Symptoms_helpText"
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "p02-q02-1-Symptoms.Which"
* item[=].item[=].prefix = "page 2 question 1.1"
* item[=].item[=].text = "What symptoms do you currently have? "
* item[=].item[=].enableWhen.question = "p02-q02-Symptoms"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = $sct#386661006 "Fever "
* item[=].item[=].answerOption[+].valueCoding = $sct#725119006 "Red Blotchy Rash"
* item[=].item[=].answerOption[+].valueCoding = $sct#49727002 "Cough"
* item[=].item[=].answerOption[+].valueCoding = $sct#397811005 "Runny Nose"
* item[=].item[=].answerOption[+].valueCoding = $sct#703630003 "Sore Red Eyes"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p02-q02-2-Symptoms.FeverStart"
* item[=].item[=].prefix = "page 2 question 1.2"
* item[=].item[=].text = "Did you have a fever when you first noticed the rash?"
* item[=].item[=].enableWhen.question = "p02-q02-Symptoms"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Red Blotchy Rash"
* item[=].item[=].enableBehavior = #all

* item[=].item[+].type = #date
* item[=].item[=].linkId = "p02-q02-3-Symptoms.FeverWhen"
* item[=].item[=].prefix = "page 2 question 1.3"
* item[=].item[=].text = "When did the rash appear?"
* item[=].item[=].enableWhen.question = "p02-q02-Symptoms"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Red Blotchy Rash"
* item[=].item[=].required = true
* item[=].item[=].repeats = false

* item[=].item[+].type = #string
* item[=].item[=].linkId = "p02-q02-4-Symptoms.FeverWhere"
* item[=].item[=].prefix = "page 2 question 1.4"
* item[=].item[=].text = "Where on your body did the rash start?"
* item[=].item[=].enableWhen.question = "p02-q02-Symptoms"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Red Blotchy Rash"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false

* item[=].item[+].type = #text
* item[=].item[=].linkId = "p02-q02-5-Symptoms.FeverSpread"
* item[=].item[=].prefix = "page 2 question 1.5"
* item[=].item[=].text = "If the rash has spread, provide details of where it was spread to?"
* item[=].item[=].enableWhen.question = "p02-q02-Symptoms"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Red Blotchy Rash"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false

* item[=].item[+].type = #text
* item[=].item[=].linkId = "p02-q02-1-1-Symptoms.Which.Other"
* item[=].item[=].prefix = "page 2 question 1.1.1"
* item[=].item[=].text = "Provide details of your other symptoms:"
* item[=].item[=].enableWhen.question = "p02-q02-1-Symptoms.Which"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p02-q02-6-Symptoms.Worsened"
* item[=].item[=].prefix = "page 2 question 1.6"
* item[=].item[=].text = "Have any of your symptoms worsened since your last health check?"
* item[=].item[=].enableWhen.question = "p02-q02-Symptoms"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false

* item[=].item[+].type = #text
* item[=].item[=].linkId = "p02-q02-6-1-Symptoms.Worsened.Details"
* item[=].item[=].prefix = "page 2 question 1.6.1"
* item[=].item[=].text = "What are the details of your worsening symptoms?"
* item[=].item[=].enableWhen.question = "p02-q02-6-Symptoms.Worsened"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false

* item[=].type = #group
* item[=].linkId = "p02"
* item[=].prefix = "page 2"
* item[=].text = "Symptoms"

* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "p03-q01-Vaccine"
* item[=].item[=].code = $sct#38598009
* item[=].item[=].prefix = "page 3 question 1 "
* item[=].item[=].text = "Have you had an MMR vaccine for measles since your last health check?"
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p03-q01-BloodTest"
* item[=].item[=].code = $sct#396550006
* item[=].item[=].prefix = "page 3 question 2"
* item[=].item[=].text = "Have you had a blood test to confirm your immunity since your last health check?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "p03-q03-Contact"
* item[=].item[=].prefix = "page 3 question 3"
* item[=].item[=].text = "Do you know if you have had any contact with someone with meales sinse you last health check?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding.display = "Yes"
* item[=].item[=].answerOption[+].valueCoding.display = "No"
* item[=].item[=].answerOption[+].valueCoding.display = "I dont know"

* item[=].type = #string
* item[=].linkId = "p03"
* item[=].prefix = "page 3"
* item[=].text = "Health Context"

* item[+].item[0].type = #text
* item[=].item[=].linkId = "p04-q01-Visitors"
* item[=].item[=].prefix = "page 4 question 1"
* item[=].item[=].text = "Can you procide detailes of any visitors who are not sure of their immunity status and details of where you have been if you've left the property?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p04-q02-Quarantine"
* item[=].item[=].prefix = "page 4 question 2"
* item[=].item[=].text = "Do you need any help to continue to quarantine?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false

* item[=].item[+].type = #text
* item[=].item[=].linkId = "p04-q03-1-Quarantine.Help"
* item[=].item[=].prefix = "page 4 question 3"
* item[=].item[=].text = "Please tell us what will help"
* item[=].item[=].enableWhen.question = "p04-q02-Quarantine"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false

* item[=].type = #group
* item[=].linkId = "p04"
* item[=].prefix = "page 4"
* item[=].text = "Quarantine "