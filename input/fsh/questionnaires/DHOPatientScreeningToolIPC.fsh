Instance: DHOPatientScreeningToolIPC
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOPatientScreeningToolIPC"
* version = "1.0"
* identifier.use = #official
* identifier.value = "DHOPatientScreeningToolIPC"
* name = "DHOPatientScreeningToolIPC"
* title = "Patient Screening Tool IPC (District)"
* status = #active
* subjectType = #Patient
* description = "Patient infection prevention and control screening tool for district use."
* purpose = "Patient infection prevention and control screening tool for district use."

// ================= MAIN GROUP =================

* item[0].type = #group
* item[=].linkId = "questions-a-e-group"
* item[=].text = "Please complete this questionarie"
* item[=].required = false

// ================= QUESTION 1 =================

* item[=].item[0].type = #group
* item[=].item[=].linkId = "vomiting"
* item[=].item[=].text = "1. Diarrhoea / vomiting?"
* item[=].item[=].required = false

* item[=].item[=].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "bowelmotion"
* item[=].item[=].item[=].text = "Have you had 3 or more loose or watery bowel motions, or any vomiting, in the past 24 hours?"
* item[=].item[=].item[=].required = false

// ================= QUESTION 2 =================

* item[=].item[+].type = #group
* item[=].item[=].linkId = "Infectious Disease"
* item[=].item[=].text = "2. Other Infectious Disease?"
* item[=].item[=].required = false

* item[=].item[=].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "otherinfectious"
* item[=].item[=].item[=].text = "Do you currently have any other infectious disease or infection, (such as: a skin infection or wound infection, a known contagious illness  or an infection requiring antibiotics)"
* item[=].item[=].item[=].required = false

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].linkId = "specifyreason"
* item[=].item[=].item[=].text = "If Yes, please specify"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].enableWhen.question = "otherinfectious"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

// ================= QUESTION 3 =================

* item[=].item[+].type = #group
* item[=].item[=].linkId = "Acuterespiratoryillnesses"
* item[=].item[=].text = "3. Acute respiratory illnesses?"
* item[=].item[=].required = false

* item[=].item[=].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "acuterespiratoryillness"
* item[=].item[=].item[=].text = "Have you tested positive for a respiratory illness (e.g. COVID-19, influenza, or RSV) in the last 10 days (14 days if you are immunocompromised)?"
* item[=].item[=].item[=].required = false

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].linkId = "specifyilleness"
* item[=].item[=].item[=].text = "If Yes, please specify the name of the illness"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].enableWhen.question = "acuterespiratoryillness"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].linkId = "dateofpositivetest"
* item[=].item[=].item[=].text = "Date of Positive Test"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].enableWhen.question = "acuterespiratoryillness"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

// ================= QUESTION 4 =================

* item[=].item[+].type = #choice
* item[=].item[=].linkId = "symptomsworsen"
* item[=].item[=].text = "4. Do you have any of the following symptoms that are new or worsened in the last 10 days?"
* item[=].item[=].required = false
* item[=].item[=].repeats = true

* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept.coding[0].system = "http://hl7.org/fhir/questionnaire-item-control"
* item[=].item[=].extension.valueCodeableConcept.coding[0].code = #check-box
* item[=].item[=].extension.valueCodeableConcept.coding[0].display = "Check-box"

* item[=].item[=].answerOption[0].valueCoding.code = #1
* item[=].item[=].answerOption[=].valueCoding.display = "Runny nose or nasal congestion"

* item[=].item[=].answerOption[+].valueCoding.code = #2
* item[=].item[=].answerOption[=].valueCoding.display = "New or worsening cough"

* item[=].item[=].answerOption[+].valueCoding.code = #3
* item[=].item[=].answerOption[=].valueCoding.display = "Unexplained fever"

* item[=].item[=].answerOption[+].valueCoding.code = #4
* item[=].item[=].answerOption[=].valueCoding.display = "Sore or scratchy throat"

* item[=].item[=].answerOption[+].valueCoding.code = #5
* item[=].item[=].answerOption[=].valueCoding.display = "New shortness of breath"

* item[=].item[=].answerOption[+].valueCoding.code = #6
* item[=].item[=].answerOption[=].valueCoding.display = "Chills or body aches"

// ================= QUESTION 5 =================

* item[=].item[+].type = #group
* item[=].item[=].linkId = "covidcontact"
* item[=].item[=].text = "5. Contact with COVID?"
* item[=].item[=].required = false

* item[=].item[=].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "householdcontact"
* item[=].item[=].item[=].text = "A household contact or living in a communal situation with a person who has a confirmed COVID infection?"
* item[=].item[=].item[=].required = false

// ================= QUESTION 6 =================

* item[=].item[+].type = #group
* item[=].item[=].linkId = "fever_02"
* item[=].item[=].text = "6. Fever"
* item[=].item[=].required = false

* item[=].item[=].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "fever"
* item[=].item[=].item[=].text = "Have you had a fever (38°C or higher) in the past 24 hours?"
* item[=].item[=].item[=].required = false

// ================= QUESTION 7 =================

* item[=].item[+].type = #group
* item[=].item[=].linkId = "measles_01"
* item[=].item[=].text = "7. Measles"
* item[=].item[=].required = false

* item[=].item[=].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "measles"
* item[=].item[=].item[=].text = "In the last 21 days, have you been in close contact with anyone diagnosed with or suspected of having measles? "
* item[=].item[=].item[=].required = false