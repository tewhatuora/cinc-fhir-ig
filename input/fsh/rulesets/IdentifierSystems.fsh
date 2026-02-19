
// sets up logical ref to an external identifier as the specified NHI number
RuleSet: NHIIdentifier(nhi-id)

* use = #official
* system = "https://standards.digital.health.nz/ns/nhi-id"
* value = "{nhi-id}"


// Common meta.tag rulesets for examples and test data
RuleSet: CorrelationIdTag(tag-code)
* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #{tag-code}
