Profile: RheumaticFeverCondition
Parent: NzCondition
Title: "Rheumatic Fever Condition"
Description: "This profile contains diagnosis code and adds rheumatic heart disease severity and diagnosis certainty extensions to the base NzCondition resource."
Id: cinc-rheumaticfever-condition

* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^purpose = "Profiles a condition to add severity and diagnostic certainty classifiers used in NZ rheumatic fever secondary secondary prevention"

// elements modified
* subject only Reference(Patient)
* onset[x] only dateTime
* onsetDateTime obeys fhir-hnz-dateTime-utc-1
* recordedDate obeys fhir-hnz-dateTime-utc-1
* recorder only Reference(Practitioner)

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains NationalSystem 0..*

* identifier[NationalSystem].use = #usual
* identifier[NationalSystem].system 1..
* identifier[NationalSystem].system = $NationalCareCoordinationSystem
* identifier[NationalSystem].value insert MakeProfileIdentifierExample([[Salesforce object id]],[[CON-0206]])


// bind to the permissible SNOMED codes for RF diagnosis at registration.
* code 1..1
* code from rf-condition-diagnosisatregistration-code (required)
* severity 1..1

// extensions
* extension contains
  RfConditionRhdSeverityExtension named rhdSeverity 0..1 and
  RfConditionDiagnosticCertaintyExtension named diagnosticCertainty 0..1

// elements prohibited
* contained 0..0
* implicitRules 0..0
* language 0..0
* modifierExtension 0..0
