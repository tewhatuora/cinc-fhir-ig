Instance: DHOAppointmentResponseExample
InstanceOf: DHOAppointmentResponse
Usage: #example
Description: "An example Dunedin Hospital Outpatient Appointment Response for Patient to Confirm Appointment"

* meta.lastUpdated = "2025-11-11T02:29:24.844Z"
* meta.versionId = "2"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOAppointmentResponse"

* appointment = Reference(DHOClinicAppointmentExample)
* participantStatus = #accepted
