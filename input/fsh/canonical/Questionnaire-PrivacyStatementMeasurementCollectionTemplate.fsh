Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type

Instance: PrivacyStatementMeasurementCollectionTemplate
InstanceOf: ManaakiNgaTahiQuestionnaire
Usage: #definition
Description: "A response to this questionnaire is required to create a consent that enables access to FHIR Observation resources."

* language = #en-NZ
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/PrivacyStatementMeasurementCollectionTemplate"

* identifier[0].use = #official
* identifier[=].value = "PrivacyStatementMeasurementCollectionTemplate"
* identifier[=].period.start = "2023-07-25"
* identifier[+].use = #temp
* identifier[=].value = "QuestionTemplate-CitC-COVID19-MeasurementCollection"
* identifier[=].period.start = "2022-08-01"
* identifier[=].period.end = "2023-07-25"

* version = "0.1.7"
* date = "2023-07-25"
* status = #draft
* experimental = false

* name = "PrivacyStatementMeasurementCollectionTemplate"
* title = "Question Template for COVID-19 Privacy Statement Question"
* description = "Collects responses confirming that a patient consents to data collection and sharing."

* subjectType = #Patient
* publisher = "Te Whatu Ora"
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* useContext.valueCodeableConcept.text = "Consent"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* purpose = "Template for the recording of responses to consent questions."

* item.linkId = "1"
* item.prefix = "1."
* item.type = #boolean
* item.text = "Updated text to be supplied by Health NZ"
* item.required = true
* item.initial.valueBoolean = true