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
* contained[+] = NDHOClinicLocation
* location[+].status = #completed
* location.location = Reference(NDHOClinicLocation)
* location.period.start = "2025-09-03T02:30:35Z"
* location.period.end = "2025-09-03T03:30:35Z"
