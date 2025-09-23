Profile: RPMEducationalTask
Parent: Task
Id: rpm-educational-task
Title: "RPM Educational Content Delivery Task"
Description: "Profile for tasks used to deliver educational content to patients in a remote patient monitoring context."


// elements modified
* basedOn 0..* MS
* basedOn only Reference(CarePlan)

* code 1..1 MS
* code from RPMEducationModuleVS (required) 

* for 1..1 MS
* for only Reference(Patient)

* owner 0..1
* owner only Reference(Patient)

* requester 1..1 MS
* requester only Reference(Practitioner)

* status 1..1

// excluded elements
* businessStatus 0..0
* contained 0..0
* encounter 0..0
* focus 0..0
* implicitRules 0..0   
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* insurance 0..0
* language 0..0
* location 0..0
* performerType 0..0
* reasonCode 0..0
* reasonReference 0..0
* restriction 0..0
* statusReason 0..0
