Instance: NzTelehealthEncounterExample
InstanceOf: SharedCareEncounter
Usage: #example
Title: "NZ Telehealth Encounter Example"
Description: "Example of a telehealth encounter for 24/7 telehealth services"

* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F12345"

* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/telehealth-token"
* identifier.value = "TH123456789"

* status = #finished

* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#VR "Virtual"

* type = $sct#185317003 "Telephone consultation"

* subject.type = "Patient"
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZZZ0008"
* subject.display = "Mr Test Patient | Male | 2001-01-01"

* serviceProvider.reference = "Organization/GZZ999-9"
* serviceProvider.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* serviceProvider.identifier.value = "GZZ999-9"

* participant[0].individual.reference = "Practitioner/12345"
* participant[0].type = https://standards.digital.health.nz/ns/participant-type#ATND
* participant[0].period.start = "2025-01-01T10:00:00+13:00"
* participant[0].period.end = "2025-01-01T10:17:00+13:00"

* appointment[0].reference = "Appointment/SharedCareAppointmentExample"

* reasonCode = $sct#386661006 "Fever"

* period.start = "2025-01-01T10:00:00+13:00"
* period.end = "2025-01-01T10:17:00+13:00"

* priority = $australasian-triage-scale#3

* length.value = 17
* length.unit = "min"
* length.system = "http://unitsofmeasure.org"
* length.code = #min

* diagnosis[0].condition.reference = "Condition/viral-infection"
* diagnosis[0].use = http://terminology.hl7.org/CodeSystem/diagnosis-role#AD "Admission diagnosis"

* hospitalization.dischargeDisposition = $sct#306689006 "Discharge to home"
* hospitalization.admitSource = $sct#305956004 "Referral by physician"

* location[+].location.display = "Clinic Waiting Room"
* location[=].status = #active
* location[=].period.start = "2025-01-01T09:45:00+13:00"
* location[=].period.end = "2025-01-01T10:00:00+13:00"

* location[+].location.display = "Consulting Room 2"
* location[=].status = #active
* location[=].period.start = "2025-01-01T10:00:00+13:00"
* location[=].period.end = "2025-01-01T10:17:00+13:00"

* extension[cscNumber].valueIdentifier.use = #official
* extension[cscNumber].valueIdentifier.system = "https://standards.digital.health.nz/ns/csc-id"
* extension[cscNumber].valueIdentifier.value = "123456789"

* extension[accident].valueBoolean = false

* extension[regCode].valueString = "enrolled"

* extension[modeOfArrival].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0430#A "Ambulance"