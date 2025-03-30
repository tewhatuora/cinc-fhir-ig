Instance: OutreachTaskExample
InstanceOf: OutreachTask
Usage: #example
Description: "An example of an outreach task"
* status = #completed
* intent = #plan
* basedOn = Reference(OutreachServiceRequestExample)

* for.identifier.use = #official
* for.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* for.identifier.value = "ZXP7823"

* input[+].type.coding[+].system = "http://hl7.org/fhir/resource-types"
* input[=].type.coding[=].code = #ImmunizationRecommendation
* input[=].valueReference.identifier.system = "https://air-fhir-server.com"
* input[=].valueReference.identifier.value = "987654"

* output[+].type.coding[+].system = "http://hl7.org/fhir/resource-types"
* output[=].type.coding[=].code = #Immunization
* output[=].valueReference.reference = "https://air-fhir-server.com/Immunization/123"

* meta.versionId = "1"
* meta.lastUpdated = "2022-12-08T20:58:28.205Z"
* meta.source = "Whaihua"
