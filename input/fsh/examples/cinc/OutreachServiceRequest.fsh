Instance: OutreachServiceRequestExample
InstanceOf: OutreachServiceRequest
Usage: #example
Description: "An example of an outreach ServiceRequest"
* status = #active
* extension[statusReason].valueCodeableConcept = $hnz-service-request-status-reason-codes#ReferredToOutreach
* intent = #plan
* code = $hnz-task-code-codes#Immunization "Immunization Outreach"
* priority = #routine

* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZXP7823"
* subject.display = "John Doe"

* requester.identifier.use = #official
* requester.identifier.system = "https://hub.services.digital.health.nz/ns/hip-application-id"
* requester.identifier.value = "123456"
* requester.display = "AIR/ISM"

* performer.identifier.use = #official
* performer.identifier.system = "https://hub.services.digital.health.nz/ns/hip-application-id"
* performer.identifier.value = "987654"
* performer.display = "Whaihua"

* locationReference.identifier.use = #official
* locationReference.identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* locationReference.identifier.value = "FZZ999-B"

* meta.versionId = "1"
* meta.lastUpdated = "2022-12-08T20:58:28.205Z"
* meta.source = "Whaihua"
