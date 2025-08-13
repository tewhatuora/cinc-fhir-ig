Alias: $plan-definition-type = http://terminology.hl7.org/CodeSystem/plan-definition-type
Alias: $resource-types = http://hl7.org/fhir/resource-types
Alias: $definition-topic = http://terminology.hl7.org/CodeSystem/definition-topic
Alias: $goal-priority = http://terminology.hl7.org/CodeSystem/goal-priority
Alias: $action-type = http://terminology.hl7.org/CodeSystem/action-type

Instance: GOFSH-GENERATED-ID-0
InstanceOf: PlanDefinition
Usage: #example
* language = #en-NZ
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/PlanDefinition/COPDMonitoringInPrimaryCareTemplate"
* identifier.use = #official
* identifier.value = "COPDMonitoringInPrimaryCareTemplate"
* version = "0.1.6"
* name = "COPDMonitoringInPrimaryCareTemplate"
* title = "Chronic obstructive pulmonary disease clinical management plan"
* subtitle = "Care in the Community plans to handle COPD patients remotely in an ongoing capacity"
* type = $plan-definition-type#order-set "Order Set"
* type.text = "Order Set"
* date = "2023-07-25"
* status = #active
* experimental = true
* subjectCodeableConcept = $resource-types#Patient "Patient"
* subjectCodeableConcept.text = "Patient"
* publisher = "Te Whatu Ora"
* description = "This careplan designed to support ongoing monitoring of long term conditions (COPD) in primary care"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* purpose = "This careplan designed to support ongoing monitoring of long term conditions (COPD) in primary care remotely"
* usage = "Allows monitoring and tracking of progress of a self serve remote COPD patient."
* lastReviewDate = "2022-08-04"
* topic = $definition-topic#treatment "Treatment"
* topic.text = "Treatment"
* author.name = "HNZ RPM Project"
* editor.name = "HNZ RPM Project"
* reviewer.name = "HNZ RPM Project"
* endorser.name = "Alastair Kenworthy"
* endorser.telecom.system = #other
* endorser.telecom.value = "CinC Fit for Future Project"
* goal.id = "copd-monitoring"
* goal.category.text = "COPD Monitoring"
* goal.description.text = "Activities in the Remote Monitoring Careplan for COPD are intended to support the person and whanau managing their COPD through capturing and sharing information relating to their needs and experience, symptoms and observations. These activities are in alignment with the NZ Health pathways base COPD pathway."
* goal.priority = $goal-priority#medium-priority "Medium Priority"
* goal.priority.text = "Medium Priority"
* goal.start.text = "Assessed as suitable"
* action[0].id = "1"
* action[=].prefix = "1."
* action[=].title = "Daily Symptom Survey"
* action[=].description = "Daily Symptom Survey"
* action[=].textEquivalent = "Daily Survey to gather any symptoms experienced by a patient"
* action[=].priority = #routine
* action[=].goalId = "copd-monitoring"
* action[=].subjectCodeableConcept = $resource-types#Patient "Patient"
* action[=].subjectCodeableConcept.text = "Patient"
* action[=].type = $action-type#create "Create"
* action[=].type.text = "Create"
* action[=].requiredBehavior = #must
* action[=].precheckBehavior = #yes
* action[=].cardinalityBehavior = #multiple
* action[=].definitionCanonical = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/RemoteMonitoringCOPDSymptomSurveyQuestionnaire"
* action[+].id = "2"
* action[=].prefix = "2."
* action[=].title = "Weekly Feedback Survey"
* action[=].description = "Weekly Feedback Survey"
* action[=].textEquivalent = "A weekly survey giving an opportunity for patients to provide feedback towards their experience with the program"
* action[=].priority = #routine
* action[=].goalId = "copd-monitoring"
* action[=].subjectCodeableConcept = $resource-types#Patient "Patient"
* action[=].subjectCodeableConcept.text = "Patient"
* action[=].type = $action-type#create "Create"
* action[=].type.text = "Create"
* action[=].requiredBehavior = #must
* action[=].precheckBehavior = #yes
* action[=].cardinalityBehavior = #multiple
* action[=].definitionCanonical = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/RemoteMonitoringFeedbackSurveyQuestionnaire"
* action[+].id = "3"
* action[=].prefix = "3."
* action[=].title = "Observation Activity"
* action[=].description = "Take an observation"
* action[=].priority = #routine
* action[=].goalId = "copd-monitoring"
* action[=].subjectCodeableConcept = $resource-types#Patient "Patient"
* action[=].subjectCodeableConcept.text = "Patient"
* action[=].type = $action-type#create "Create"
* action[=].type.text = "Create"
* action[=].requiredBehavior = #must
* action[=].precheckBehavior = #yes
* action[=].cardinalityBehavior = #multiple
* action[=].definitionCanonical = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/ActivityDefinition/RemoteMonitoringObservationRequest"