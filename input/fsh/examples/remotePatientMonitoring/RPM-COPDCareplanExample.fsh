Alias: $goal-priority = http://terminology.hl7.org/CodeSystem/goal-priority

Instance: 09f09486-f29e-4166-89d5-4b344f3dfc4f
InstanceOf: CarePlan
Usage: #example
* contained = goal0
* instantiatesCanonical = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/PlanDefinition/COPDMonitoringInPrimaryCareTemplate"
* status = #active
* intent = #plan
* title = "Chronic obstructive pulmonary disease clinical management plan"
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZZZ1234"
* encounter = Reference(Encounter/0eacc1fa-5669-4b77-98e7-d1b9f2d87c01)
* created = "2025-08-18"
* author.identifier.use = #official
* author.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* author.identifier.value = "ZZZ6789"
* goal = Reference(goal0)
* activity.reference = Reference(ServiceRequest/2acef86c-a113-4c13-a1d1-2ad2958b8b7f)
* meta.versionId = "2"
* meta.lastUpdated = "2025-08-18T22:02:59.113Z"

Instance: goal0
InstanceOf: Goal
Usage: #inline
* lifecycleStatus = #proposed
* category.text = "COPD Monitoring"
* priority = $goal-priority#medium-priority "Medium Priority"
* priority.text = "Medium Priority"
* description.text = "Activities in the Remote Monitoring Careplan for COPD are intended to support the person and whanau managing their COPD through capturing and sharing information relating to their needs and experience, symptoms and observations. These activities are in alignment with the NZ Health pathways base COPD pathway."
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