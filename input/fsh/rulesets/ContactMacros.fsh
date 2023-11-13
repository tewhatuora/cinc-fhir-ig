Alias: $contact-point-system = http://hl7.org/fhir/contact-point-system

// makes a ContactPoint with specified system, contact string and telecom rank
RuleSet: ContactPoint(contact-system,contact-value,rank)
* system = $contact-point-system#"{contact-system}"
* value = "{contact-value}"
* rank = {rank}

// makes a ^contact with specified name and email
RuleSet: metaContactDetail(contact-name,contact-email)
* ^contact.name = "{contact-name}"
* ^contact.telecom[+].system = $contact-point-system#email
* ^contact.telecom[=].value = "{contact-email}"
