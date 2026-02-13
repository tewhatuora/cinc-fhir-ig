// ------------------------------
// CodeSystems & ValueSets
// ------------------------------

// Relationship (internal / home / external)
CodeSystem: DHOLocationRelationship
Id: DHOLocationRelationship
Title: "DHO Location Relationship"
Description: "Relationship of the location to the DHO."
* #internal "Internal facility"
* #patient_home "Patient home"
* #external "External facility"

ValueSet: DHOLocationRelationshipVS
Id: DHOLocationRelationshipVS
Title: "Allowed relationship types for DHOLocation"
* include codes from system DHOLocationRelationship

// Physical type (physical / virtual)
CodeSystem: DHOLocationPhysicalType
Id: DHOLocationPhysicalType
Title: "DHO Location Physical Type"
Description: "Whether the location is physical or virtual."
* #physical "Physical site or facility"
* #virtual "Virtual / online / telehealth location"

ValueSet: DHOLocationPhysicalTypeVS
Id: DHOLocationPhysicalTypeVS
Title: "Allowed physical types for DHOLocation"
* include codes from system DHOLocationPhysicalType
