Instance: OnlineGPAppointmentExample
InstanceOf: OnlineGPAppointment
Usage: #example
Title: "Online GP Appointment Example"
Description: "Example of Appointment for Online GP services"

* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F12345-A"
* meta.tag[hubCorrelationId].system = "https://hub.services.digital.health.nz/ns/correlation-id-type"
* meta.tag[hubCorrelationId].code = #hub-correlation-id
* meta.tag[hubCorrelationId].display = "123e4567-e89b-12d3-a456-426614174000"

* meta.tag[providerCorrelationId].system = "https://hub.services.digital.health.nz/ns/correlation-id-type"
* meta.tag[providerCorrelationId].code = #provider-correlation-id
* meta.tag[providerCorrelationId].display = "PROVIDER-TRACK-99821"

* identifier.use = #official
* identifier.system = "https://provider-org-name.co.nz/ns/appointment-identifier"
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
