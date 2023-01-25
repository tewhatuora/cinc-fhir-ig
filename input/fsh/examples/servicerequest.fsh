Instance: ObservationsServiceRequestExample
InstanceOf: ManaakiNgaTahiServiceRequest
Usage: #example
Description: "An example ManaakiNgaTahi ServiceRequest"
* instantiatesCanonical = "https://fhir.api-dev.digital.health.nz/R4/ActivityDefinition/a284d0f3-c459-4527-8c0f-6b20dbaae4b0"
* status = #active
* intent = #order
* priority = #urgent
* doNotPerform = false
* code = http://snomed.info/sct#122869004 "Measurement procedure (procedure)"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZXP7823"
* authoredOn = "2022-12-08"
* requester.identifier.use = #official
* requester.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* requester.identifier.value = "99ZZFX"
* occurrenceTiming.repeat.frequency = 3
* occurrenceTiming.repeat.frequencyMax = 3
* occurrenceTiming.repeat.period = 1
* occurrenceTiming.repeat.periodUnit = #d
* occurrenceTiming.repeat.boundsPeriod.start = "2022-12-09"
* occurrenceTiming.repeat.boundsPeriod.end = "2023-01-08"
* basedOn = Reference(CarePlanExample)
* performerType = http://snomed.info/sct#159002008 "Practice nurse (occupation)"
* meta.versionId = "1"
* meta.lastUpdated = "2022-12-08T20:58:28.205Z"