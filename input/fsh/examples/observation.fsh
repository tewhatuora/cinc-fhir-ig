Instance: undefined
InstanceOf: Observation
Usage: #example
* basedOn = Reference(ServiceRequest/ca7768b7-d31d-4dc0-b67a-fdb942513b89)
* code = http://loinc.org#LG47-3 "VitalsRoutine"
* component[0].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[=].valueQuantity.value = 101
* component[=].valueQuantity.unit = "mmHg"
* component[+].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity.value = 73
* component[=].valueQuantity.unit = "mmHg"
* component[+].code = http://loinc.org#8867-4 "Heart rate"
* component[=].valueQuantity.value = 80
* component[=].valueQuantity.unit = "beats per minute"
* component[+].code = http://loinc.org#80404-7 "Heart Rate Variability SD"
* component[=].valueQuantity.value = 55
* component[=].valueQuantity.unit = "milliseconds"
* component[+].code = http://loinc.org#9279-1 "Breathing Rate"
* component[=].valueQuantity.value = 17
* component[=].valueQuantity.unit = "breaths per minute"
* component[+].code = http://loinc.org#59408-5 "Oxygen saturation"
* component[=].valueQuantity.value = 96
* component[=].valueQuantity.unit = "percent"
* component[+].code = http://loinc.org#95606-0 "Stress level - 0-10 numeric rating"
* component[=].valueInteger = 84
* component[+].code = http://loinc.org#93038-8 "Stress Level"
* component[=].valueString = "Normal"
* effectiveDateTime = "2022-11-07T13:35:40.425+13:00"
* performer.display = "Mary Monroe"
* performer.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* performer.identifier.use = #official
* performer.identifier.value = "ZAA8386"
* performer.type = "Patient"
* status = #final
* subject.display = "Mary Monroe"
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.use = #official
* subject.identifier.value = "ZAA8386"
* subject.type = "Patient"