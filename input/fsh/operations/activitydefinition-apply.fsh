Instance: ActivityDefinition-apply
InstanceOf: OperationDefinition
Usage: #definition

* name = "CareInTheCommunityActivityDefinitionApplyOperation"
* title = "Care In The Community ActivityDefinition Apply Operation"
* status = #draft
* kind = #operation
* date = "2022-09-20"
* publisher = "Te Whatu Ora"
* description = "The apply operation applies an ActivityDefinition to a given context"
* code = #apply
* comment = "The result of this operation is a ServiceRequest resource"
* base = "http://hl7.org/fhir/OperationDefinition/ActivityDefinition-apply"
* resource = #ActivityDefinition
* system = false
* type = false
* instance = true
* parameter[0].name = #activityDefinition
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The activity definition to be applied (required)."
* parameter[=].type = #ActivityDefinition
* parameter[+].name = #subject
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The subject Patient that is the target of the activity to be applied."
* parameter[=].type = #string
* parameter[=].searchType = #reference
* parameter[+].name = #practitioner
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The practitioner applying the activity definition"
* parameter[=].type = #string
* parameter[=].searchType = #reference
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The ServiceRequest that is the result of applying the plan definition"
* parameter[=].type = #ServiceRequest
