CodeSystem: DHOTelecomValidationCS
Id: DHOTelecomValidationCS
Title: "DHOPatient Telecom Validation Status"
Description: "Indicates the validation status of a telecom."
* ^url = "https://fhir-ig.digital.health.nz/shared-care/CodeSystem/DHOTelecomValidationCS"
* ^status = #active
* ^publisher = "Te Whatu Ora"
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
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from DHOTelecomValidationVS (required)
