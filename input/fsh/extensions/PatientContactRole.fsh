Extension: PatientContactRole
Id: hnz-patient-contact-role
Title: "HNZ Patient Contact Role"
Context: Patient.contact
Description: "The nature of the functional role between the patient and the contact person."
* extension contains role 0..1
* extension[role].value[x] only Coding
* extension[role].value[x] from $vs-patient-contact-role (required)
