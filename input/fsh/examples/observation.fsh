Instance: ObservationExample
InstanceOf: ManaakiNgaTahiObservation
Description: "An example ManaakiNgaTahi Observation"
Usage: #example
* basedOn = Reference(ObservationsServiceRequestExample)
* encounter = Reference(EncounterExample)
* identifier.use = #secondary
* identifier.value = "84078e9c-6a70-47e0-9f8e-bf77109c32a0 (CarePlan which requested Obs)"
* status = #final
* code = $sct#122869004 "Measurement procedure (procedure)"
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
* effectiveDateTime = "2022-12-12T04:22:55.965Z"
* note.authorReference.type = "Practitioner"
* note.authorReference.identifier.use = #official
* note.authorReference.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* note.authorReference.identifier.value = "99ZZFX"
* note.authorReference.display = "Dottie McStuffins"
* note.time = "2023-04-30T22:55:31.987Z"
* note.text = "Patient appears confused"
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
* component[+].code = $loinc#8310-5 "Body temperature"
* component[=].valueQuantity = 38 'Cel' "degree Celsius"
* component[+].code = $loinc#80296-7 "Patient Mood"
* component[=].valueQuantity = 8 '{ScoreOf}' "ScoreOf"
* meta.versionId = "1"
* meta.lastUpdated = "2023-01-26T00:21:56.607Z"