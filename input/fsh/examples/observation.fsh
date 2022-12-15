Instance: ObservationExample
InstanceOf: ManaakiNgaTahiObservation
Description: "An example ManaakiNgaTahi Observation"
Usage: #example
* basedOn = Reference(ServiceRequestExample)
* identifier.use = #secondary
* identifier.value = "84078e9c-6a70-47e0-9f8e-bf77109c32a0"
* status = #final
* code = http://snomed.info/sct#122869004 "Measurement procedure (procedure)"
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZXP7823"
* subject.display = "Carey Carrington"
* issued = "2022-12-12T04:22:55.965Z"
* performer.type = "Practitioner"
* performer.identifier.use = #official
* performer.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* performer.identifier.value = "99ZZFX"
* performer.display = "Dottie McStuffins"
* component[0].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 73 'mm[Hg]' "mmHg"
* component[+].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 73 'mm[Hg]' "mmHg"
* component[+].code = http://loinc.org#8867-4 "Heart rate"
* component[=].valueQuantity = 44 '/min' "beats/minute"
* component[+].code = http://loinc.org#80404-7 "R-R interval.standard deviation (Heart rate variability)"
* component[=].valueQuantity = 44 'ms' "milliseconds"
* component[+].code = http://loinc.org#9279-1 "Respiratory rate"
* component[=].valueQuantity = 17 '/min' "breaths/minute"
* component[+].code = http://loinc.org#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* component[=].valueQuantity = 96 '%{saturation}' "percent saturation"
* component[+].code = http://loinc.org#95606-0 "Stress level 0-10 24h Max Score"
* component[=].valueQuantity = 8 '{ScoreOf}' "ScoreOf"
* component[+].code = http://loinc.org#93038-8 "Stress Level"
* component[=].valueCodeableConcept = http://snomed.info/sct#304753007 "Perceived stress scale (assessment scale)"
* component[=].valueCodeableConcept.text = "normal"
* component[+].code = http://loinc.org#8310-5 "Body temperature"
* component[=].valueQuantity = 38 'Cel' "degree Celsius"
* component[+].code = http://loinc.org#80296-7 "Patient Mood"
* component[=].valueQuantity = 8 '{ScoreOf}' "ScoreOf"
* meta.versionId = "1"
* meta.lastUpdated = "2022-12-12T04:22:56.607Z"