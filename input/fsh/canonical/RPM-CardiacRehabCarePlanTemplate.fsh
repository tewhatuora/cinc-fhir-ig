Alias: $plan-definition-type = http://terminology.hl7.org/CodeSystem/plan-definition-type
Alias: $resource-types = http://hl7.org/fhir/resource-types
Alias: $definition-topic = http://terminology.hl7.org/CodeSystem/definition-topic
Alias: $goal-priority = http://terminology.hl7.org/CodeSystem/goal-priority
Alias: $action-type = http://terminology.hl7.org/CodeSystem/action-type

Instance: RemoteMonitoringHeartFailureCarePlanTemplate
InstanceOf: PlanDefinition
Usage: #definition
* language = #en-NZ
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/PlanDefinition/RPMCardiacRehabCarePlanTemplate"
* identifier.use = #official
* identifier.value = "RPMCardiacRehabCarePlanTemplate"
* version = "0.1.0"
* name = "RPMCardiacRehabCarePlanTemplate"
* title = "TBD"
* subtitle = "TBD"
* type = $plan-definition-type#order-set "Order Set"
* type.text = "Order Set"
* date = "2023-07-25"
* status = #active
* experimental = true
* subjectCodeableConcept = $resource-types#Patient "Patient"
* subjectCodeableConcept.text = "Patient"
* publisher = "Te Whatu Ora"
* description = "TBD"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* purpose = "TBD"
* usage = "TBD"
* lastReviewDate = "2022-08-04"
* effectivePeriod.start = "2022-08-04"
* effectivePeriod.end = "2023-08-04"
* topic = $definition-topic#treatment "Treatment"
* topic.text = "Treatment"
* author.name = "HNZ RPM Project"
* editor.name = "HNZ RPM Project"
* reviewer.name = "HNZ RPM Project"
* endorser.name = "Alastair Kenworthy"
* endorser.telecom.system = #other
* endorser.telecom.value = "CinC Fit for Future Project"
* goal.id = "heart-failure-monitoring"
* goal.category.text = "Heart Failure Monitoring"
* goal.description.text = "TBD"
* goal.priority = $goal-priority#medium-priority "Medium Priority"
* goal.priority.text = "Medium Priority"
* goal.start.text = "Assessed as suitable"
* action[+].id = "3"
* action[=].prefix = "3."
* action[=].title = "Observation Activity"
* action[=].description = "Take an observation"
* action[=].priority = #routine
* action[=].goalId = "heart-failure-monitoring"
* action[=].subjectCodeableConcept = $resource-types#Patient "Patient"
* action[=].subjectCodeableConcept.text = "Patient"
* action[=].type = $action-type#create "Create"
* action[=].type.text = "Create"
* action[=].requiredBehavior = #must
* action[=].precheckBehavior = #yes
* action[=].cardinalityBehavior = #multiple
* action[=].definitionCanonical = "{{API_URL}}/ActivityDefinition?identifier=RemoteMonitoringObservationRequest"