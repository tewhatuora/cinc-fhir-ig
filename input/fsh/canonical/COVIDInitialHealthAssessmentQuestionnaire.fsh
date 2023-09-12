Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $sct = http://snomed.info/sct

Instance: COVIDInitialHealthAssessmentQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/COVIDInitialHealthAssessmentQuestionnaire"

* identifier[0].use = #official
* identifier[=].value = "COVIDInitialHealthAssessmentQuestionnaire"
* identifier[=].period.start = "2023-07-19"
* identifier[+].use = #temp
* identifier[=].value = "QuestionTemplate-CitC-COVID19-InitialAssessment"
* identifier[=].period.end = "2023-07-19"

* date = "2023-07-19"
* status = #draft
* experimental = false

* name = "COVIDInitialHealthAssessmentQuestionnaire"
* title = "COVID19 Initial Health Assessment Questionnaire"

* subjectType = #Patient
* publisher = "Te Whatu Ora"
* description = "An initial assessment for a patient who has tested positive for COVID-19"
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* useContext.valueCodeableConcept.text = "COVID Initial Health Assessment"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* purpose = "Gather status and conditions for a patient who is self-isolating."

* item[0].linkId = "1"
* item[=].prefix = "1."
* item[=].text = "Past Health and Wellbeing History - ask questions to find out about:"
* item[=].type = #group

* item[=].item[0].linkId = "1.1"
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].prefix = "1.1."
* item[=].item[=].text = "Hypertension?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "1.2"
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].prefix = "1.2."
* item[=].item[=].text = "Diabetes?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "1.2.1"
* item[=].item[=].enableWhen.question = "1.2"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].prefix = "1.2.1"
* item[=].item[=].text = "If using insulin please provide details?"
* item[=].item[=].type = #string
* item[=].item[=].required = false

* item[=].item[+].linkId = "1.3"
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].prefix = "1.3."
* item[=].item[=].text = "Asthma?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "1.4"
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].prefix = "1.4."
* item[=].item[=].text = "Previous stroke?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "1.5"
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].prefix = "1.5."
* item[=].item[=].text = "Cancer?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "1.5.1"
* item[=].item[=].enableWhen.question = "1.5"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].prefix = "1.5.1"
* item[=].item[=].text = "Please provide cancer details"
* item[=].item[=].type = #text
* item[=].item[=].required = false

* item[=].item[+].linkId = "1.6"
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].prefix = "1.6."
* item[=].item[=].text = "Current/recent pregnancy?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "1.6.a"
* item[=].item[=].enableWhen.question = "1.6"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].prefix = "1.6.a."
* item[=].item[=].text = "Pregnancy assessment"
* item[=].item[=].type = #group
* item[=].item[=].required = false

* item[=].item[=].item[0].linkId = "1.6.1"
* item[=].item[=].item[=].prefix = "1.6.1"
* item[=].item[=].item[=].text = "Gestation (number of weeks)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false

* item[=].item[=].item[+].linkId = "1.6.2"
* item[=].item[=].item[=].prefix = "1.6.2"
* item[=].item[=].item[=].text = "Postpartum (number of weeks)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false

* item[=].item[+].linkId = "1.7"
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].prefix = "1.7."
* item[=].item[=].text = "Immunocompromised?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "1.7.1"
* item[=].item[=].enableWhen.question = "1.7"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].prefix = "1.7.1"
* item[=].item[=].text = "Specify immunocompromised further details"
* item[=].item[=].type = #text
* item[=].item[=].required = false

* item[=].item[+].linkId = "1.8"
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].prefix = "1.8."
* item[=].item[=].text = "Previous heart attack or heart failure?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "1.9"
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].prefix = "1.9."
* item[=].item[=].text = "Epilepsy?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "1.10"
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].prefix = "1.10."
* item[=].item[=].text = "Other respiratory disease?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "1.11"
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].prefix = "1.11."
* item[=].item[=].text = "Mental health and/or addiction?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "1.12"
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].prefix = "1.12."
* item[=].item[=].text = "Kidney disease?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "1.13"
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].prefix = "1.13."
* item[=].item[=].text = "CPAP device used?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "1.14"
* item[=].item[=].prefix = "1.14."
* item[=].item[=].text = "Weight?"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueString = "Under"
* item[=].item[=].answerOption[+].valueString = "Average"
* item[=].item[=].answerOption[+].valueString = "Over"
* item[=].item[=].answerOption[+].valueString = "Obese"
* item[=].item[=].required = true

* item[=].item[+].linkId = "1.15"
* item[=].item[=].prefix = "1.15."
* item[=].item[=].text = "Other"
* item[=].item[=].type = #string
* item[=].item[=].required = false

* item[+].linkId = "2"
* item[=].prefix = "2."
* item[=].text = "Medication and Allergies"
* item[=].type = #group

