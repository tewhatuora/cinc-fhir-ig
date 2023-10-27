RuleSet: CaseNumber(case-id)
// sets up a USUAL identifier to hold an external (salesforce) identifier of an object

* use = #usual
* system = "https://standards.digital.health.nz/ns/rheumatic-fever-identifiers"
* value = "{case-id}"

RuleSet: SalesforceId(salesforce-id)
// sets up a USUAL identifier to hold an external (salesforce) identifier of an object

* use = #usual
* system = "https://standards.digital.health.nz/ns/rheumatic-fever-identifiers"
* value = "{salesforce-id}"


RuleSet: EpisurvId(episurv-id)
// sets up a USUAL identifier to hold an external (salesforce) identifier of an object

* use = #usual
* system = "https://standards.digital.health.nz/ns/rheumatic-fever-identifiers"
* value = "{episurv-id}"


// Set up an element example with the specified label and value 
// Replaces any existing example.
RuleSet: MakeProfileIdentifierExample(example-label,example-value)

* ^example[0].label = "{example-label}"
* ^example[=].valueString = "{example-value}"
