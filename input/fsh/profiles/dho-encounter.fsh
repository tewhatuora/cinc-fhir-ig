Profile: DHOPatientEncounter
Parent: Encounter
Id: DHOPatientEncounter
Title: "Dunedin Hospital Outpatient Encounter"
Description: "This profile derives from the [Encounter](https://hl7.org/fhir/R4B/encounter.html) Resource, for use in the Dunedin Hospital Outpatients context."

* ^version = "1.0.0"
* ^purpose = "Dunedin Hospital Outpatient Encounter"
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#NZ

* insert DHODerivedMetaDataRules

* identifier 0..1
* identifier ^short = "External (provider) and Health NZ business identifiers"

* status 1..1

* statusHistory 0..*

* class 1..1
* class = $v3-ActCode#AMB "Ambulatory"

* classHistory 0..*

* type 0..*

* serviceType 0..1

* insert DHOProfilePatient(subject)

* priority 0..1
* episodeOfCare 0..*
* basedOn 0..*

* participant 0..*
* participant ^short = "Practitioners involved in the encounter"
* participant.individual only Reference(NzPractitioner or NzPractitionerRole or RelatedPerson)
* insert DHOLocalIdentifierDocs(participant.individual)
* participant.period 0..1

* appointment 0..*
* appointment only Reference(DHOPatientAppointment)

* period 0..1
* period ^short = "Start | end values must be in UTC timezone on the FHIR server"

* length 0..1
* length ^short = "Quantity of time the encounter lasted (less time absent)"

* reasonCode 0..*
* reasonReference 0..*

* diagnosis 0..*
* diagnosis.condition only Reference(Condition)

* account 0..*

* hospitalization 0..1
* hospitalization ^short = "Admission & discharge details (if applicable)"

* location 0..*
* location ^short = "(Sub)Locations where the patient has been during the encounter"
* location.location only Reference(Location)
* location.status 0..1
* location.period 0..1

* serviceProvider 0..1
* serviceProvider only Reference(Organization)
* insert DHOLocalIdentifierDocs(serviceProvider)

* partOf 0..1
* partOf only Reference(Encounter)
* partOf ^short = "A preceding Encounter (e.g. discharged from ED then readmitted)"
