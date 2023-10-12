Profile: RheumaticFeverCondition
Parent: NzCondition
Description: "This profile contains diagnosis code and adds rheumatic heart disease severity and diagnosis certainty extensions to the base NzCondition resource."
Id: cinc-rheumaticfever-condition

* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^purpose = "Profiles a condition to add severity and diagnostic certainty classifiers used in NZ rheumatic fever secondary secondary prevention"
* ^meta.tag.code = #rheumatic-fever

// elements modified'
* subject only Reference(Patient)
* onset[x] only dateTime
* onsetDateTime obeys fhir-hnz-dateTime-utc-1
* recordedDate obeys fhir-hnz-dateTime-utc-1
* recorder only Reference(Practitioner)
// bind code to the permissible Rf diagnosis at registration codes.
* code 1..1
* code from RheumaticFeverConditionDiagnosisAtRegistrationValueSet (required)
* severity 1..1

// extensions
* extension contains
  RfConditionRhdSeverityExtension named rhdSeverity 1..1 and
  RfConditionRfConditionDiagnosticCertaintyExtension named diagnosticCertainty 1..1

// elements prohibited
* contained 0..0
* implicitRules 0..0
* language 0..0
* modifierExtension 0..0