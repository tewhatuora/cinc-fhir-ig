Instance: NDHOutpatientAppointmentExample
InstanceOf: NDHOutpatientAppointment
Usage: #example
Description: "An example New Dunedin Hospital Outpatient Appointment"
* identifier.value = "#fbdb8d66-1390-22c7-89a6-a9a75d65d3e6"
* status = #booked
* participant[0].required = #required
* participant[0].status  = #accepted
* participant[0].actor = Reference(CareyCarrington) "Carey Carrington"
