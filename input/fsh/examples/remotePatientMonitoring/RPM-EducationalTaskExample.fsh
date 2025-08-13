Instance: ExampleEducationalTask
InstanceOf: Task
Title: "Educational Content Delivery Task"
Description: "Task assigned to deliver educational content to a patient."
Usage: #example

* status = #requested
* intent = #order
* code = http://snomed.info/sct#311401005 "Educational material (product)"
* for = Reference(Patient/example)
* basedOn[0] = Reference(CarePlan/example-careplan)
* relevantHistory[0] = Reference(Provenance/example-provenance)
* description = "Provide the patient with educational content regarding their condition."
* authoredOn = 2025-08-13T09:00:00Z
* requester = Reference(Practitioner/example-practitioner)
* owner = Reference(Practitioner/example-practitioner)