Instance: PlanDefinition-apply
InstanceOf: OperationDefinition
Usage: #definition

* name = "CareInTheCommunityPlanDefinitionApplyOperation"
* title = "Care In The Community PlanDefinition Apply Operation"
* status = #draft
* kind = #operation
* date = "2022-09-20"
* publisher = "Te Whatu Ora"
* description = "The apply operation applies a PlanDefinition to a given context"
* code = #apply
* comment = "The result of this operation is a CarePlan resource"
* base = "http://hl7.org/fhir/OperationDefinition/PlanDefinition-apply"
* resource = #PlanDefinition
* system = false
* type = false
* instance = true
* parameter[0].name = #planDefinition
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The plan definition to be applied (required)."
* parameter[=].type = #PlanDefinition
* parameter[+].name = #subject
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The subject Patient that is the target of the plan to be applied."
* parameter[=].type = #string
* parameter[=].searchType = #reference
* parameter[+].name = #encounter
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The encounter in context, if any"
* parameter[=].type = #string
* parameter[=].searchType = #reference
* parameter[+].name = #practitioner
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The practitioner applying the plan definition"
* parameter[=].type = #string
* parameter[=].searchType = #reference
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The CarePlan that is the result of applying the plan definition"
* parameter[=].type = #CarePlan
