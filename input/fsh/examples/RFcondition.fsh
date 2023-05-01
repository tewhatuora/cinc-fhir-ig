Instance: RFConditionExample
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
* severity = http://snomed.info/sct#6736007 "Moderate"
* severity.text = "Moderate"
* code = http://snomed.info/sct#840539006 "COVID-19"
* code.text = "COVID-19"
* subject = Reference(NzPatientExample) "Pania Sorethroat"
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "SCF7824"
* onsetDateTime = "2023-04-05T14:27:01.022Z"
* recordedDate = "2023-04-12"
* recorder.type = "Practitioner"
* recorder.identifier.use = #official
* recorder.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* recorder.identifier.value = "99ZZYY"
* recorder.display = "Dr James Herriot"
* meta.versionId = "1"
* meta.lastUpdated = "2023-04-11T02:27:04.409Z"