Profile: ManaakiNgaTahiEncounter
Parent: Encounter
Description: "Encounter FHIR resource for Manaaki Nga Tahi"
* ^version = "2"

// elements modified
* diagnosis.condition only Reference(Condition)
* participant.individual only Reference(Practitioner)
* period 1..1
* period ^short = "Start | end values must be in UTC timezone on the FHIR server"
* subject only Reference(Patient)
// elements prohibited
* account 0..0
// * appointment 0..0     // v0.3.0 re-enabled for rheumatic fever
* basedOn 0..0
* classHistory 0..0
// * contained 0..0       // v0.4.0 re-enabled for rheumatic fever
* diagnosis.extension 0..0
* diagnosis.id 0..0
* diagnosis.modifierExtension 0..0
* episodeOfCare 0..0
// * extension 0..0     v0.1.3 relief from prohibition of CarePlan extension
* hospitalization 0..0
* identifier 0..0
* implicitRules 0..0
* language 0..0
* location.extension 0..0
* location.id 0..0
* location.modifierExtension 0..0
* modifierExtension 0..0
* participant.extension 0..0
* participant.id 0..0
* participant.modifierExtension 0..0
* partOf 0..0
* reasonReference 0..0
* statusHistory.extension 0..0
* statusHistory.id 0..0
* statusHistory.modifierExtension 0..0
* type 0..0
