Instance: DHOEncounterCreateExample
InstanceOf: DHOEncounterCreate
Description: "An example Dunedin Hospital outpatient create Encounter"
Usage: #example
* id = "dho-outpatient-encounter-create-instance"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOEncounterCreate"

* status = #arrived
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "Ambulatory"
* appointment = Reference(DHOClinicAppointmentExample)
* subject.identifier insert NHIIdentifier(ZXP7823)
* subject.display = "Carey Carrington"
* subject.type = "Patient"
