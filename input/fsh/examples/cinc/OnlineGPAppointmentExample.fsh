Instance: OnlineGPAppointmentExample
InstanceOf: OnlineGPAppointment
Usage: #example
Title: "Online GP Appointment Example"
Description: "Example of Appointment for Online GP services"

* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F12345-A"
* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

* identifier[appointmentId].use = #official
* identifier[appointmentId].system = "https://provider-org-name.co.nz/ns/appointment-identifier"
* identifier[appointmentId].value = "APT123456"

* identifier[providerId].assigner.type = "Organization"
* identifier[providerId].assigner.identifier.use = #official
* identifier[providerId].assigner.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier[providerId].assigner.identifier.value = "GZZ999-J"

* status = #fulfilled

* created = "2025-01-01T09:30:00+13:00"

* start = "2025-01-01T10:00:00+13:00"
* end = "2025-01-01T10:17:00+13:00"

* reasonCode = $sct#266934004 "Transport problem (finding)"

* participant[patient].actor.type = "Patient"
* participant[patient].actor.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* participant[patient].actor.identifier.value = "ZZZ0008" 
* participant[patient].status = #accepted
