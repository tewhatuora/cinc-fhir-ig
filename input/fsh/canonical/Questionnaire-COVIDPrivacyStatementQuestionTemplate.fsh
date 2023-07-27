Instance: COVIDPrivacyStatementQuestionTemplate
InstanceOf: Questionnaire
Usage: #definition
Description: "A response to this questionnaire is used by Consent resources that enable access to other FHIR resources."

* language = #en-NZ
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/COVIDPrivacyStatementQuestionTemplate"

* identifier[0].use = #official
* identifier[=].value = "COVIDPrivacyStatementQuestionTemplate"
* identifier[=].period.start = "2023-07-25"
* identifier[+].use = #temp
* identifier[=].value = "QuestionTemplate-CitC-COVID19-PrivacyStatementQuestion"
* identifier[=].period.start = "2022-08-01"
* identifier[=].period.end = "2023-07-25"

* date = "2023-07-25"
* status = #draft
* experimental = false

* name = "COVIDPrivacyStatementQuestionTemplate"
* title = "Question Template for COVID-19 Privacy Statement Question"
* description = "Collects responses confirming that a patient consents to data collection and sharing."

* subjectType = #Patient
* publisher = "Te Whatu Ora"
* useContext.valueCodeableConcept.text = "Consent"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#workflow "Workflow Setting"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* purpose = "Template for the recording of responses to consent questions."

* item.linkId = "1"
* item.initial.valueBoolean = true
* item.prefix = "1."
* item.text = "Please assure that person that all information discussed is strictly confidential and will only be used to support them while they are isolating.  It will only be shared and visible to other health professionals when and if required."
* item.type = #boolean
* item.required = true
