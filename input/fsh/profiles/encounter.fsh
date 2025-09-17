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

Profile: NDHOutpatientEncounter
Parent: Encounter
Title: "New Dunedin Hospital Outpatient Get Encounter"
Description: "This profile derives from the [Encounter](https://hl7.org/fhir/R4B/encounter.html) Resource, for use in the New Dunedin Hospital Outpatients context."

* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^version = "0.0.2"
* ^purpose = "New Dunedin Hospital Outpatient Encounter"
* ^derivation = #constraint

* ^purpose = "Describe the New Dunedin Hospital Outpatient Encounter resource profile"
* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>New Dunedin Hospital Outpatient Encounter profile</div>"

* identifier 0..1
* meta.profile 1..*
* status 1..1
* statusHistory 0..*
* class 1..1
* classHistory 0..*
* type 0..*
* serviceType 0..1
* priority 0..1
* subject only Reference(Patient)
* episodeOfCare 0..*
* basedOn 0..*
* participant 0..*
* appointment 0..*
* period 0..1
* period ^short = "Start | end values must be in UTC timezone on the FHIR server"
* length 0..1
* reasonCode 0..*
* reasonReference 0..*
* diagnosis 0..*
* account 0..*
* hospitalization 0..1
* location 0..*
* serviceProvider 0..1
* partOf 0..1

Profile: NDHOutpatientEncounterUpdate
Parent: Encounter
Title: "New Dunedin Hospital Outpatient Update Encounter"
Description: "This profile derives from the [Encounter](https://hl7.org/fhir/R4B/encounter.html) Resource, for use in the New Dunedin Hospital Outpatients context."

* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^version = "0.0.2"
* ^purpose = "New Dunedin Hospital Outpatient Encounter Update"
* ^derivation = #constraint

* ^purpose = "Describe the New Dunedin Hospital Outpatient Encounter update resource profile"
* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>New Dunedin Hospital Outpatient Encounter update profile</div>"

* meta.profile 1..*
* identifier 0..1
* status 1..1
* class 1..1
* subject 0..1
* subject.identifier 1..1 MS
* appointment 1..*
* appointment.identifier 1..1 MS
* location 1..1
* location.status 1..1
* period 1..1
* period ^short = "Start | end values must be in UTC timezone on the FHIR server"
* period.start 1..1
* period.end 0..1

// We only want the API to allow for updating the status and location status.
* statusHistory 0..0
* classHistory 0..0
* type 0..0
* serviceType 0..0
* priority 0..0
* episodeOfCare 0..0
* basedOn 0..0
* participant 0..0
* length 0..0
* reasonCode 0..0
* reasonReference 0..0
* diagnosis 0..0
* account 0..0
* hospitalization 0..0
* serviceProvider 0..0
* partOf 0..0
