Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control
Instance: undefined
InstanceOf: Questionnaire
Usage: #example
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/PrivateColposcopyVistSummaryQuestionnaire"
* title = "Private colposcopy Visit Summary Questionnaire"
* status = #draft
* publisher = "Te Whatu Ora"
* description = "Demonstrates responses collected for Private colposcopy"
* purpose = "Template for to gather the referral and visit details of Private colposcopy proceedure."
//* date = "2024-11-15"
* experimental = false
* name = "PrivateColposcopyVistSummaryQuestionnaire"
* subjectType = #Patient
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* useContext.valueCodeableConcept.text = "COVID Initial Health Assessment"

* identifier[0].use = #official
* identifier[=].value = "CPrivateColposcopyVistSummaryQuestionnaire"
* identifier[=].period.start = "2024-11-14"
* identifier[+].use = #temp
* identifier[=].value = "QuestionTemplate-CitC-COVID19-InitialAssessment"
* identifier[=].period.end = "2024-11-14"
/*-------------------REFERRAL------------------------*/

* item[0].linkId = "Q1"
* item[=].prefix = "Q1."
* item[=].text = "REFFERAL"
* item[=].type = #group

* item[=].item[0].linkId = "1.1"
* item[=].item[=].text = "Patient Information"
* item[=].item[=].type = #group
* item[=].item[=].prefix = "1.1."

* item[=].item[=].item[0].linkId = "1.1.1"
* item[=].item[=].item[=].prefix = "1.1.1"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].maxLength = 7
* item[=].item[=].item[=].text = "NHI number"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = false

* item[=].item[=].item[+].linkId = "1.1.2"
* item[=].item[=].item[=].prefix = "1.1.2."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Date of birth"
* item[=].item[=].item[=].repeats = false

* item[=].item[=].item[+].linkId = "1.1.3"
* item[=].item[=].item[=].prefix = "1.1.3."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Residential address"


* item[=].item[+].linkId = "1.2"
* item[=].item[=].text = "Clinic Information"
* item[=].item[=].type = #group
* item[=].item[=].prefix = "1.2."

* item[=].item[=].item[0].linkId = "1.2.1"
* item[=].item[=].item[=].prefix = "1.2.1."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Colposcopy clinic name"

* item[=].item[=].item[+].linkId = "1.2.2"
* item[=].item[=].item[=].prefix = "1.2.2."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Colposcopy HPI facility ID"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "1.2.5"
* item[=].item[=].item[=].prefix = "1.2.6."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Colposcopist name"

* item[=].item[=].item[+].linkId = "1.2.5"
* item[=].item[=].item[=].prefix = "1.2.6."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = ".Colposcopist HPI-CPN"
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "1.3"
* item[=].item[=].text = "REFFERAL INFORMATION"
* item[=].item[=].type = #group
* item[=].item[=].prefix = "1.3."

* item[=].item[=].item[0].linkId = "1.3.1"
* item[=].item[=].item[=].prefix = "1.3.1."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].text = "Referred by health worker HPI-CPN"

* item[=].item[=].item[+].linkId = "1.3.2"
* item[=].item[=].item[=].prefix = "1.3.2."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Referred by health worker name"

* item[=].item[=].item[+].linkId = "1.3.3"
* item[=].item[=].item[=].prefix = "1.3.3."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].text = "Referred by health facility ID"

* item[=].item[=].item[+].linkId = "1.3.4"
* item[=].item[=].item[=].prefix = "1.3.4."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Referred by health facility name"

* item[=].item[=].item[+].linkId = "1.3.5"
* item[=].item[=].item[=].prefix = "1.3.5."
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].text = "Referral received date"

* item[=].item[=].item[+].linkId = "1.3.6"
* item[=].item[=].item[=].prefix = "1.3.6."
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].text = "Referral accepted date"

* item[=].item[=].item[+].linkId = "1.3.7"
* item[=].item[=].item[=].prefix = "1.3.7."
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].text = "Appointment date"

* item[=].item[=].item[+].linkId = "1.3.8"
* item[=].item[=].item[=].prefix = "1.3.8"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].text = "First colposcopy visit?"

* item[=].item[=].item[+].linkId = "1.3.9"
* item[=].item[=].item[=].prefix = "1.3.9"
* item[=].item[=].item[=].enableWhen.question = "1.3.8"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].text = "Follow-up colposcopy visit"
* item[=].item[=].item[=].initial.valueBoolean = false

* item[=].item[=].item[+].linkId = "1.3.10"
* item[=].item[=].item[=].prefix = "1.3.10."
* item[=].item[=].item[=].text = "Follow-up colposcopy visit"
* item[=].item[=].item[=].enableWhen.question = "1.3.9"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[0].valueString = "1st"
* item[=].item[=].item[=].answerOption[+].valueString = "2nd"
* item[=].item[=].item[=].answerOption[+].valueString = "3rd"
* item[=].item[=].item[=].answerOption[+].valueString = "4th or more"

