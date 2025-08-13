Instance: example-provenance
InstanceOf: Provenance
Title: "Example Provenance for Educational Task"
Description: "Provenance record showing the creation of an educational content Task."
Usage: #example

* target[0] = Reference(Task/ExampleEducationalTask)
* recorded = 2025-08-13T09:00:00Z
* agent[0].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
* agent[0].who = Reference(Practitioner/example-practitioner)
* agent[0].role = http://terminology.hl7.org/CodeSystem/contractsignertypecodes#PAT "Patient"
* activity = http://hl7.org/fhir/v3/ActCode#CREATE "create"