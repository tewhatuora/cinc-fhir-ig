Instance: ConditionExample
InstanceOf: ManaakiNgaTahiCondition
Usage: #example
Description: "An example ManaakiNgaTahi Condition"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category.coding[0] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis "Encounter Diagnosis"
* category.coding[+] = http://snomed.info/sct#439401001 "Diagnosis"
* category.text = "Diagnosis"
* severity = http://snomed.info/sct#6736007 "Moderate severity"
* code = http://snomed.info/sct#840539006 "COVID-19"
* code.text = "COVID-19"

* subject = Reference(CareyCarrington) "Carey Carrington"
* subject.type = "Patient"

* onsetDateTime = "2022-09-20"
* recordedDate = "2022-09-20"
* recorder.type = "Practitioner"
* recorder.identifier.use = #official
* recorder.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* recorder.identifier.value = "99ZZFX"
* recorder.display = "Dottie McStuffins"
* meta.versionId = "1"
* meta.lastUpdated = "2022-09-20T02:21:06.157Z"
