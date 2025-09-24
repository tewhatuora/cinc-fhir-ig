Instance: DHOutpatientAppointmentResponseExample
InstanceOf: DHOutpatientAppointmentResponse
Usage: #example
Description: "An example Dunedin Hospital Outpatient Appointment Update"

* identifier.value = "#fbdb8d66-1390-22c7-89a6-a9a75d65d3e6"
* appointment = Reference(DHOutpatientClinicAppointmentExample)
* start = "2025-09-03T02:00:00Z" // UTC equivalent of 2pm NZ
* end = "2025-09-03T02:30:00Z"   // UTC equivalent
* participantType = $v3-ParticipationType#PPRF
* actor = Reference(DHOutpatientDrDottyMcStuffins) "Dr Dotty McStuffins"
* participantStatus = #accepted
