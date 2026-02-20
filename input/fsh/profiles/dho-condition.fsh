Profile: DHOCondition
Parent: Condition
Description: "This profile derives from the Condition Resource for Dunedin Outpatients"
* ^version = "1.0.1"
* ^purpose = "This profile is used to represent outpatient conditions for Dunedin Hospital Outpatients."
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ

// ---------------------------------------------------------
// Inserts
// ---------------------------------------------------------
* insert DHOProfilePatient(subject)

// ---------------------------------------------------------
// Constraints
// ---------------------------------------------------------
* onset[x] only dateTime
* abatement[x] only dateTime
* recorder only Reference(Practitioner)

// --------------------------------------------------------
// Short descriptions
// --------------------------------------------------------
* onsetDateTime ^short = "Must be in UTC timezone on the FHIR server"
* abatementDateTime ^short = "Must be in UTC timezone on the FHIR server"

// ---------------------------------------------------------
// Cardinality tightening
// ---------------------------------------------------------
* asserter 0..0
* bodySite 0..0
* contained 0..0
* encounter 0..0
* evidence 0..0
* identifier 0..0
* implicitRules 0..0
* language 0..0
* modifierExtension 0..0
* note 0..0
* stage 0..0
