Instance: OutreachTaskExample
InstanceOf: OutreachTask
Usage: #example
Description: "An example ManaakiNgaTahi ServiceRequest"
* status = #requested
* intent = #plan
* code = http://snomed.info/sct#789540001 "Immunization overdue (finding)"

* for.identifier.use = #official
* for.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* for.identifier.value = "ZXP7823"

* requester.identifier.use = #official
* requester.identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* requester.identifier.value = "FZZ999-B"

* output[0].type.coding[0].system = "http://hl7.org/fhir/resource-types"
* output[0].type.coding[0].code = #ImmunizationRecommendation
* output[0].valueReference.reference = "https://external-fhir-server.com/ImmunizationRecommendation/123"

* meta.versionId = "1"
* meta.lastUpdated = "2022-12-08T20:58:28.205Z"