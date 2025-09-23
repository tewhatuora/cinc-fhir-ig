Instance: RPMEducationalTask-ModuleExample
InstanceOf: RPMEducationalTask
Title: "Module Level Educational Content Delivery Task Example"
Description: "Task assigned to deliver an educational module to a patient on a Remote Patient Monitoring CarePlan."
Usage: #example

* status = #requested
* intent = #plan
* basedOn = Reference(CarePlan/cp-12345)
* partOf = Reference(Task/group-level-task)
* code = RPMEducationModuleCS#your-heart-module
* for = Reference(Patient/example)
* owner = Reference(Patient/example)
* requester = Reference(Practitioner/example)
* authoredOn = "2025-08-27T09:00:00+10:00"