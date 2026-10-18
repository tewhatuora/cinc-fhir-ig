Instance: UrgentCareEncounterExample
InstanceOf: UrgentCareEncounter
Usage: #example
Title: "Urgent Care Encounter Example"
Description: "Example of an urgent care encounter for walk-in clinic services"

* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F67890-B"
* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy

* identifier.use = #official
* identifier.system = "https://urgentcare-provider-name.co.nz/ns/encounter-identifier"
* identifier.value = "UC987654321"

* status = #finished

* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "Ambulatory"

* type = $sct#185347001 "Encounter for problem"

* subject.type = "Patient"
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZZZ0016"

* serviceProvider.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* serviceProvider.identifier.value = "GZZ888-8"
* serviceProvider.type = #organization

* participant[0].individual.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* participant[0].individual.identifier.value = "56ABCD"
* participant[0].type = $sct#309343006 "Physician (occupation)"
* participant[0].period.start = "2025-02-15T14:30:00+13:00"
* participant[0].period.end = "2025-02-15T15:00:00+13:00"

* reasonCode = $sct#49727002 "Cough"

* period.start = "2025-02-15T14:30:00+13:00"
* period.end = "2025-02-15T15:00:00+13:00"

* priority = $australasian-triage-scale#4

* length.value = 30
* length.unit = "min"
* length.system = "http://unitsofmeasure.org"
* length.code = #min

* extension[diagnosis][0].valueCodeableConcept.coding.system = "http://snomed.info/sct"
* extension[diagnosis][0].valueCodeableConcept.coding.code = #10509002
* extension[diagnosis][0].valueCodeableConcept.coding.display = "Acute bronchitis"
* extension[diagnosis][0].valueCodeableConcept.text = "Acute bronchitis"

* extension[diagnosis][1].valueCodeableConcept.coding.system = "http://snomed.info/sct"
* extension[diagnosis][1].valueCodeableConcept.coding.code = #49727002
* extension[diagnosis][1].valueCodeableConcept.coding.display = "Cough"
* extension[diagnosis][1].valueCodeableConcept.text = "Cough"

* hospitalization.dischargeDisposition = $sct#306689006 "Discharge to home"

* location[+].location.display = "Urgent Care Waiting Area"
* location[=].status = #active
* location[=].period.start = "2025-02-15T14:15:00+13:00"
* location[=].period.end = "2025-02-15T14:30:00+13:00"

* location[+].location.display = "Treatment Room 3"
* location[=].status = #active
* location[=].period.start = "2025-02-15T14:30:00+13:00"
* location[=].period.end = "2025-02-15T15:00:00+13:00"

* extension[cscHolder].valueBoolean = false

* extension[accident].valueBoolean = false

* extension[regCode].valueString = "casual"

* extension[modeOfArrival].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0430#O "Other"
