Instance: NDHOutpatientAppointmentResponseExample
InstanceOf: NDHOutpatientAppointmentResponse
Usage: #example
Description: "An example New Dunedin Hospital Outpatient Appointment Update"

* identifier.value = "#fbdb8d66-1390-22c7-89a6-a9a75d65d3e6"
* appointment = Reference(NDHOutpatientClinicAppointmentExample)
* start = "2025-09-03T02:00:00Z" // UTC equivalent of 2pm NZ
* end = "2025-09-03T02:30:00Z"   // UTC equivalent
* participantType = #PPRF
* actor = Reference(NZDrDottyMcStuffins) "Dr Dotty McStuffins"
* participantStatus = #accepted
