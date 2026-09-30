// ------------------------------
// CodeSystems & ValueSets
// ------------------------------
// Relationship (internal / home / external)
CodeSystem: DHOLocationRelationship
Id: DHOLocationRelationship
Title: "DHO Location Relationship"
Description: "Relationship of the location to the DHO."
* ^caseSensitive = true
* ^experimental = false
* #internal "Internal facility"
* #patient_home "Patient home"
* #external "External facility"

ValueSet: DHOLocationRelationshipVS
Id: DHOLocationRelationshipVS
Title: "Allowed relationship types for DHOLocation"
Description: "Allowed codes describing the relationship of a Location to the DHO (e.g., internal facility, patient home, external facility)."
* include codes from system DHOLocationRelationship

// Physical type (physical / virtual)
CodeSystem: DHOLocationPhysicalType
Id: DHOLocationPhysicalType
Title: "DHO Location Physical Type"
Description: "Whether the location is physical or virtual."
* ^caseSensitive = true
* ^experimental = false
* #physical "Physical site or facility"
* #virtual "Virtual / online / telehealth location"

ValueSet: DHOLocationPhysicalTypeVS
Id: DHOLocationPhysicalTypeVS
Title: "Allowed physical types for DHOLocation"
Description: "Allowed codes indicating whether a Location represents a physical site/facility or a virtual (online/telehealth) location."
* include codes from system DHOLocationPhysicalType

CodeSystem: DHOAppointmentModalityCS
Id: dho-appointment-modality-cs
Title: "DHO Appointment Modality CodeSystem"
Description: "Codes describing how the appointment is delivered."
* ^status = #active
* ^content = #complete
* #in-person "In person" "Appointment is delivered in person at a facility location."
* #telephone "Telephone" "Appointment is delivered remotely by phone."
* #telehealth "Telehealth" "Appointment is delivered remotely by video."
* #home-visit "Home visit" "Appointment is delivered as a clinician visit to the patient's location."

ValueSet: DHOAppointmentModalityVS
Id: dho-appointment-modality-vs
Title: "DHO Appointment Modality ValueSet"
Description: "Allowed modalities for DHO appointments."
* ^status = #active
* include codes from system DHOAppointmentModalityCS
