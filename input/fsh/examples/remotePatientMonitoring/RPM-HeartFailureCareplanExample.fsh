Alias: $goal-priority = http://terminology.hl7.org/CodeSystem/goal-priority

Instance: GOFSH-GENERATED-ID-0
InstanceOf: CarePlan
Usage: #example
* contained = goal0
* instantiatesCanonical = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/PlanDefinition/RemoteMonitoringHeartFailureCarePlanTemplate"
* status = #draft
* intent = #plan
* title = "Template for Remote Monitoring Heart Failure Care Plan"
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZZZ1234"
* encounter = Reference(Encounter/9c66b62c-a16a-482c-b97c-8cea67ce18a6)
* created = "2025-08-18"
* author.identifier.use = #official
* author.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* author.identifier.value = "ZZZ6789"
* goal = Reference(goal0)
* activity[0].detail.instantiatesCanonical = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/RemoteMonitoringHeartFailureSymptomSurveyQuestionnaire"
* activity[=].detail.status = #not-started
* activity[+].detail.instantiatesCanonical = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/RemoteMonitoringFeedbackSurveyQuestionnaire"
* activity[=].detail.status = #not-started
* lifecycleStatus = #proposed
* category.text = "Heart Failure Monitoring"
* priority = $goal-priority#medium-priority "Medium Priority"
* priority.text = "Medium Priority"
* description.text = "Activities in the Remote Monitoring Careplan for Cardiac Heart Failure are intended to support the person and whanau managing their heart failure through capturing and sharing information relating to their needs and experience, symptoms and observations. These activities are in alignment with the NZ Health pathways base heart failure pathway."
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZZZ1234"
* startCodeableConcept.text = "Assessed as suitable"
* statusDate = "2025-08-18"
* expressedBy.type = "Patient"
* expressedBy.identifier.use = #official
* expressedBy.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* expressedBy.identifier.value = "ZZZ1234"