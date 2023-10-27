RuleSet: CaseNumber(case-id)
// sets up a USUAL identifier to hold an external (salesforce) identifier of an object

* use = #usual
* system = "https://developer.salesforce.com/docs/atlas.en-us.object_reference.meta/object_reference/sforce_api_objects_case.htm"   // this is just an example and probably incorrect
* value = "{case-id}"

RuleSet: NationalSystemExternalIdentifer(salesforce-id)
// sets up a USUAL identifier to hold an external (salesforce) identifier of an object

* use = #usual
* system = "https://developer.salesforce.com/docs"      // this is just an example and probably incorrect
* value = "{salesforce-id}"


RuleSet: EpisurvNumber(episurv-id)
// sets up a USUAL identifier to hold an external (salesforce) identifier of an object

* use = #usual
* system = "https://episurv.esr.cri.nz/"                // this is just an example and probably incorrect
* value = "{episurv-id}"


// Set up an Identifier element value example with the specified label and value 
// Replaces any existing example.
RuleSet: MakeProfileIdentifierExample(example-label,example-value)

* ^example[0].label = "{example-label}"
* ^example[=].valueString = "{example-value}"

// Set up an Identifier system example with the specified text 

RuleSet: MakeProfileIdentifierSystemExample(system-description)
* ^example[0].valueString = "{system-description}"
