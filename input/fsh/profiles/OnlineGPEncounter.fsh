Profile: OnlineGPEncounter
Parent: Encounter
Id: OnlineGPEncounter
Title: "Online GP Encounter"
Description: """A FHIR resource profile for operational reporting of Online GP encounters."""

* ^version = "1.0.4"
* ^purpose = "A FHIR resource profile for operational reporting of Online GP encounters."
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#NZ

* insert PCTapDerivedMetaDataRules

* meta 1..1

* contained 0..0

* identifier 1..*
* identifier ^short = "External (provider) and Health NZ business identifiers"
* identifier.period.start obeys full-datetime-with-timezone
* identifier.period.end obeys full-datetime-with-timezone

* status 1..1

* statusHistory 0..0

* class 1..1
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#VR "virtual"

* classHistory 0..0

* type 1..1
* type from SharedCareEncounterTypeValueSet (extensible)
* type ^short = "Type of encounter (e.g., Video consultation)"

* serviceType 0..1

* insert ProfilePatient(subject)
* subject.display 0..0

* partOf 0..1
* partOf only Reference(Encounter)
* partOf ^short = "A preceding Encounter (e.g. discharged from ED then admitted as an inpatient)"

* serviceProvider 1..1
* serviceProvider only Reference(Organization)
* serviceProvider ^short = "Organization providing the online GP service"
* insert LocalIdentifierDocs(serviceProvider)

* participant 1..*
* participant ^short = "Practitioners involved in the encounter"
* participant.type from onlinegp-participant-type (required)
* participant.individual only Reference(NzPractitioner)
* insert LocalIdentifierDocs(participant.individual)
* participant.period 0..1

* appointment 0..*
* appointment only Reference(OnlineGPAppointment)

* reasonCode 0..0
* reasonReference 0..0

* period 1..1
* period.start obeys full-datetime-with-timezone
* period.end obeys full-datetime-with-timezone

* priority 0..0

* length 0..1
* length ^short = "Quantity of time the encounter lasted (less time absent)"

* diagnosis 0..0

* hospitalization 0..1
* hospitalization ^short = "Admission & discharge details (if applicable)"
* hospitalization.dischargeDisposition from onlinegp-discharge-disposition (required)

* location 0..*
* location ^short = "(Sub)Locations where the patient has been during the encounter"
* location.location only Reference(Location)
* location.status 0..1
* location.period 0..1

* account 0..0

* extension contains
    SharedCareCscHolder named cscHolder 0..1 and
    SharedCareRegistrationCode named regCode 0..1 and
    SharedCareDiagnosisCode named diagnosis 0..*
