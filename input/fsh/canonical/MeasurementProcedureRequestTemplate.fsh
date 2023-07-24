Instance: MeasurementProcedureRequestTemplate
InstanceOf: ActivityDefinition
Usage: #definition
Description: "Template for care plan activities that capture of patient vital signs"
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/ActivityDefinition/MeasurementProcedureRequestTemplate"
* id = "MeasurementProcedureRequestTemplate"
* name = "COVID19ObservationVitalSignsRequestTemplate"

* identifier[0].use = #official
* identifier[=].value = "MeasurementProcedureRequestTemplate"
* identifier[=].period.start = "2023-07-25"
* identifier[+].use = #temp
* identifier[=].value = "COVID19MeasurementProcedureRequestTemplate"
* identifier[=].period.end = "2023-07-25"
* version = "0.1.6"
* language = #en-NZ

* title = "Vital Signs Observation Service Request"
* publisher = "Te Whatu Ora - Health New Zealand"
* status = 	http://hl7.org/fhir/publication-status#active
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* experimental = true
* code = http://snomed.info/sct#61746007 "Taking patient vital signs (procedure)"
* purpose = "Makes ServiceRequests which seek vital signs collection observations"
* usage = "For use in COVID-19 Care in the Community care plans to request a vital signs observation."
* kind = #ServiceRequest
* intent = #order
* priority = #urgent
* doNotPerform = false
* subjectCodeableConcept = http://hl7.org/fhir/resource-types#Patient "Patient"
* subjectCodeableConcept.text = "Patient"

* description = "COVID-19 Request Measurement Collection"
* participant.type = #patient
* timingTiming.repeat.frequency = 3
* timingTiming.repeat.frequencyMax = 3
* timingTiming.repeat.period = 1
* timingTiming.repeat.periodUnit = #d
* timingTiming.repeat.boundsPeriod.start = "2022-11-01"
* timingTiming.repeat.boundsPeriod.end = "2022-11-29"