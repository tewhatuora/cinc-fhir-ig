Instance: NzGpOnlineEncounterExample
InstanceOf: OnlineGPEncounter
Usage: #example
Title: "NZ GP Online Encounter Example"
Description: "Example of an online GP encounter for 24/7 telehealth services"

* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F12345-A"
* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

* identifier.use = #official
* identifier.system = "https://onlinegp-provider-name.co.nz/ns/encounter-identifier"
* identifier.value = "ENC123456789"

* status = #finished

* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#VR "virtual"

* type = $sct#719410009 "Video consultation"

* subject.type = "Patient"
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZZZ0008"

// * serviceProvider.reference = "Organization/GZZ999-9"
* serviceProvider.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* serviceProvider.identifier.value = "GZZ999-9"
* serviceProvider.type = #organization

// * participant[0].individual.reference = "Practitioner/12345"
* participant[0].individual.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* participant[0].individual.identifier.value = "99ZZFX"
* participant[0].type = $sct#224535009 "Registered nurse (occupation)"
* participant[0].period.start = "2025-01-01T10:00:00+13:00"
* participant[0].period.end = "2025-01-01T10:17:00+13:00"

* appointment[0].reference = "Appointment/NzTelehealthAppointmentExample"

* period.start = "2025-01-01T10:00:00+13:00"
* period.end = "2025-01-01T10:17:00+13:00"

* length.value = 17
* length.unit = "min"
* length.system = "http://unitsofmeasure.org"
* length.code = #min

* extension[diagnosis].valueCodeableConcept.coding.system = "http://snomed.info/sct"
* extension[diagnosis].valueCodeableConcept.coding.code = #195662009
* extension[diagnosis].valueCodeableConcept.coding.display = "Acute viral pharyngitis"
* extension[diagnosis].valueCodeableConcept.text = "Acute viral pharyngitis"

* hospitalization.dischargeDisposition = $sct#182991002 "Treatment given"

* extension[cscHolder].valueBoolean = true

* extension[regCode].valueString = "enrolled"
