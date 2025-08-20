Alias: $sct = http://snomed.info/sct
Alias: $resource-types = http://hl7.org/fhir/resource-types

Instance: RPMObservationRequest
InstanceOf: ActivityDefinition
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/ActivityDefinition/RemoteMonitoringObservationRequest"
* name = "RemoteMonitoringObservationRequest"
* identifier.use = #official
* identifier.value = "RemoteMonitoringObservationRequest"
* version = "0.1.6"
* language = #en-NZ
* title = "Vital Signs Observation Service Request"
* publisher = "Te Whatu Ora - Health New Zealand"
* status = #active
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* experimental = true
* code = $sct#61746007 "Taking patient vital signs (procedure)"
* purpose = "Makes ServiceRequests which seek vital signs collection observations for use in Remote Monitoring Pilot"
* usage = "For use in Remote Monitoring Pilot"
* kind = #ServiceRequest
* intent = #order
* priority = #urgent
* doNotPerform = false
* subjectCodeableConcept = $resource-types#Patient "Patient"
* subjectCodeableConcept.text = "Patient"
* description = "Remote Monitoring Observation Request"
* participant.type = #patient
* timingTiming.repeat.frequency = 3
* timingTiming.repeat.frequencyMax = 3
* timingTiming.repeat.period = 1
* timingTiming.repeat.periodUnit = #d
* timingTiming.repeat.boundsPeriod.start = "2022-11-01"
* timingTiming.repeat.boundsPeriod.end = "2022-11-29"