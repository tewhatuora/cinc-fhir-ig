RuleSet: ReferenceOrganisation(hpi-organisation-id, org-name)
// sets up a logical reference to an HPI organisation by HPI org number (GXXNNN-C)

* type = "NzOrganization"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier.value = "{hpi-organisation-id}"
* display = "{org-name}"
