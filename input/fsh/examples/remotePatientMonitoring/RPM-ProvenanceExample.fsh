Alias: $rpm-education-module-cs = http://example.org/fhir/CodeSystem/rpm-education-module-cs
Alias: $provenance-participant-type = http://terminology.hl7.org/CodeSystem/provenance-participant-type

Instance: RPMEducationCompletionExample
InstanceOf: RPMEducationProvenance
Usage: #example
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/RPMEducationProvenance"
* extension.url = "http://example.org/fhir/StructureDefinition/extension-education-module"
* extension.valueCodeableConcept = $rpm-education-module-cs#safe-prescribing "Example Module"
* target = Reference(Task/ExampleEducationalTask)
* recorded = "2025-08-13T09:00:00Z"
* agent.type = $provenance-participant-type#patient "Patient"
* agent.who.type = "Patient"
* agent.who.identifier.use = #official
* agent.who.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* agent.who.identifier.value = "{{NHI}}"
* agent.who.display = "{{NHI-Name}}"
