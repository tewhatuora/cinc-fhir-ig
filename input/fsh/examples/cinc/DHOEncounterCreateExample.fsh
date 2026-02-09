Instance: DHOEncounterCreateExample
InstanceOf: DHOEncounterCreate
Description: "An example Dunedin Hospital outpatient create Encounter"
Usage: #example
* id = "dho-outpatient-encounter-create-instance"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
* status = #arrived
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "Ambulatory"
* appointment = Reference(DHOClinicAppointmentExample)
* subject.type = "Patient"
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZZZ0008"
* subject.display = "Mr Test Patient | Male | 2001-01-01"
