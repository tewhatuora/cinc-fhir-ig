Instance: 7367fe8b-cded-49e0-a6d6-963d1c0c14c3
InstanceOf: ActivityDefinition
Usage: #example
* purpose = "Template for the description of the request to create a Vital Signs Observations"
* meta.lastUpdated = "2022-10-31T21:22:01.840Z"
* meta.versionId = "2"
* status = #active
* intent = #order
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* experimental = true
* url = "https://api.integration-dev.covid19.health.nz/cinc/fhir/R4/tenant/moh/ActivityDefinition/7367fe8b-cded-49e0-a6d6-963d1c0c14c3"
* name = "COVID19ObservationVitalSignsRequestTemplate"
* language = #en-NZ
* code.text = "Request for Mobile App Performed Observations"
* doNotPerform = false
* publisher = "Te Whatu Ora - Health New Zealand"
* kind = #ServiceRequest
* subjectCodeableConcept = $resource-types#Patient "Patient"
* subjectCodeableConcept.text = "Patient"
* usage = "Used to support ease of creation of COVID-19 Care in the Community Careplans with an Observations request activity."
* version = "1.0.0"
* priority = #urgent
* subtitle = "COVID-19 Request for Vital Signs Observation Collection"
* description = "COVID-19 Request for Vital Signs Observation Collection"
* participant.type = #patient
* title = "COVID-19 Observation Vital Signs Request"