* item[=].item[+].linkId = "1.4"
* item[=].item[=].text = "REASON FOR REFFERAL"
* item[=].item[=].type = #group
* item[=].item[=].prefix = "1.4."

* item[=].item[=].item[0].linkId = "1.4.1"
* item[=].item[=].item[=].text = "Assessment for the reason for referral"
* item[=].item[=].item[=].type = #display

* item[=].item[=].item[+].linkId  = "1.4.2"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"

* item[=].item[=].item[=].text = "Assessment for the reason for referral"
* item[=].item[=].item[=].answerOption[0].valueCoding = #r01 "Any cytological evidence or suspicion of invasion"
* item[=].item[=].item[=].answerOption[+].valueCoding = #r02 "Any cytological glandular abnormality"
* item[=].item[=].item[=].answerOption[+].valueCoding = #r03 "HPV 16/18 with or without cytology"
* item[=].item[=].item[=].answerOption[+].valueCoding = #r04 "HPV other where the participant is immune compromised"
* item[=].item[=].item[=].answerOption[+].valueCoding = #r05 "HPV other with LSIL on two occasions if over 50 and 3 occasions if under 50"
* item[=].item[=].item[=].answerOption[+].valueCoding = #r06 "Low-grade clinical assessment"
* item[=].item[=].item[=].answerOption[+].valueCoding = #r07 "HPV other where the participant is immune compromised"
* item[=].item[=].item[=].answerOption[+].valueCoding = #r08 "HPV other with LSIL on two occasions if over 50 and 3 occasions if under 50"
* item[=].item[=].item[=].answerOption[+].valueCoding = #r09 "Low-grade clinical assessment"
* item[=].item[=].item[=].answerOption[+].valueCoding = #r010 "High-grade clinical assessment"
* item[=].item[=].item[=].answerOption[+].valueCoding = #r011 "Suspicion of an invasive cancer clinical assessmentt"
* item[=].item[=].item[=].answerOption[+].valueCoding = #r012 "Other"

* item[=].item[=].item[+].linkId = "1.4.3"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Disply"
* item[=].item[=].item[=].enableWhen.question = "1.4.2"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = #other33 "Other"

/*-------------------DNA-----------------------------*/
* item[+].linkId = "Q4"
* item[=].prefix = "Q4."
* item[=].text = "DID NOT ATTENED"
* item[=].type = #group

* item[=].item[0].linkId = "4.1"
* item[=].item[=].text = "Patient Information"
* item[=].item[=].type = #group
* item[=].item[=].prefix = "4.1."

* item[=].item[=].item[0].linkId = "4.1.1"
* item[=].item[=].item[=].prefix = "4.1.1"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].maxLength = 7
* item[=].item[=].item[=].text = "NHI number"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = false

* item[=].item[=].item[+].linkId = "4.1.2"
* item[=].item[=].item[=].prefix = "4.1.2."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Date of birth"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false

* item[=].item[=].item[+].linkId = "4.1.3"
* item[=].item[=].item[=].prefix = "4.1.3."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Residential address"

* item[=].item[+].linkId = "4.2"
* item[=].item[=].text = "Clinic Information"
* item[=].item[=].type = #group
* item[=].item[=].prefix = "4.2."

* item[=].item[=].item[0].linkId = "4.2.1"
* item[=].item[=].item[=].prefix = "4.2.1."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Colposcopy clinic name"

* item[=].item[=].item[+].linkId = "4.2.2"
* item[=].item[=].item[=].prefix = "4.2.2."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Colposcopy HPI facility ID"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "4.2.5"
* item[=].item[=].item[=].prefix = "4.2.6."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Colposcopist name"

* item[=].item[=].item[+].linkId = "4.2.5"
* item[=].item[=].item[=].prefix = "4.2.6."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = ".Colposcopist HPI-CPN"
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "4.3"
* item[=].item[=].text = "DNA"
* item[=].item[=].type = #group
* item[=].item[=].prefix = "4.3."

* item[=].item[=].item[0].linkId = "4.3.1"
* item[=].item[=].item[=].prefix = "4.3.1."
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].text = "Scheduled visit date"

* item[=].item[=].item[+].linkId = "4.3.2"
* item[=].item[=].item[=].prefix = "4.3.2."
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].text = "Rescheduled appointment date"

* item[=].item[=].item[+].linkId = "4.3.3"
* item[=].item[=].item[=].prefix = "4.3.3."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].text = "Reason for DNA"

