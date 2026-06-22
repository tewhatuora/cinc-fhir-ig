Instance: NzPharmacyMedicationDispenseExample
InstanceOf: NzPharmacyMedicationDispense
Usage: #example
Title: "NZ Pharmacy Medication Dispense Example"
Description: "Example of a New Zealand pharmacy medication dispense for Paracetamol 500mg tablets"

* identifier[0].use = #official
* identifier[0].system = "https://standards.digital.health.nz/ns/nzeps-unique-transaction-number"
* identifier[0].value = "UTN-2025-98765432"

* status = #completed

* medicationCodeableConcept.coding[0].system = "http://snomed.info/sct"
* medicationCodeableConcept.coding[0].code = #322236009
* medicationCodeableConcept.coding[0].display = "Paracetamol 500mg tablet"
* medicationCodeableConcept.coding[1].system = "https://nzulm.org.nz/nzmt"
* medicationCodeableConcept.coding[1].code = #10037191000116105
* medicationCodeableConcept.coding[1].display = "paracetamol 500 mg tablet"
* medicationCodeableConcept.text = "Paracetamol 500mg tablet"

* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZZZ0008"
* subject.display = "James Pond"

* performer[0].actor.type = "Organization"
* performer[0].actor.identifier.use = #official
* performer[0].actor.identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* performer[0].actor.identifier.value = "FZZ999-B"
* performer[0].actor.display = "Wellness Pharmacy Auckland"

* authorizingPrescription[0].type = "MedicationRequest"
* authorizingPrescription[0].identifier.use = #official
* authorizingPrescription[0].identifier.system = "https://standards.digital.health.nz/ns/nzeps-prescription-id"
* authorizingPrescription[0].identifier.value = "RX-2025-00012345"
* authorizingPrescription[0].display = "Paracetamol 500mg - Dr Sarah Smith"

* quantity.value = 100
* quantity.unit = "tablets"
* quantity.system = "http://snomed.info/sct"
* quantity.code = #385055001

* daysSupply.value = 30
* daysSupply.unit = "days"
* daysSupply.system = "http://unitsofmeasure.org"
* daysSupply.code = #d

* whenPrepared = "2025-01-15T14:30:00+13:00"
* whenHandedOver = "2025-01-15T15:00:00+13:00"

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

// NZePS Script Number Local extension
* extension[nzepsScriptNoLocal].valueString = "SCR-001-2025"
