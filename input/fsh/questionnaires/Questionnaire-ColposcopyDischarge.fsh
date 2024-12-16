Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

Instance: undefined
InstanceOf: Questionnaire
Usage: #example
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/PrivateColposcopyDischargeQuestionnaire"
* title = "Private Colposcopy Discharge Questionnaire"
* version = "0.1.1"
* status = #draft
* publisher = "Te Whatu Ora"
* purpose = "To gather the discharge details surrounding a Private colposcopy procedure."
* experimental = false
* name = "PrivateColposcopyDischargeQuestionnaire"
* subjectType = #Patient
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* useContext.valueCodeableConcept.text = "Private Colposcopy Visit Summary"
* identifier.use = #official
* identifier.value = "PrivateColposcopyDischargeQuestionnaire"
* item[0].linkId = "p01-ClinicInformation"
* item[=].prefix = "page 01"
* item[=].type = #group
* item[=].text = "Clinic Information"
* item[=].item.linkId = "p01-q01-ClinicInformation"
* item[=].item.prefix = "page 01 question 1"
* item[=].item.type = #group
* item[=].item.text = "Clinic Information"
* item[=].item.item.linkId = "p01-q01.1-Clinic"
* item[=].item.item.prefix = "page 01 question 1.1"
* item[=].item.item.type = #reference
* item[=].item.item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceResource"
* item[=].item.item.extension.valueCode = #Location
* item[=].item.item.text = "Discharged by Colposcopy HPI facility"
* item[=].item.item.required = true
* item[+].linkId = "p02-DischargeInformation"
* item[=].prefix = "page 02"
* item[=].type = #group
* item[=].text = "Discharge Information"
* item[=].required = true
* item[=].item[0].linkId = "p02-q01-DischargeType"
* item[=].item[=].prefix = "page 02 question 1"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Discharge Type"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Screen taker"
* item[=].item[=].answerOption[+].valueCoding.display = "Oncology"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p02-q02-SpecifyService"
* item[=].item[=].prefix = "page 02 question 2"
* item[=].item[=].type = #string
* item[=].item[=].text = "Specify Service"
* item[=].item[=].required = true
* item[=].item[=].enableWhen.question = "p02-q01-DischargeType"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p02-q03-DischargedToHealthWorker"
* item[=].item[=].prefix = "page 02 question 3"
* item[=].item[=].type = #reference
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceResource"
* item[=].item[=].extension.valueCode = #Practitioner
* item[=].item[=].text = "Discharged to Health worker HPI-CPN"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p02-q04-DischargedToFacility"
* item[=].item[=].prefix = "page 02 question 4"
* item[=].item[=].type = #reference
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceResource"
* item[=].item[=].extension.valueCode = #Location
* item[=].item[=].text = "Discharged to Facility"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p02-q05-DateOfDischarge"
* item[=].item[=].prefix = "page 02 question 5"
* item[=].item[=].type = #date
* item[=].item[=].text = "Date of discharge"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p02-q06-FollowUpManagement"
* item[=].item[=].prefix = "page 02 question 6"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Follow-up management"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = #HPVCYTO "HPV +/- Cytology"
* item[=].item[=].answerOption[+].valueCoding = #1TOC "First TOC"
* item[=].item[=].answerOption[+].valueCoding = #1TOC "Second TOC"
* item[=].item[=].answerOption[+].valueCoding = #ACT "Annual co-test recall"
* item[=].item[=].answerOption[+].valueCoding.display = "Regular interval screening (5 years), (3 years if immune deficient)"
* item[=].item[=].answerOption[+].valueCoding = #ACT "Annual Co-test"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].repeats = false
* item[=].item[=].enableWhen.question = "p02-q01-DischargeType"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Screen taker"
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p02-q7-OtherFollowUp"
* item[=].item[=].prefix = "page 02 question 7"
* item[=].item[=].type = #string
* item[=].item[=].text = "Other"
* item[=].item[=].enableWhen.question = "p02-q06-FollowUpManagement"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[=].enableBehavior = #all
* item[=].repeats = false