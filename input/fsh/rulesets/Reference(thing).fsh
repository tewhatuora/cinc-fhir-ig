// ****************************************************************************
// sets up a logical reference to an HPI organisation by HPI org number (GXXNNN-C)
RuleSet: ReferenceOrganisation(hpi-organisation-id, org-name)


* type = "NzOrganization"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier.value = "{hpi-organisation-id}"
* display = "{org-name}"

// ****************************************************************************
// sets up a logical reference to a pracititioner by HPI CPN number (NNXXXX)
RuleSet: ReferencePractitioner(hpi-practitioner-cpn, practitioner-name)

* type = "Practitioner"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-practitioner-id"
* identifier.value = "{hpi-practitioner-cpn}"
* display = "{practitioner-name}"

// ****************************************************************************
// sets up a Reference(RelatedPerson) using the display name of the person only
RuleSet: ReferenceRelatedPerson(person-name)

* type = "RelatedPerson"
* display = "{person-name}"
