Instance: NzPharmacyMedicationRequestExample
InstanceOf: NzPharmacyMedicationRequest
Usage: #example
Title: "NZ Pharmacy Medication Request Example"
Description: "Example of a New Zealand pharmacy medication request for Paracetamol 500mg tablets"

* identifier[0].use = #official
* identifier[0].system = "https://standards.digital.health.nz/ns/nzeps-prescription-id"
* identifier[0].value = "RX-2025-00012345"

* identifier[1].use = #secondary
* identifier[1].system = "https://provider-org-name.co.nz/ns/script-number"
* identifier[1].value = "SCR-001-2025"

* status = #active
* intent = #order

* authoredOn = "2025-01-15T10:30:00+13:00"

* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZZZ0008"
* subject.display = "James Pond"

* requester.type = "Practitioner"
* requester.identifier.use = #official
* requester.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* requester.identifier.value = "99ZZSE"
* requester.display = "Dr Sarah Smith"

* performer.type = "Organization"
* performer.identifier.use = #official
* performer.identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* performer.identifier.value = "FZZ999-B"
* performer.display = "Wellness Pharmacy Auckland"

* recorder.type = "Practitioner"
* recorder.identifier.use = #official
* recorder.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* recorder.identifier.value = "99ZZLM"
* recorder.display = "Locum Dr Johnson"

* medicationCodeableConcept.coding[0].system = "http://snomed.info/sct"
* medicationCodeableConcept.coding[0].code = #322236009
* medicationCodeableConcept.coding[0].display = "Paracetamol 500mg tablet"
* medicationCodeableConcept.coding[1].system = "https://nzulm.org.nz/nzmt"
* medicationCodeableConcept.coding[1].code = #10037191000116105
* medicationCodeableConcept.coding[1].display = "paracetamol 500 mg tablet"
* medicationCodeableConcept.text = "Paracetamol 500mg tablet"

* dosageInstruction[0].sequence = 1
* dosageInstruction[0].text = "Take 1-2 tablets every 4-6 hours as needed. Maximum 8 tablets in 24 hours."
* dosageInstruction[0].timing.repeat.frequency = 1
* dosageInstruction[0].timing.repeat.frequencyMax = 2
* dosageInstruction[0].timing.repeat.period = 4
* dosageInstruction[0].timing.repeat.periodMax = 6
* dosageInstruction[0].timing.repeat.periodUnit = #h
* dosageInstruction[0].route.coding[0].system = "http://snomed.info/sct"
* dosageInstruction[0].route.coding[0].code = #26643006
* dosageInstruction[0].route.coding[0].display = "Oral route"
* dosageInstruction[0].doseAndRate[0].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/dose-rate-type"
* dosageInstruction[0].doseAndRate[0].type.coding[0].code = #ordered
* dosageInstruction[0].doseAndRate[0].type.coding[0].display = "Ordered"
* dosageInstruction[0].doseAndRate[0].doseRange.low.value = 500
* dosageInstruction[0].doseAndRate[0].doseRange.low.unit = "mg"
* dosageInstruction[0].doseAndRate[0].doseRange.low.system = "http://unitsofmeasure.org"
* dosageInstruction[0].doseAndRate[0].doseRange.low.code = #mg
* dosageInstruction[0].doseAndRate[0].doseRange.high.value = 1000
* dosageInstruction[0].doseAndRate[0].doseRange.high.unit = "mg"
* dosageInstruction[0].doseAndRate[0].doseRange.high.system = "http://unitsofmeasure.org"
* dosageInstruction[0].doseAndRate[0].doseRange.high.code = #mg

* dispenseRequest.validityPeriod.start = "2025-01-15"
* dispenseRequest.validityPeriod.end = "2025-04-15"
* dispenseRequest.numberOfRepeatsAllowed = 2
* dispenseRequest.quantity.value = 100
* dispenseRequest.quantity.unit = "tablets"
* dispenseRequest.quantity.system = "http://snomed.info/sct"
* dispenseRequest.quantity.code = #385055001
* dispenseRequest.expectedSupplyDuration.value = 30
* dispenseRequest.expectedSupplyDuration.unit = "days"
* dispenseRequest.expectedSupplyDuration.system = "http://unitsofmeasure.org"
* dispenseRequest.expectedSupplyDuration.code = #d

// NZePS Extensions
* extension[nzepsEndorsement].extension[endorsementType].valueCodeableConcept.coding[0].system = "https://standards.digital.health.nz/ns/nzeps-endorsement-type"
* extension[nzepsEndorsement].extension[endorsementType].valueCodeableConcept.coding[0].code = #PSO
* extension[nzepsEndorsement].extension[endorsementType].valueCodeableConcept.coding[0].display = "Practitioner Supply Order"
* extension[nzepsEndorsement].extension[endorsementValue].valueString = "Certified"

* extension[nzepsFundingCategory].valueString = "A1"
