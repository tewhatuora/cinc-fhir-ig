Instance: DHOEncounterUpdateExample
InstanceOf: DHOEncounter
Description: "An example Dunedin Hospital outpatient update Encounter"
Usage: #example

* id = "dho-outpatient-encounter-update-instance"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOEncounter"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F12345"
* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx


* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "Ambulatory"
* subject.type = "Patient"
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZZZ0008"
* subject.display = "Mr Test Patient | Male | 2001-01-01"
