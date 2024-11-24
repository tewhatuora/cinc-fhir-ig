////////////////////////////////////////////////////
// sets up a logical ref. to Organisation resource in another server using HPI org ID as identifier (GXXNNN-C)
RuleSet: ReferenceOrganisation(hpi-organisation-id, org-name)

* type = "Organization"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier.value = "{hpi-organisation-id}"
* display = "{org-name}"

// sets up a logical ref. to Practitioner resource in another server using HPI CPN as identifier (NNXXXX)
RuleSet: ReferencePractitioner(hpi-practitioner-cpn, practitioner-name)

* type = "Practitioner"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-practitioner-id"
* identifier.value = "{hpi-practitioner-cpn}"
* display = "{practitioner-name}"


// sets up an addresses[] literal reference to the named example Condition in this IG
RuleSet: AddressesConditionExample(example-name)
* addresses[+] = Reference({example-name})
* addresses[=].type = "Condition"


// makes a Patient-type reference, using specified element name and local patient instance
RuleSet: PatientInstanceReference(element-name,instance-path)

* {element-name} = Reference({instance-path})
* {element-name}.type = "Patient"


// adds a Consent.data.reference as a relative reference to the instance specified by the path expression
RuleSet: ConsentInstanceDataRef(instance-path)

* data[+].meaning = #instance
* data[=].reference = Reference({instance-path})


// sets up a logical reference to a Patient resource in another server using the NHI as logical identifier
RuleSet: NHIPatientRef(nhi-id, patient-name)

* type = "Patient"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "{nhi-id}"
* display = "{patient-name}"