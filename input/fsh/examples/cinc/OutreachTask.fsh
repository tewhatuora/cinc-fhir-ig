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

// * input[0].type.coding[0].system = "http://hl7.org/fhir/resource-types"
// * input[=].type.coding[=].code = #ImmunizationRecommendation
* input[0].type.text = "Immunization Recommendation"
* input[0].valueReference.reference = "https://fhir-server.com/ImmunizationRecommendation/123"
// * input[=].valueReference.type = #ImmunizationRecommendation

// * output[0].type.coding[0].system = "http://hl7.org/fhir/resource-types"
// * output[=].type.coding[=].code = #Immunization
* output[0].type.text = "Immunization"
* output[0].valueReference.reference = "https://fhir-server.com/Immunization/123"
// * output[=].valueReference.type = #Immunization

* meta.versionId = "1"
* meta.lastUpdated = "2022-12-08T20:58:28.205Z"
* meta.source = "Whaihua"
