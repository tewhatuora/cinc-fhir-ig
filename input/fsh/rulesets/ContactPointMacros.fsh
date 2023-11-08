Alias: $contact-point-system = http://hl7.org/fhir/contact-point-system

// inserts a Patient.contact identifying a whanau care team member with role and relationship SNOMED-coded
RuleSet: ContactPoint(contact-system,contact-value,rank)

* system = $contact-point-system#"{contact-system}"
* value = "{contact-value}"
* rank = {rank}
