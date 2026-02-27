Extension: DHOPatientContactRole
Id: dho-patient-contact-role-extension-id
Title: "DHO Patient Contact Role"
Context: Patient.contact
Description: "The nature of the functional role between the patient and the contact person."

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from  vs-patient-contact-role (required)
