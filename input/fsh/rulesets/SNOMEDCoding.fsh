RuleSet: SNOMEDCoding(code,display)
// sets up CodeableConcept referencing SNOMED

* coding.system = $sct
* coding.code = #"{code}"
* coding.display = "{display}"
