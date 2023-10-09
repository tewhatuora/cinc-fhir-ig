RuleSet: ReferencePractitioner(hpi-practitioner-cpn, practitioner-name)
// sets up a logical reference to a pracititioner by HPI CPN number (NNXXXX)

* type = "Practitioner"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-practitioner-id"
* identifier.value = "{hpi-practitioner-cpn}"
* display = "{practitioner-name}"
