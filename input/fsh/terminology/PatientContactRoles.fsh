ValueSet: VSPatientContactRole
Id: vs-patient-contact-role
Title: "ValueSet for Patient Contact Role"
Description: "Codes representing patient contact roles. Extended for use with R4B, but included in R5 and later."
* ^url = "https://fhir-ig.digital.health.nz/shared-care/ValueSet/vs-patient-contact-role"
* ^status = #draft
* include codes from system CSPatientContactRole

CodeSystem: CSPatientContactRole
Id: cs-patient-contact-role
Title: "CodeSystem for Patient Contact Role"
Description: "CodeSystem for patient contact roles. Extended for use with R4B, but included in R5 and later."
* ^url = "https://fhir-ig.digital.health.nz/shared-care/CodeSystem/cs-patient-contact-role"
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^experimental = false
* ^caseSensitive = true
* ^purpose = "Enables a patient contact to be coded with a Role."
* ^status = #active

* #wit "Witness"
* #econ "Emergency Contact"
* #not "Notary Public"
* #nok "Next of Kin"
* #guard "Guardian"
* #depend "Dependent"
* #caregiver "Caregiver"
* #intprter "Interpreter"
* #powatt "Power of Attorney"
* #hpowatt "Healthcare Power of Attorney"
