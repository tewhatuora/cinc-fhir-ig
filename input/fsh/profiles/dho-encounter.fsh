RuleSet: CommonEncounterConstraints

* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#NZ

// ---------------------------------------------------------
// Inserts
// ---------------------------------------------------------
* insert DHODerivedMetaDataRules
* insert DHOLocalIdentifierDocs(participant.individual)
* insert DHOLocalIdentifierDocs(serviceProvider)
* insert DHOProfilePatient(subject)

// ---------------------------------------------------------
// Identifier metadata
// ---------------------------------------------------------
* identifier 0..1
  * use 0..1 MS
  * system 0..1 MS
  * value 1..1 MS
  * period 0..0
  * assigner 0..1
  * id 0..0
* identifier ^short = "External (provider) and Health NZ location identifiers"

// ---------------------------------------------------------
// Cardinality tightening
// ---------------------------------------------------------
* status 1..1
* statusHistory 0..*
* status 1..1
* statusHistory 0..*
* class 1..1
* classHistory 0..*
* type 0..*
* serviceType 0..1
* priority 0..1
* episodeOfCare 0..*
* basedOn 0..*
* participant 0..*
* participant.period 0..1
* period 0..1
* length 0..1
* reasonCode 0..*
* reasonReference 0..*
* diagnosis 0..*
* account 0..*
* hospitalization 0..1
* serviceProvider 0..1
* partOf 0..1

// ---------------------------------------------------------
// Reference constraints
// ---------------------------------------------------------
* appointment only Reference(DHOAppointment)
* participant.individual only Reference(NzPractitioner or NzPractitionerRole or RelatedPerson)
* serviceProvider only Reference(NzOrganization or Organization)
* partOf only Reference(DHOEncounter or Encounter)

// --------------------------------------------------------
// Fix class to Ambulatory
// --------------------------------------------------------
* class = $v3-ActCode#AMB "Ambulatory"

// --------------------------------------------------------
// Short Descriptions
// --------------------------------------------------------
* participant ^short = "Practitioners involved in the encounter"
* period ^short = "Start | end values must be in UTC timezone on the FHIR server"
* length ^short = "Quantity of time the encounter lasted (less time absent)"
* hospitalization ^short = "Admission & discharge details (if applicable)"
* partOf ^short = "A preceding Encounter (e.g. discharged from ED then readmitted)"

// --------------------------------------------------------
// Location
// --------------------------------------------------------
* location 0..*
  * ^short = "(Sub)Locations where the patient has been during the encounter"
  * location only Reference(Location)
  * status 0..1
  * period 0..1

Profile: DHOEncounter
Parent: Encounter
Id: DHOEncounter
Title: "Dunedin Hospital Outpatient Encounter"
Description: "This profile derives from the [Encounter](https://hl7.org/fhir/R4B/encounter.html) Resource, for use in the Dunedin Hospital Outpatients context."
* ^version = "1.0.1"
* insert CommonEncounterConstraints
* appointment 0..*

Profile: DHOEncounterCreate
Parent: Encounter
Id: DHOEncounterCreate
Title: "Dunedin Hospital Outpatient Encounter Create"
Description: "This profile derives from the [Encounter](https://hl7.org/fhir/R4B/encounter.html) Resource, for use in the Dunedin Hospital Outpatients context."
* ^version = "1.0.1"
* insert CommonEncounterConstraints
* appointment 1..*

Profile: DHOEncounterUpdate
Parent: Encounter
Id: DHOEncounterUpdate
Title: "Dunedin Hospital Outpatient Encounter Update"
Description: "This profile derives from the [Encounter](https://hl7.org/fhir/R4B/encounter.html) Resource, for use in the Dunedin Hospital Outpatients context."
* ^version = "1.0.1"
* insert CommonEncounterConstraints
* appointment 1..*
