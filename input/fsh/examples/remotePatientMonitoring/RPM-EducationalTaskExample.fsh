Instance: RPMEducationalTaskExample
InstanceOf: Task
Title: "Educational Content Delivery Task"
Description: "Task assigned to deliver educational content to a patient."
Usage: #example

* status = #requested
* intent = #plan
* basedOn = Reference(CarePlan/cp-12345)
* code = http://snomed.info/sct#311401005 "Educational material (product)"
* code.text = "Educational module on COVID-19 vaccination side effects"
* for = Reference(Patient/example)
* owner = Reference(Patient/example)
* requester = Reference(Practitioner/example)
* authoredOn = "2025-08-27T09:00:00+10:00"