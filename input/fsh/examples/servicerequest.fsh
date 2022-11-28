Instance: ExampleObservationsServiceRequest
InstanceOf: ServiceRequest
Usage: #example
* subject.identifier.value = "ZXP7823"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* authoredOn = "2022-10-31"
* instantiatesCanonical = "https://api.integration-uat.covid19.health.nz/cinc/fhir/R4/tenant/moh/ActivityDefinition/be729ee9-cc9c-44bf-910b-c920ecabc717"
* meta.lastUpdated = "2022-10-31T04:15:13.309Z"
* meta.versionId = "1"
* status = #active
* priority = #urgent
* intent = #order
* code.text = "Request for Mobile App Performed Observations"
* doNotPerform = false
* basedOn = Reference(CarePlan/4ea290a2-97f7-4298-add5-c640d2df4bed)
* requester.identifier.value = "99ZZFX"
* requester.identifier.use = #official
* requester.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"