Alias: $sct = http://snomed.info/sct

Instance: RPMObservationServiceRequestExample
InstanceOf: ServiceRequest
Usage: #example
* instantiatesCanonical = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/ActivityDefinition/RemoteMonitoringObservationRequest"
* status = #active
* intent = #order
* priority = #urgent
* doNotPerform = false
* code = $sct#61746007 "Taking patient vital signs (procedure)"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZZZ1234"
* authoredOn = "2025-08-18"
* requester.identifier.use = #official
* requester.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* requester.identifier.value = "ZZZ6789"
* occurrenceTiming.repeat.frequency = 1
* occurrenceTiming.repeat.frequencyMax = 1
* occurrenceTiming.repeat.period = 1
* occurrenceTiming.repeat.periodUnit = #h
* occurrenceTiming.repeat.boundsPeriod.start = "2025-08-19"
* occurrenceTiming.repeat.boundsPeriod.end = "2025-09-18"
* basedOn = Reference(CarePlan/09f09486-f29e-4166-89d5-4b344f3dfc4f)
* performer.identifier.use = #official
* performer.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* meta.versionId = "1"
* meta.lastUpdated = "2025-08-18T22:02:52.748Z"