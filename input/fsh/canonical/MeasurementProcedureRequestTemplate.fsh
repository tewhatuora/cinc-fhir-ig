Instance: MeasurementProcedureRequestTemplate
InstanceOf: ActivityDefinition
Usage: #definition
Description: "Template for care plan activities that capture of patient vital signs"
* purpose = "Makes ServiceRequests seeking vital signs Observations"
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/ActivityDefinition/MeasurementProcedureRequestTemplate"
* id = "MeasurementProcedureRequestTemplate"
* name = "COVID19ObservationVitalSignsRequestTemplate"
* identifier.value = "COVID19MeasurementProcedureRequestTemplate"
* identifier.use = #usual
* kind = #ServiceRequest
* title = "Vital Signs Observation Service Request"
* publisher = "Te Whatu Ora - Health New Zealand"
* status = 	http://hl7.org/fhir/publication-status#active
* intent = #order
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* experimental = true
* language = #en-NZ
* code = http://snomed.info/sct#61746007 "Taking patient vital signs (procedure)"
* doNotPerform = false
* subjectCodeableConcept = http://hl7.org/fhir/resource-types#Patient "Patient"
* subjectCodeableConcept.text = "Patient"
* usage = ""For use in COVID-19 Care in the Community care plans to request a vital signs observation."
* version = "0.1.6"
* priority = #urgent
* description = "COVID-19 Request Measurement Collection"
* participant.type = #patient