// **** **** **** **** **** ****
// sets up a Quantity based on a value and standard unit of measure
RuleSet: UnitOfMeasureQuantity(value,unit,code)
* value = {value}
* unit = "{unit}"
* system = $UoM
* code = #"{code}"

// **** **** **** **** **** ****
// handy functions for making Observation components
// make a coded observation component that is observed present (true) or absent (false)
RuleSet: ObservationPresent(code, display, presentNotAbsent)
* code.coding.system = $sct
* code.coding.code = #"{code}"
* code.coding.display = "{display}"
* valueBoolean = {presentNotAbsent}

// make an coded observation component with a dataAbsentReason of unknown
RuleSet: ObservationUnknown(code, display)
* code.coding.system = $sct
* code.coding.code = #"{code}"
* code.coding.display = "{display}"
* dataAbsentReason.coding.system = $obs-dataabsentreason
* dataAbsentReason.coding.code = #unknown
* dataAbsentReason.coding.display = "Unknown"

// make an coded observation component with an measured quantity
RuleSet: ObservationQuantity(code, display, mvalue, munit, mcode)
* code.coding.system = $sct
* code.coding.code = #"{code}"
* code.coding.display = "{display}"
* valueQuantity.value = {mvalue}
* valueQuantity.unit = "{munit}"
* valueQuantity.system = $UoM
* valueQuantity.code = #"{mcode}"

// make an coded observation component with an interpretation code
RuleSet: ObservationInterpretation(code, display, icode, idisplay)
* code.coding.system = $sct
* code.coding.code = #"{code}"
* code.coding.display = "{display}"
* interpretation.coding.system = $obs-interpretation
* interpretation.coding.code = #"{icode}"
* interpretation.coding.display = "{idisplay}"

// make an coded observation component with a measured quantity AND an interpretation code
RuleSet: ObservationQuantityAndInterpretation(code, display, mvalue, munit, mcode, icode, idisplay)
* code.coding.system = $sct
* code.coding.code = #"{code}"
* code.coding.display = "{display}"
* valueQuantity.value = {mvalue}
* valueQuantity.unit = "{munit}"
* valueQuantity.system = $UoM
* valueQuantity.code = #"{mcode}"
* interpretation.coding.system = $obs-interpretation
* interpretation.coding.code = #"{icode}"
* interpretation.coding.display = "{idisplay}"
