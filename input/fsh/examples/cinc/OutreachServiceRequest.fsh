Instance: OutreachServiceRequestExample
InstanceOf: OutreachReferralServiceRequest
Usage: #example
Description: "An example ManaakiNgaTahi ServiceRequest"
* status = #active
* intent = #plan
* doNotPerform = false
* code = http://snomed.info/sct#789540001 "Immunization overdue (finding)"
* authoredOn = "2022-12-08"

* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZXP7823"

* requester.identifier.use = #official
* requester.identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* requester.identifier.value = "FZZ999-B"

* supportingInfo[0].reference = "https://external-fhir-server.com/ImmunizationRecommendation/123"

* meta.versionId = "1"
* meta.lastUpdated = "2022-12-08T20:58:28.205Z"
