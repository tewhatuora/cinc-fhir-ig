Profile: UrgentCareEncounter
Parent: Encounter
Id: UrgentCareEncounter
Title: "Urgent Care Encounter"
Description: """A FHIR resource profile for operational reporting of Urgent Care encounters."""

* ^version = "1.0.0"
* ^purpose = "A FHIR resource profile for operational reporting of Urgent Care encounters."
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#NZ

* insert NzDerivedMetaDataRules

* meta 1..1

* contained 0..0

* identifier 1..*
* identifier ^short = "External (provider) and Health NZ business identifiers"

* status 1..1

* statusHistory 0..*

* class 1..1

* classHistory 0..*

* type 1..1
* type from SharedCareEncounterTypeValueSet (extensible)

* serviceType 0..1

* insert ProfilePatient(subject)
* subject.display 0..0

* partOf 0..1
* partOf only Reference(Encounter)
* partOf ^short = "A preceding Encounter (e.g. discharged from ED then admitted as an inpatient)"

* serviceProvider 0..1
* serviceProvider only Reference(Organization)
* insert LocalIdentifierDocs(serviceProvider)

* participant 0..*
* participant ^short = "Practitioners involved in the encounter"
* participant.individual only Reference(NzPractitioner)
* insert LocalIdentifierDocs(participant.individual)
* participant.period 0..1

* appointment 0..*
* appointment only Reference(SharedCareAppointment)

* reasonCode 0..*

* period 1..1

* priority 0..1 
* priority from australasian-triage-scale (required)
* priority ^short = "Indicates the urgency of the encounter using the Australasian Triage Scale"

* length 0..1
* length ^short = "Quantity of time the encounter lasted (less time absent)"

* diagnosis 0..0

* hospitalization 0..1
* hospitalization ^short = "Admission & discharge details (if applicable)"

* location 0..*
* location ^short = "(Sub)Locations where the patient has been during the encounter"
* location.location only Reference(Location)
* location.status 0..1
* location.period 0..1

* account 0..0

* extension contains
    SharedCareCscHolder named cscHolder 0..1 and
    SharedCareAccidentRelated named accident 0..1 and
    SharedCareRegistrationCode named regCode 0..1 and
    encounter-modeOfArrival named modeOfArrival 0..1 and
    SharedCareDiagnosisCode named diagnosis 0..*
