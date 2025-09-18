Instance: DHOutpatientEncounterUpdateExample
InstanceOf: DHOutpatientEncounterUpdate
Description: "An example Dunedin Hospital Outpatient Encounter update"
Usage: #example

* id = "dho-outpatient-encounter-update-instance"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOutpatientEncounter"

* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "Ambulatory"
* subject = Reference(CareyCarrington) "Carey Carrington"
* appointment = Reference(DHOutpatientClinicAppointmentExample)
* contained[+] = DHOClinicLocation
* location[+].status = #completed
* location.location = Reference(DHOClinicLocation)
* location.period.start = "2025-09-03T02:30:35Z"
* location.period.end = "2025-09-03T03:30:35Z"
* period.start = "2025-09-03T02:30:35Z"
* period.end = "2025-09-03T03:30:35Z"
