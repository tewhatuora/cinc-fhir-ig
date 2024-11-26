Instance: QuestionnaireResponse-extract
InstanceOf: OperationDefinition
Usage: #definition

* name = "CareInTheCommunityQuestionnaireResponseExtract"
* title = "Care In The Community QuestionnaireResponse Extract Operation"
* status = #draft
* kind = #operation
* date = "2022-09-20"
* publisher = "Te Whatu Ora"
* description = "The Extract operation takes a completed QuestionnaireResponse and converts it to a FHIR resource or Bundle of resources by using metadata embedded in the Questionnaire the QuestionnaireResponse is based on"
* code = #extract
* comment = "The extracted resources might include Observations, MedicationStatements and other standard FHIR resources which can then be shared and manipulated. When invoking the $extract operation, care should be taken that the submitted QuestionnaireResponse is itself valid. If not, the extract operation could fail (with appropriate OperationOutcomes) or, more problematic, might succeed but provide incorrect output."
* base = "https://build.fhir.org/ig/HL7/sdc/OperationDefinition-QuestionnaireResponse-extract"
* resource = #QuestionnaireResponse
* system = false
* type = false
* instance = true
* parameter[0].name = #QuestionnaireResponse
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Questionnaire Response content to be extracted"
* parameter[=].type = #QuestionnaireResponse
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Bundle of Extract Results"
* parameter[=].type = #Bundle
