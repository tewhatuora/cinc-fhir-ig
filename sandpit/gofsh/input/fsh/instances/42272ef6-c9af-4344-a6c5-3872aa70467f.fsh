Instance: 42272ef6-c9af-4344-a6c5-3872aa70467f
InstanceOf: Observation
Usage: #example
* subject.type = "Patient"
* subject.identifier.value = "ZXP7823"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.display = "Carey Carrington"
* component[0].code = $loinc#8480-6 "Systolic Blood Pressure"
* component[=].valueQuantity.value = 150
* component[=].valueQuantity.unit = "mm[Hg]"
* component[+].code = $loinc#8462-4 "Diastolic Blood Pressure"
* component[=].valueQuantity.value = 90
* component[=].valueQuantity.unit = "mm[Hg]"
* meta.lastUpdated = "2022-11-01T19:38:40.813Z"
* meta.versionId = "1"
* status = #final
* issued = "2022-11-01T19:38:40.609Z"
* code.text = "Type of Observation (this should be replaced with an appropriate LOINC Code)"
* performer.type = "Patient"
* performer.identifier.value = "ZXP7823"
* performer.identifier.use = #official
* performer.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* performer.display = "Carey Carrington"
* basedOn = Reference(b69665f9-d347-40f5-aed1-2897dfad0148)