Instance: OutreachServiceRequestExample
InstanceOf: OutreachServiceRequest
Usage: #example
Description: "An example ManaakiNgaTahi ServiceRequest"
* status = #active

* extension[statusReason].valueCodeableConcept = #outreach "Needs Outreach"


* intent = #plan
* doNotPerform = false
* code = $hnz-task-code-codes#Immunization "Immunization Outreach"
* authoredOn = "2022-12-08"

* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZXP7823"

* requester = Reference(OutreachOrganizationExample)
* performer = Reference(OutreachOrganizationExample)

* locationReference.type = "locationReference"
* locationReference.identifier.use = #official
* locationReference.identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* locationReference.identifier.value = "FZZ999-B"

// * supportingInfo[0].reference = "https://external-fhir-server.com/ImmunizationRecommendation/123"

* meta.versionId = "1"
* meta.lastUpdated = "2022-12-08T20:58:28.205Z"
* meta.source = "Whaihua"
* meta.tag[+].system = $hnz-task-source-system-codes
* meta.tag[=].code = #Whaihua "Whaihua"
