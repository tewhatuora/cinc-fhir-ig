Instance: RPMEducationalTask-SyllabusExample
InstanceOf: RPMEducationalTask
Title: "Syllabus Level Educational Content Delivery Task"
Description: "Task assigned to deliver an educational syllabus to a patient on a Remote Patient Monitoring CarePlan."
Usage: #example

* status = #requested
* intent = #plan
* basedOn = Reference(CarePlan/cp-12345)
* code = RPMEducationModuleCS#cardiac-rehab-syllabus
* for = Reference(Patient/example)
* owner = Reference(Patient/example)
* requester = Reference(Practitioner/example)
* authoredOn = "2025-08-27T09:00:00+10:00"