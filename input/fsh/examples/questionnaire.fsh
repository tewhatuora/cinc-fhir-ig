Instance: QuestionnaireExample
InstanceOf: CovidQuestionnaire
Usage: #example
Description: "An example COVID Questionnaire"
* identifier.period.start = "2022-09-12"
* identifier.use = #usual
* identifier.value = "QuestionTemplate-CitC-COVID19-PrivacyStatementQuestion"
* item.linkId = "1"
* item.initial.valueBoolean = true
* item.prefix = "1."
* item.text = "Please assure that person that all information discussed is strictly confidential and will only be used to support them while they are isolating.  It will only be shared and visible to other health professionals when and if required."
* item.type = #boolean
* item.required = true
* purpose = "Template for the recording of responses to consent questions."
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* description = "A response to this questionnaire is required to create a consent that enables access to FHIR CarePlan resources."
* experimental = true
* language = #en-NZ
* title = "Question Template for COVID-19 Privacy Statement Question"
* subjectType = #Patient
* version = "1.0"
* url = "https://api.integration-uat.covid19.health.nz/cinc/fhir/R4/Questionnaire/4fb33b84-524e-44d2-a12b-66de6350cc8e"
* meta.lastUpdated = "2022-09-12T04:46:55.137Z"
* meta.versionId = "3"
* name = "COVIDPrivacyStatementQuestionTemplate"
* publisher = "Te Whatu Ora"
* useContext.valueCodeableConcept.text = "Consent"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#workflow "Workflow Setting"
* status = #draft
