Instance: RFAdmissionEncounterExample
InstanceOf: ManaakiNgaTahiEncounter
Usage: #example
Description: "An example Encounter for a patient being admitted to NZ Rheumatic Fever Service care"
* status = #arrived
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#VR "virtual"
* serviceType = http://terminology.hl7.org/CodeSystem/service-type#397 "Outpatients"
* serviceType.text = "Outpatients"
* priority = http://terminology.hl7.org/CodeSystem/v3-ActPriority#R "routine"
* subject = Reference(NzPatientExample) "Pania Sorethroat"
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "SCF7824"
* participant.type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#REF "referrer"
* participant.type.text = "referrer"
* participant.individual.type = "Practitioner"
* participant.individual.identifier.use = #official
* participant.individual.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* participant.individual.identifier.value = "99ZZYY"
* participant.individual.display = "Dr James Herriot"
* period.start = "2023-04-10T15:22:42.836Z"
* period.end = "2023-04-10T16:22:42.836Z"
* reasonCode = http://snomed.info/sct#3457005 "Patient referral"
* reasonCode.text = "Patient referral"
* diagnosis.condition = Reference(RFConditionExample)
* diagnosis.use = http://terminology.hl7.org/CodeSystem/diagnosis-role#AD "Admission diagnosis"
* diagnosis.use.text = "Admission diagnosis"
* diagnosis.rank = 1
* location.location.type = "Location"
* location.location.identifier.use = #official
* location.location.identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* location.location.identifier.value = "F3P016-B"
* location.location.display = "Auckland Regenerative Clinic Limited"
* location.status = #completed
* location.physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#bu "Building"
* location.physicalType.text = "Building"
* serviceProvider.type = "Organization"
* serviceProvider.identifier.use = #official
* serviceProvider.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* serviceProvider.identifier.value = "G0B036-C"
* serviceProvider.display = "Auckland Regenerative Clinic Limited"
* meta.versionId = "1"
* meta.lastUpdated = "2023-04-12T03:22:46.481Z"
