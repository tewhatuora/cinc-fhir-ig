Profile: UrgentCareEncounter
Parent: Encounter
Id: UrgentCareEncounter
Title: "Urgent Care Encounter"
Description: """A FHIR resource profile for operational reporting of Urgent Care encounters."""

* ^version = "1.3.0"
* ^purpose = "A FHIR resource profile for operational reporting of Urgent Care encounters."
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#NZ

* insert PCTapDerivedMetaDataRules

* meta 1..1

* contained 0..0

* identifier 1..*
* identifier ^short = "External (provider) and Health NZ business identifiers"
* identifier.system 1..1
* identifier.value 1..1
* identifier.period.start obeys full-datetime-with-timezone
* identifier.period.end obeys full-datetime-with-timezone

* status 1..1

* statusHistory 0..*

* class 1..1

* classHistory 0..*

* type 1..1
* type from UrgentCareEncounterTypeValueSet (extensible)

* serviceType 0..1

* insert ProfilePatient(subject)
* subject.display 0..0

* partOf 0..1
* partOf only Reference(Encounter)
* partOf ^short = "A preceding Encounter (e.g. discharged from ED then admitted as an inpatient)"

* serviceProvider 1..1
* serviceProvider only Reference(Organization)
* insert LocalIdentifierDocs(serviceProvider)

* participant 1..*
* participant ^short = "Practitioners involved in the encounter"
* participant.individual 1..1
* participant.individual only Reference(NzPractitioner)
* insert LocalIdentifierDocs(participant.individual)
* participant.period 0..1

* reasonCode 0..0
* reasonReference 0..0

* period 1..1
* period.start 1..1
* period.start obeys full-datetime-with-timezone
* period.end obeys full-datetime-with-timezone

* priority 0..1 
* priority from australasian-triage-scale (preferred)
* priority ^short = "Indicates the urgency of the encounter using the Australasian Triage Scale"

* length 0..1
* length ^short = "Quantity of time the encounter lasted (less time absent)"

* diagnosis 0..0

* hospitalization 0..1
* hospitalization ^short = "Admission & discharge details (if applicable)"
* hospitalization.reAdmission 0..0
* hospitalization.dietPreference 0..0
* hospitalization.specialCourtesy 0..0
* hospitalization.specialArrangement 0..0

* location 0..*
* location ^short = "(Sub)Locations where the patient has been during the encounter"
* location.location only Reference(Location)
* location.status 0..1
* location.period 0..1

* account 0..0

* extension contains
    SharedCareCscHolder named cscHolder 0..1 and
    SharedCareHuhcHolder named huhcHolder 0..1 and
    SharedCareAccidentRelated named accident 0..1 and
    SharedCareRegistrationCode named regCode 0..1 and
    encounter-modeOfArrival named modeOfArrival 0..1 and
    SharedCareDiagnosisCode named diagnosis 0..* and
    UrgentCareEncounterReason named encounterReason 0..* and
    UrgentCarePointOfCareTests named pointOfCareTests 0..* and
    UrgentCarePocusPerformed named pocusPerformed 0..1 and
    UrgentCareRadiologyPerformed named radiologyPerformed 0..1 and
    SharedCarePatientPaid named patientPaid 0..1 and
    UrgentCarePrimeCallout named primeCallout 0..1 and
    UrgentCarePrimeIncidentNumber named masterIncidentNumber 0..1

* extension[regCode].valueString from SharedCareRegistrationCodeVS (required)
