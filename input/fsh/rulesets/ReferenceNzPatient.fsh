RuleSet: NzPatientRef(nhi-id, patient-name)
// sets up a Reference(Patient) to a local NzPatient resource as a logical reference by NHI

* type = "Patient"
* reference = "NzPatient/{nhi-id}"
* display = "{patient-name}"
