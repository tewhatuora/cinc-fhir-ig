Instance: NzTelehealthAppointmentExample
InstanceOf: SharedCareAppointment
Usage: #example
Title: "NZ Telehealth Appointment Example"
Description: "Example of a telehealth appointment for 24/7 telehealth services"

* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F12345-A"
* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/appointment-identifier"
* identifier.value = "APT123456"

* status = #fulfilled

* created = "2025-01-01T09:30:00+13:00"

* start = "2025-01-01T10:00:00+13:00"
* end = "2025-01-01T10:17:00+13:00"

* reasonCode = $sct#266934004 "Transport problem (finding)"

* participant[patient].actor.type = "Patient"
* participant[patient].actor.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* participant[patient].actor.identifier.value = "ZZZ0008" 
* participant[patient].status = #accepted
