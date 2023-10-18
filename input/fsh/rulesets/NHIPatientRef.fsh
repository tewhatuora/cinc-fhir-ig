RuleSet: NHIPatientRef(nhi-id, patient-name)
// sets up a Reference(Patient) to a resource using the NHI as logical identifier

* type = "Patient"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "{nhi-id}"
* display = "{patient-name}"
