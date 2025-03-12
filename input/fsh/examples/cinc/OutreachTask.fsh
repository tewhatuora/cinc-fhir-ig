Instance: OutreachTaskExample
InstanceOf: OutreachTask
Usage: #example
Description: "An example ManaakiNgaTahi ServiceRequest"
* status = #completed
* intent = #plan
* code = $hnz-task-code-codes#Immunization "Immunization Outreach"

* for.identifier.use = #official
* for.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* for.identifier.value = "ZXP7823"

//requester is a device type resource
* requester = Reference(OutreachOrganizationExample)

* owner.identifier.use = #official
* owner.identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* owner.identifier.value = "FZZ999-B"

* input[0].type.coding[0].system = "http://hl7.org/fhir/resource-types"
* input[=].type.coding[0].code = #ImmunizationRecommendation
* input[=].valueReference.reference = "https://fhir-server.com/ImmunizationRecommendation/123"

* output[0].type.coding[0].system = "http://hl7.org/fhir/resource-types"
* output[=].type.coding[0].code = #Immunization
* output[=].valueReference.reference = "https://fhir-server.com/Immunization/123"

* meta.versionId = "1"
* meta.lastUpdated = "2022-12-08T20:58:28.205Z"
* meta.source = "Whaihua"
* meta.tag[+].system = $hnz-task-last-updated-by-valueset
* meta.tag[=].code = #Whaihua "Whaihua"