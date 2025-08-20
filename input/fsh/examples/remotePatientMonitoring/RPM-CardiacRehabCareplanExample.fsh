Alias: $goal-priority = http://terminology.hl7.org/CodeSystem/goal-priority

Instance: CardiacRehabCarePlanExample
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
* created = "2025-08-20"
* author.identifier.use = #official
* author.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* author.identifier.value = "ZZZ6789"
* goal = Reference(goal0)

Instance: CardiacRehabGoal
InstanceOf: Goal
Usage: #inline
* lifecycleStatus = #proposed
* category.text = "Cardiac Rehab Monitoring"
* priority = $goal-priority#medium-priority "Medium Priority"
* priority.text = "Medium Priority"
* description.text = "Independence post cardiac event"
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZZZ1234"
* startCodeableConcept.text = "Assessed as suitable"
* statusDate = "2025-08-20"
* expressedBy.type = "Patient"
* expressedBy.identifier.use = #official
* expressedBy.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* expressedBy.identifier.value = "ZZZ1234"