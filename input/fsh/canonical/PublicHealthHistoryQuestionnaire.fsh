Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $sct = http://snomed.info/sct
Instance: Questionnaire-COVID-PublicHealthHistory
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/Questionnaire-COVID-PublicHealthHistory"
* identifier.use = #usual
* identifier.value = "Questionnaire-COVID-PublicHealthHistory"
* identifier.period.start = "2023-07-01"
* version = "1.0.0"
* name = "Questionnaire-COVID-PublicHealthHistory"
* title = "COVID19 Public Health History Questionnaire"
* status = #draft
* subjectType = #Patient
* publisher = "Te Whatu Ora"
* description = "Questions about a patient's recent COVID-19 history"
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* useContext.valueCodeableConcept.text = "COVID Public Health History Questionnaire"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* purpose = "For assessing patient's recent history of COVID-19 for public health purposes"
* code = $sct#292508471000119105 "History of disease caused by severe acute respiratory syndrome coronavirus 2 (situation)"

* item[0].type = #display
* item[=].linkId = "summary"
* item[=].prefix = ""
* item[=].text = "Questions about a patient's recent COVID-19 history"

* item[+].type = #group
* item[=].linkId = "p01"
* item[=].text = "Public Health History"

* item[=].item[0].type = #text
* item[=].item[=].linkId = "p01-q01-PlacesVisitedRecently"
* item[=].item[=].prefix = "page 1 question 1"
* item[=].item[=].text = "Places visited in last 14 days"
* item[=].item[=].required = false

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p01-q02-PrevPositive"
* item[=].item[=].prefix = "page 1 question 2"
* item[=].item[=].text = "Previous positive COVID-19 test?"
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p01-q03-HighSuspicionOfCOVID"
* item[=].item[=].prefix = "page 1 question 3"
* item[=].item[=].text = "High suspicion of prev. COVID-19?"
* item[=].item[=].required = true

* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p01-q04-PotentialCloseContact"
* item[=].item[=].prefix = "page 1 question 4"
* item[=].item[=].text = "Potential close contact with a COVID-19 positive person in the last 14 days?"
* item[=].item[=].required = true

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "p01-q05-COVID19Vaccine"
* item[=].item[=].prefix = "page 1 question 5"
* item[=].item[=].text = "COVID-19 vaccine?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Full"
* item[=].item[=].answerOption[+].valueCoding.display = "Partial"
* item[=].item[=].answerOption[+].valueCoding.display = "Nil"

* item[=].item[+].type = #date
* item[=].item[=].linkId = "p01-q06-dose01-date"
* item[=].item[=].prefix = "page 1 question 6 first dose date"
* item[=].item[=].text = "1st Dose Date"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "p01-q06-dose01-vaccine"
* item[=].item[=].prefix = "page 1 question 6 vaccine first dose"
* item[=].item[=].text = "First dose vaccine"
* item[=].item[=].answerOption[0].valueCoding.display = "Pfizer"
* item[=].item[=].answerOption[+].valueCoding.display = "Marmite"
* item[=].item[=].answerOption[+].valueCoding.display = "Marmalade"
* item[=].item[=].enableWhen.question = "p01-q06-dose01-date"
* item[=].item[=].enableWhen.operator = #exists
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #any
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "p01-q06-dose01-country"
* item[=].item[=].prefix = "page 1 question 6 first vaccine country"
* item[=].item[=].text = "Country"
* item[=].item[=].answerOption[0].valueCoding.system = "urn:iso:std:iso:3166"
* item[=].item[=].initial[0].valueCoding = #NZ "New Zealand"
* item[=].item[=].enableWhen.question = "p01-q06-dose01-date"
* item[=].item[=].enableWhen.operator = #exists
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #any


* item[=].item[+].type = #date
* item[=].item[=].linkId = "p01-q06-dose02-date"
* item[=].item[=].prefix = "page 1 question 6 dose 2"
* item[=].item[=].text = "2nd Dose Date"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "p01-q06-dose02-vaccine"
* item[=].item[=].prefix = "page 1 question 6 vaccine second dose"
* item[=].item[=].text = "Second dose vaccine"
* item[=].item[=].answerOption[0].valueCoding.display = "Pfizer"
* item[=].item[=].answerOption[+].valueCoding.display = "Marmite"
* item[=].item[=].answerOption[+].valueCoding.display = "Marmalade"
* item[=].item[=].enableWhen.question = "p01-q06-dose02-date"
* item[=].item[=].enableWhen.operator = #exists
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #any
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "p01-q06-dose02-country"
* item[=].item[=].prefix = "page 1 question 6 2nd vaccine country"
* item[=].item[=].text = "Country"
* item[=].item[=].answerOption[0].valueCoding.system = "urn:iso:std:iso:3166"
* item[=].item[=].initial[0].valueCoding = #NZ "New Zealand"
* item[=].item[=].enableWhen.question = "p01-q06-dose02-date"
* item[=].item[=].enableWhen.operator = #exists
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[+].type = #date
* item[=].item[=].linkId = "p01-q06-dose03-date"
* item[=].item[=].prefix = "page 1 question 6 dose 3"
* item[=].item[=].text = "3rd Dose Date"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "p01-q06-dose03-vaccine"
* item[=].item[=].prefix = "page 1 question 6 vaccine third dose"
* item[=].item[=].text = "Third dose vaccine"
* item[=].item[=].answerOption[0].valueCoding.display = "Pfizer"
* item[=].item[=].answerOption[+].valueCoding.display = "Marmite"
* item[=].item[=].answerOption[+].valueCoding.display = "Marmalade"
* item[=].item[=].enableWhen.question = "p01-q06-dose03-date"
* item[=].item[=].enableWhen.operator = #exists
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #any
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "p01-q06-dose03-country"
* item[=].item[=].prefix = "page 1 question 6 third vaccine country"
* item[=].item[=].text = "Country"
* item[=].item[=].answerOption[0].valueCoding.system = "urn:iso:std:iso:3166"
* item[=].item[=].initial[0].valueCoding = #NZ "New Zealand"
* item[=].item[=].enableWhen.question = "p01-q06-dose03-date"
* item[=].item[=].enableWhen.operator = #exists
* item[=].item[=].enableWhen.answerBoolean = true
