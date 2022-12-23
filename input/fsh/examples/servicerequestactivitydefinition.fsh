Instance: ServiceRequestActivityDefinition
InstanceOf: ServiceRequestActivityDefinition
Usage: #example
Description: "Example of an ActivityDefinition which makes a ManaakiNgaTahi ServiceRequest for vital signs observation capture"
* purpose = "Template for a request seeking vital signs Observations"
* identifier.value = "COVID19MeasurementProcedureRequestTemplate"
* identifier.use = #usual
* meta.lastUpdated = "2022-12-22T01:12:30.454Z"
* meta.versionId = "2"
* status = 	http://hl7.org/fhir/publication-status#active
* intent = #order
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* experimental = true
* url = "https://api.integration-dev.covid19.health.nz/cinc/fhir/R4/tenant/moh/ActivityDefinition/8eea9262-f1dc-412d-b6d6-ee3958e13fa0"
* name = "COVID19ObservationVitalSignsRequestTemplate"
* language = #en-NZ
* code = http://snomed.info/sct#61746007 "Taking patient vital signs (procedure)"
* doNotPerform = false
* publisher = "Te Whatu Ora - Health New Zealand"
* kind = #ServiceRequest
* subjectCodeableConcept = http://hl7.org/fhir/resource-types#Patient "Patient"
* subjectCodeableConcept.text = "Patient"
* usage = "ServiceRequests created from this resource are used to link Observation resources to a CarePlan resource."
* version = "1.0.0"
* priority = #urgent
* subtitle = "Requests collection of vital signs as part of Care Plan monitoring"
* description = "Requests collection of vital signs as part of Care Plan monitoring"
* participant.type = #patient
* title = "Vital Signs Observation Service Request"