Instance: EncounterClinicLocation
InstanceOf: NzLocation
Usage: #inline // #inline means this instance MUST NOT be exported as a separate example
* identifier.value = "4211-K01" // Location code, need to determine structure
* name = "Dunedin Hospital Outpatients, Clinic K01"
* partOf.type = "Location"
* partOf.identifier.value = "4211"
* partOf.identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* partOf.display = "Dunedin Hospital"

Instance: NDHOutpatientEncounterExample
InstanceOf: NDHOutpatientEncounter
Description: "An example NDH Outpatient Encounter"
Usage: #example

* id = "ndh-outpatient-encounter-instance"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/NDHOutpatientEncounter"

* status = #arrived
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "Ambulatory"
* serviceType = http://terminology.hl7.org/CodeSystem/service-type#397 "Outpatients"
* serviceType.text = "Outpatients"
* subject = Reference(CareyCarrington) "Carey Carrington"
* participant.type = $v3-ParticipationType#CON "consultant"
* participant.type.text = "Consultant"
* participant.period.start = "2025-09-03T02:30:35Z"
* participant.period.end = "2025-09-03T03:30:35Z"
* participant.individual.type = "Practitioner"
* participant.individual.identifier insert HPIProviderNumber(99ZZZX)
* participant.individual.display = "Dr Dottie McStuffins"
* period.start = "2025-09-03T02:30:35Z"
* length = 1 'h' "hour"
* diagnosis.condition = Reference(ConditionExample)
* diagnosis.use = http://terminology.hl7.org/CodeSystem/diagnosis-role#CC "Chief complaint"
* diagnosis.use.text = "Chief Complaint"
* diagnosis.rank = 1
* contained[+] = EncounterClinicLocation
* location[+].status = #completed
* location.location = Reference(EncounterClinicLocation)
* location.period.start = "2025-09-03T02:30:35Z"
* location.period.end = "2025-09-03T03:30:35Z"


Instance: NDHOutpatientEncounterUpdateExample
InstanceOf: NDHOutpatientEncounter
Description: "An example NDH Outpatient Encounter update"
Usage: #example

* id = "ndh-outpatient-encounter-update-instance"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/NDHOutpatientEncounter"

* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "Ambulatory"
* subject = Reference(CareyCarrington) "Carey Carrington"
* appointment = Reference(NDHOutpatientClinicAppointmentExample)
* contained[+] = EncounterClinicLocation
* location[+].status = #completed
* location.location = Reference(EncounterClinicLocation)
* location.period.start = "2025-09-03T02:30:35Z"
* location.period.end = "2025-09-03T03:30:35Z"
* period.start = "2025-09-03T02:30:35Z"
* period.end = "2025-09-03T03:30:35Z"
* length = 1 'h' "hour"
