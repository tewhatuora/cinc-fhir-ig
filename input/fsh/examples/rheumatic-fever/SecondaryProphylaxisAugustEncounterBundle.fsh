Instance: SecondaryProphylaxisAugustEncounterBundle
InstanceOf: Bundle
Description: "Example of a Bundled POST which creates instances of Encounter, MedicationStatement and QuestionnaireResponse in one operation"
Usage: #example

* meta.profile = Canonical(Bundle)
* meta.versionId = "1"
* meta.lastUpdated = "2023-11-27T00:00:00Z"

* type = #transaction

// See rulesets/RFSecondaryProphylaxisAppointmentRecording.fsh for code of the three ruleset macros used below
// Bundle ENTRY 1/3 Encounter
* entry[0].fullUrl = "http://example.org/fhir/Encounter/1"      // FHIRWorks will make up interinstance references in this Bundle
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"
* entry[=].resource.resourceType = "Encounter"
* entry[=].resource insert makeEncounterContent

// ENTRY 2/3 Medication Statement
* entry[+].fullUrl = "http://example.org/fhir/MedicationStatement/1"      // FHIRWorks will make up interinstance references in this Bundle
* entry[=].request.method = #POST
* entry[=].request.url = "MedicationStatement"
* entry[=].resource.resourceType = "MedicationStatement"
* entry[=].resource insert makeMedStmtContent

// ENTRY 3/3 QuestionnaireResponse Statement
* entry[+].fullUrl = "http://example.org/fhir/QuestionnaireResponse/1"      // FHIRWorks will make up interinstance references in this Bundle
* entry[=].request.method = #POST
* entry[=].request.url = "QuestionnaireResponse"
* entry[=].resource.resourceType = "QuestionnaireResponse"
* entry[=].resource insert makeQRContent
