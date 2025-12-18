Instance: DHOPatientAppointmentResponseActorExample
InstanceOf: DHOPatientAppointmentResponse
Usage: #example
Description: "An example Dunedin Hospital Outpatient Appointment Response with Actor"

* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F12345"
* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
* appointment = Reference(DHOPatientClinicAppointmentExample)
* actor = Reference(DHOPatientDrDottyMcStuffins) "Dr Dotty McStuffins"
* participantStatus = #accepted

Instance: DHOPatientAppointmentResponseParticipantTypeExample
InstanceOf: DHOPatientAppointmentResponse
Usage: #example
Description: "An example Dunedin Hospital Outpatient Appointment Response with Participant Type"

* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F12345"
* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

// * identifier.value = "#fbdb8d66-1390-22c7-89a6-a9a75d65d3e6"

* appointment = Reference(DHOPatientClinicAppointmentExample)
//* start = "2025-09-03T02:00:00Z" // UTC equivalent of 2pm NZ
//* end = "2025-09-03T02:30:00Z"   // UTC equivalent
* participantType = $v3-ParticipationType#PPRF
* participantStatus = #accepted
