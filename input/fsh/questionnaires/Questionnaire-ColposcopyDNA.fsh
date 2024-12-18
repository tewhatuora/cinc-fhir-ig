Instance: PrivateColposcopyDNAQuestionnaire
InstanceOf: Questionnaire
Usage: #example
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/PrivateColposcopyDNAQuestionnaire"
* title = "Private Colposcopy Did Not Attend Questionnaire"
* version = "0.1.1"
* status = #draft
* publisher = "Te Whatu Ora"
* purpose = "Gather the details associated with a non-attended Private Colposcopy procedure."
* experimental = false
* name = "PrivateColposcopyDNAQuestionnaire"
* subjectType = #Patient
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* useContext.valueCodeableConcept.text = "Private Colposcopy Visit Summary"
* identifier.use = #official
* identifier.value = "PrivateColposcopyDNAQuestionnaire"
* item.linkId = "p01-DNA"
* item.prefix = "page 01"
* item.type = #group
* item.text = "DID NOT ATTEND"
* item.item[0].linkId = "p01-q01-ClinicInformation"
* item.item[=].prefix = "page 01 question 1"
* item.item[=].type = #group
* item.item[=].text = "Clinic Information"
* item.item[=].item.linkId = "p01-q01.1-Clinic"
* item.item[=].item.prefix = "page 01 question 1.1"
* item.item[=].item.type = #reference
* item.item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceResource"
* item.item[=].item.extension.valueCode = #Location
* item.item[=].item.text = "Colposcopy HPI facility"
* item.item[=].item.required = true
* item.item[+].linkId = "p01-q02-DNA"
* item.item[=].prefix = "page 01 question 2"
* item.item[=].type = #group
* item.item[=].text = "DNA"
* item.item[=].item[0].linkId = "p01-q02.1-ScheduledDate"
* item.item[=].item[=].prefix = "page 01 question 2.1"
* item.item[=].item[=].type = #date
* item.item[=].item[=].text = "Scheduled visit date"
* item.item[=].item[=].required = true
* item.item[=].item[=].repeats = false
* item.item[=].item[+].linkId = "p01-q02.2-RescheduledDate"
* item.item[=].item[=].prefix = "page 01 question 2.2"
* item.item[=].item[=].type = #date
* item.item[=].item[=].text = "Rescheduled appointment date"
* item.item[=].item[=].required = true
* item.item[=].item[=].repeats = false
* item.item[=].item[+].linkId = "p01-q02.3-ReasonForDNA"
* item.item[=].item[=].prefix = "page 01 question 2.3"
* item.item[=].item[=].type = #string
* item.item[=].item[=].text = "Reason for DNA"
* item.item[=].item[=].required = false
* item.item[=].item[=].repeats = false