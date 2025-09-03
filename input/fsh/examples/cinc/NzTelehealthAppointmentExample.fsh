Instance: NzTelehealthAppointmentExample
InstanceOf: SharedCareAppointment
Usage: #example
Title: "NZ Telehealth Appointment Example"
Description: "Example of a telehealth appointment for 24/7 telehealth services"

* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/appointment-identifier"
* identifier.value = "APT123456"

* status = #fulfilled

* created = "2025-01-01T09:30:00+13:00"

* start = "2025-01-01T10:00:00+13:00"
* end = "2025-01-01T10:17:00+13:00"

* reasonCode = $sct#386661006 "Fever"

* participant[0].type = #patient
* participant[0].actor.reference = "Patient/ZZZ0008"
* participant[0].actor.type = "Patient"
* participant[0].actor.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* participant[0].actor.identifier.value = "ZZZ0008" 
* participant[0].status = #accepted