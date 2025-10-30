Instance: RPMEducationalTask-GroupExample
InstanceOf: RPMEducationalTask
Title: "Group/Unit Level Educational Content Delivery Task Example"
Description: "Task assigned to deliver an educational group/unit (as a part of a syllabus) to a patient on a Remote Patient Monitoring CarePlan."
Usage: #example

* status = #requested
* intent = #plan
* basedOn = Reference(CarePlan/cp-12345)
* partOf = Reference(Task/syllabus-level-task)
* code = RPMEducationModuleCS#your-heart-group
* for = Reference(Patient/example)
* owner = Reference(Patient/example)
* requester = Reference(Practitioner/example)
* authoredOn = "2025-08-27T09:00:00+10:00"