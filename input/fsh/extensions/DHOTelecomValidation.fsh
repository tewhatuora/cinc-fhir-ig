CodeSystem: DHOTelecomValidationCS
Title: "DHOPatient Telecom Validation Status"
Description: "Indicates the validation status of a telecom."
* ^caseSensitive = true
* ^experimental = false
* #failed "Failed"
* #inpro "In Progress"
* #ntval "Not Validated"
* #pend "Pending"
* #valid "Validated"

ValueSet: DHOTelecomValidationVS
Id: DHOTelecomValidationVS
Title: "Allowed Telecom Validation Statuses"
Description: "Allowed validation statuses for DHOPatient"
* include codes from system DHOTelecomValidationCS


Extension: DHOTelecomValidation
Id: dho-telecom-validation
Title: "DHO Telecom Validation Status"
Description: "The Validation status of the telecom. Used when the system type is 'email', 'sms', or 'phone' with use 'mobile'."
Context: ContactPoint
* valueCodeableConcept from DHOTelecomValidationVS (required)
