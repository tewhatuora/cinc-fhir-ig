Instance: DHOPatientEncounterExample
InstanceOf: DHOPatientEncounter
Description: "An example Dunedin Hospital Outpatient Encounter"
Usage: #example

* id = "dho-outpatient-encounter-instance"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOPatientEncounter"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F12345"
* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

* status = #arrived
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "Ambulatory"
* serviceType = http://terminology.hl7.org/CodeSystem/service-type#397 "Outpatients"
* serviceType.text = "Outpatients"

* subject.type = "Patient"
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZZZ0008"
* subject.display = "Mr Test Patient | Male | 2001-01-01"

* participant.type = $v3-ParticipationType#CON "consultant"
* participant.type.text = "Consultant"
* participant.period.start = "2025-09-03T02:30:35Z"
* participant.period.end = "2025-09-03T03:30:35Z"
* participant.individual.type = "Practitioner"
* participant.individual.identifier insert HPIProviderNumber(99ZZZX)
* participant.individual.display = "Dr Dottie McStuffins"
* period.start = "2025-09-03T02:30:35Z"
* length = 1 'h' "hour"
* contained[+] = DHOClinicLocation
* location[+].status = #completed
* location.location = Reference(DHOClinicLocation)
* location.period.start = "2025-09-03T02:30:35Z"
* location.period.end = "2025-09-03T03:30:35Z"
