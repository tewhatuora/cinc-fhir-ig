Alias: $goal-priority = http://terminology.hl7.org/CodeSystem/goal-priority

Instance: 639050f1-e486-4fb8-a65b-a6a6dcf47e6d
InstanceOf: CarePlan
Usage: #example
* contained = goal0
* instantiatesCanonical = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/PlanDefinition/RPMCardiacRehabCarePlanTemplate"
* status = #draft
* intent = #plan
* title = "Template for Remote Monitoring Cardiac Rehab Care Plan"
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
* careTeam = Reference(CareTeam/47eb1c76-6956-4fe0-852a-7c745a242f72)
* meta.versionId = "1"
* meta.lastUpdated = "2025-08-18T22:09:29.982Z"

Instance: goal0
InstanceOf: Goal
Usage: #inline
* lifecycleStatus = #proposed
* category.text = "Cardiac Rehab Monitoring"
* priority = $goal-priority#medium-priority "Medium Priority"
* priority.text = "Medium Priority"
* description.text = "TBD"
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