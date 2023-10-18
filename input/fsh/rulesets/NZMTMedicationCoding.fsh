RuleSet: NZMTMedicationCoding(code,display)
// sets up CodeableConcept referencing NZ Medication Terminology

* coding.system = $nzmt
* coding.code = #"{code}"
* coding.display = "{display}"