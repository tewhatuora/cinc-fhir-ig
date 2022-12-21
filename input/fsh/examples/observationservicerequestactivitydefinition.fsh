Instance: ObservationServiceRequestActivityDefinition
InstanceOf: ManaakiNgaTahiActivityDefinition
Usage: #example
Description: "An example ManaakiNgaTahi ActivityDefinition"
* purpose = "Template for the description of the request to create a Vital Signs Observations"
* identifier.value = "COVID19MeasurementProcedureRequestTemplate"
* identifier.use = #usual
* meta.lastUpdated = "2022-11-02T01:12:30.454Z"
* meta.versionId = "2"
* status = #active
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
* usage = "Used to support ease of creation of COVID-19 Care in the Community Careplans with an Observations request activity."
* version = "1.0.0"
* priority = #urgent
* subtitle = "COVID-19 Request for Vital Signs Observation Collection"
* description = "COVID-19 Request for Vital Signs Observation Collection"
* participant.type = #patient
* title = "COVID-19 Observation Vital Signs Request"