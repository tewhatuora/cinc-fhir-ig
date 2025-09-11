Instance: NDHOutpatientAppointmentExample
InstanceOf: NDHOutpatientAppointment
Usage: #example
Description: "An example New Dunedin Hospital Outpatient Appointment"

* meta.profile = Canonical(NDHOutpatientAppointment)
* description = "Outpatient Appointment"
* identifier.value = "#fbdb8d66-1390-22c7-89a6-a9a75d65d3e6"
* status = #booked
* serviceCategory = $sct#78001009 "Hospital-based outpatient orthopedics clinic (environment)"
* serviceType = $sct#394801008 "Trauma and orthopedics"
* specialty = $sct#1345026002 "Orthopedic speciality"
* appointmentType = #FOLLOWUP
* reasonCode =  $sct#2012002 "Fracture of lunate bone of wrist"
* description = "Follow up after breaking wrist"
* participant[+].required = #required
* participant[=].status  = #accepted
* participant[=].actor = Reference(CareyCarrington) "Carey Carrington"
* participant[+].required = #required
* participant[=].type = #PPRF
* participant[=].status = #accepted
* participant[=].actor = Reference(NZDrDottyMcStuffins) "Dr Dotty McStuffins"
* start = "2025-09-03T02:00:00Z" // UTC equivalent of 2pm NZ
* end = "2025-09-03T02:30:00Z"   // UTC equivalent