* item[=].item[0].linkId = "2.1"
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].prefix = "2.1."
* item[=].item[=].text = "Smoking?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "2.1b"
* item[=].item[=].enableWhen.question = "2.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].prefix = "2.1b."
* item[=].item[=].text = "Would you like NRT?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = false

* item[=].item[+].linkId = "2.2"
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].prefix = "2.2."
* item[=].item[=].text = "Alcohol?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "2.2.1"
* item[=].item[=].enableWhen.question = "2.2"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].prefix = "2.2.1."
* item[=].item[=].text = "Drinks per week?"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueString = "<10"
* item[=].item[=].answerOption[+].valueString = "10-16"
* item[=].item[=].answerOption[+].valueString = ">16"
* item[=].item[=].required = false

* item[=].item[+].linkId = "2.3"
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].prefix = "2.3."
* item[=].item[=].text = "Recreational drugs?"
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "2.4"
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].prefix = "2.4."
* item[=].item[=].text = "Allergies?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "2.4.1"
* item[=].item[=].enableWhen.question = "2.4"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].prefix = "2.4.1."
* item[=].item[=].text = "Medication Allergies"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "2.4.1.1"
* item[=].item[=].enableWhen.question = "2.4.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].prefix = "2.4.1.1."
* item[=].item[=].text = "Medicine"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "2.4.1.2"
* item[=].item[=].enableWhen.question = "2.4.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].prefix = "2.4.1.2."
* item[=].item[=].text = "Category (select)"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueString = "Allergy"
* item[=].item[=].answerOption[+].valueString = "Patient Complaint"
* item[=].item[=].answerOption[+].valueString = "Side Effect"

* item[=].item[+].linkId = "2.4.1.3"
* item[=].item[=].enableWhen.question = "2.4.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].prefix = "2.4.1.3."
* item[=].item[=].text = "Reaction (select)"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueString = "Mild"
* item[=].item[=].answerOption[+].valueString = "Moderate"
* item[=].item[=].answerOption[+].valueString = "Severe"
* item[=].item[=].answerOption[+].valueString = "Anaphylaxis"

* item[=].item[+].linkId = "2.4.1.4"
* item[=].item[=].enableWhen.question = "2.4.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].prefix = "2.4.1.4."
* item[=].item[=].text = "Onset Date"
* item[=].item[=].type = #date

* item[=].item[+].linkId = "2.4.1.5"
* item[=].item[=].enableWhen.question = "2.4.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].prefix = "2.4.1.5."
* item[=].item[=].text = "Date of Entry"
* item[=].item[=].type = #date

* item[=].item[+].linkId = "2.4.1.6"
* item[=].item[=].enableWhen.question = "2.4.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].initial.valueBoolean = true
* item[=].item[=].prefix = "2.4.1.6."
* item[=].item[=].text = "Active?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "2.4.1.6.1"
* item[=].item[=].enableWhen.question = "2.4.1.6"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].prefix = "2.4.1.6.1."
* item[=].item[=].text = "Specify Reason for deactivation"
* item[=].item[=].type = #string

* item[=].item[+].linkId = "2.4.1.7"
* item[=].item[=].enableWhen.question = "2.4.1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].prefix = "2.4.1.7."
* item[=].item[=].text = "Comments"
* item[=].item[=].type = #text

* item[=].item[+].linkId = "2.4.2"
* item[=].item[=].enableWhen.question = "2.4"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].prefix = "2.4.2."
* item[=].item[=].text = "Other allergies"
* item[=].item[=].type = #text
* item[=].item[=].required = true

* item[=].item[+].linkId = "2.5"
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].prefix = "2.5."
* item[=].item[=].text = "Prescription medication or medical devices (eg. CPAP, nebuliser, blood glucose meter)?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "2.6"
* item[=].item[=].prefix = "2.6."
* item[=].item[=].text = "Details of medications, medical devices, recreational drugs here"
* item[=].item[=].type = #text

* item[=].item[+].linkId = "2.7"
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].prefix = "2.7."
* item[=].item[=].text = "Able to manage meds independently?"
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "2.8"
* item[=].item[=].prefix = "2.8."
* item[=].item[=].text = "Sufficient supply for 14 days?"
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "2.9"
* item[=].item[=].prefix = "2.9."
* item[=].item[=].text = "Taking immunosuppressant?"
* item[=].item[=].type = #boolean


* item[+].item.linkId = "3.1"
* item[=].item.prefix = "3.1."
* item[=].item.text = "Individual assessment plan / guideline"
* item[=].item.type = #text
* item[=].linkId = "3"
* item[=].prefix = "3."
* item[=].text = "Individual assessment plan/guideline"
* item[=].type = #group