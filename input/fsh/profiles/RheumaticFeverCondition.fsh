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
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier contains NationalSystem 0..*

// This slice allows (0 or more) use=USUAL identifier references for linking to external 'national' systems.  

* identifier[NationalSystem] ^short = "This slice lets clients link rheumatic fever conditions to corresponding records in external systems eg. Salesforce"

* identifier[NationalSystem].use 1..1
* identifier[NationalSystem].use = #usual

* identifier[NationalSystem].system 0..1        // system Uri may (SHOULD) be specified but it's up to clients to do this.
* identifier[NationalSystem].system insert MakeProfileIdentifierSystemExample([[Uri that defines the type of external identifier]])

// In this slice, clients MUST set a type taken from known external identifier type codes
* identifier[NationalSystem].type 1..1      
* identifier[NationalSystem].type from ExternalSystemIdentifierTypeValueSet

// a value MUST be given and we give an example here
* identifier[NationalSystem].value 1..1
* identifier[NationalSystem].value insert MakeProfileIdentifierExample([[Salesforce object id]],[[CON-0206]])

* identifier[NationalSystem].id 0..0       // don't want this kind of thing
* identifier[NationalSystem].extension 0..0       // don't want this kind of thing



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
