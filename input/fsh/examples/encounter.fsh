Instance: EncounterExample
InstanceOf: ManaakiNgaTahiEncounter
Usage: #example
Description: "An example ManaakiNgaTahi Encounter"
* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#VR "virtual"
* serviceType = http://terminology.hl7.org/CodeSystem/service-type#124 "General Practice"
* serviceType.text = "General Practice"
* priority = http://terminology.hl7.org/CodeSystem/v3-ActPriority#T "timing critical"
* priority.text = "Timing Critical"

* subject = Reference(CareyCarrington) "Carey Carrington"
* subject.type = "Patient"

* participant.type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CON "consultant"
* participant.type.text = "Consultant"
* participant.period.start = "2022-09-20T01:23:34.459Z"
* participant.period.end = "2022-09-20T02:23:34.459Z"
* participant.individual.type = "Practitioner"
* participant.individual.identifier.use = #official
* participant.individual.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* participant.individual.identifier.value = "99ZZFX"
* participant.individual.display = "Dottie McStuffins"
* period.start = "2022-09-20"
* period.end = "2022-09-27"
* length = 7 'd' "days"
* reasonCode = http://snomed.info/sct#270427003 "patient-initiated encounter"
* reasonCode.text = "Patient Initiated Encounter"
* diagnosis.condition = Reference(ConditionExample)
* diagnosis.use = http://terminology.hl7.org/CodeSystem/diagnosis-role#CC "Chief complaint"
* diagnosis.use.text = "Chief Complaint"
* diagnosis.rank = 1
* location.location.type = "Location"
* location.location.identifier.use = #official
* location.location.identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* location.location.identifier.value = "FZZ999-B"
* location.location.display = "GP Clinic"
* location.status = #completed
* location.physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#bu "Building"
* location.physicalType.text = "Building"
* location.period.start = "2022-09-20"
* location.period.end = "2022-09-20"
* serviceProvider.type = "Organization"
* serviceProvider.identifier.use = #official
* serviceProvider.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* serviceProvider.identifier.value = "GZZ994-K"
* serviceProvider.display = "Well Health Trust PHO"
* meta.versionId = "1"
* meta.lastUpdated = "2022-09-20T02:23:35.662Z"
