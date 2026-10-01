Extension: DHOInitialPatientClass
Id: DHOInitialPatientClass
Title: "DHO Initial Patient Class"
Context: Appointment
Description: "The encounter class (e.g. ambulatory, inpatient, emergency) the patient is expected to be classified as at the start of the encounter resulting from this appointment."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from $vs-encounter-class (extensible)
* valueCodeableConcept.coding 1..1
* valueCodeableConcept.coding.system 1..1
* valueCodeableConcept.coding.code 1..1
* valueCodeableConcept.text 0..0
