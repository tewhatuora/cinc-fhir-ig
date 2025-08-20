Alias: $sct = http://snomed.info/sct
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Instance: RPMobservationExample
InstanceOf: Observation
Usage: #example
* basedOn = Reference(ServiceRequest/346c236d-ab64-4d0e-b640-dd4ed4c6a7db)
* identifier.use = #secondary
* identifier.value = "09f09486-f29e-4166-89d5-4b344f3dfc4f"
* device = Reference(device-1)
* contained = device-1
* status = #final
* code = $sct#122869004 "Measurement procedure (procedure)"
* category = $observation-category#vital-signs
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZZZ1234"
* subject.display = "Carey Carrington"
* issued = "2022-03-09T21:30:00.000Z"
* performer.type = "Patient"
* performer.identifier.use = #official
* performer.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* performer.identifier.value = "ZZZ1234"
* performer.display = "Carey Carrington"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 129 'mm[Hg]' "mmHg"
* component[=].referenceRange.low = 110 'mm[Hg]' "mmHg"
* component[=].referenceRange.high = 130 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 73 'mm[Hg]' "mmHg"
* component[=].referenceRange.low = 110 'mm[Hg]' "mmHg"
* component[=].referenceRange.high = 130 'mm[Hg]' "mmHg"
* component[+].code = $loinc#80404-7 "R-R interval.standard deviation (Heart rate variability)"
* component[=].valueQuantity = 12 'ms' "milliseconds"
* component[=].referenceRange.low = 10 'ms' "milliseconds"
* component[=].referenceRange.high = 80 'ms' "milliseconds"
* component[+].code = $loinc#9279-1 "Respiratory rate"
* component[=].valueQuantity = 12 '/min' "breaths/minute"
* component[=].referenceRange.low = 10 '/min' "breaths/minute"
* component[=].referenceRange.high = 20 '/min' "breaths/minute"
* component[+].code = $loinc#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* component[=].valueQuantity = 94 '%{saturation}' "percent saturation"
* component[=].referenceRange.low = 90 '%{saturation}' "percent saturation"
* component[=].referenceRange.high = 100 '%{saturation}' "percent saturation"
* component[+].code = $loinc#93038-8 "Stress Level"
* component[=].valueCodeableConcept = $sct#304753007 "Perceived stress scale (assessment scale)"
* component[=].valueCodeableConcept.text = "high"
* meta.versionId = "1"
* meta.lastUpdated = "2025-08-18T22:06:37.048Z"

Instance: device-1
InstanceOf: Device
Usage: #inline
* type = $sct#314869000 "Audio and Visual Equipment"
* type.text = "Binah AI"
* manufacturer = "Binah"