Instance: ObservationExample
InstanceOf: ManaakiNgaTahiObservation
Description: "An example ManaakiNgaTahi Observation"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2022-11-28T04:39:32.824Z"
* identifier.use = #secondary
* identifier.value = "d319f222-4e01-483c-9a8f-70337a0a090e"
* basedOn = Reference(ServiceRequest/f89f54f7-9391-4c13-89b2-c840d6ce9e14)
* status = #final
* category = $observation-category#vital-signs
* code = $sct#122869004 "Measurement procedure (procedure)"
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZXP7823"
* subject.display = "Carey Carrington"
* issued = "2022-11-28T04:39:32.215Z"
* performer.type = "Patient"
* performer.identifier.use = #official
* performer.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* performer.identifier.value = "ZXP7823"
* performer.display = "Carey Carrington"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 73 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 73 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8867-4 "Heart rate"
* component[=].valueQuantity = 44 '/min' "beats/minute"
* component[+].code = $loinc#80404-7 "R-R interval.standard deviation (Heart rate variability)"
* component[=].valueQuantity = 44 'ms' "milliseconds"
* component[+].code = $loinc#9279-1 "Respiratory rate"
* component[=].valueQuantity = 17 '/min' "breaths/minute"
* component[+].code = $loinc#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* component[=].valueQuantity = 96 '%{saturation}' "percent saturation"
* component[+].code = $loinc#95606-0 "Stress level 0-10 24h Max Score"
* component[=].valueQuantity = 8 '{ScoreOf}' "ScoreOf"
* component[+].code = $loinc#93038-8 "Stress Level"
* component[=].valueCodeableConcept = $sct#304753007 "Perceived stress scale (assessment scale)"
* component[=].valueCodeableConcept.text = "normal"