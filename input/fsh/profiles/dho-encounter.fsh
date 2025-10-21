Profile: DHOutpatientEncounter
Parent: Encounter
Title: "Dunedin Hospital Outpatient Get Encounter"
Description: "This profile derives from the [Encounter](https://hl7.org/fhir/R4B/encounter.html) Resource, for use in the Dunedin Hospital Outpatients context."

* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^version = "0.0.2"
* ^purpose = "Dunedin Hospital Outpatient Encounter"
* ^derivation = #constraint

* ^purpose = "Describe the Dunedin Hospital Outpatient Encounter resource profile"
* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Dunedin Hospital Outpatient Encounter profile</div>"

* identifier 0..1
* meta
  * profile 1..*
  * tag 1..*
    *  ^short = "Correlation-id where the record is sourced"
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

Profile: DHOutpatientEncounterCreate
Parent: Encounter
Title: "Dunedin Hospital Outpatient Create Encounter"
Description: "This profile derives from the [Encounter](https://hl7.org/fhir/R4B/encounter.html) Resource, for use in the Dunedin Hospital Outpatients context."

* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^version = "0.0.2"
* ^purpose = "Dunedin Hospital Outpatient Encounter"
* ^derivation = #constraint

* ^purpose = "Describe the Dunedin Hospital Outpatient Encounter resource profile"
* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Dunedin Hospital Outpatient Encounter profile</div>"

* meta 0..1
  * source 0..1
  * profile 1..*
  * lastUpdated 0..1
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
* diagnosis 0..0
* account 0..*
* hospitalization 0..1
* location 0..*
* serviceProvider 0..1
* partOf 0..1

Profile: DHOutpatientEncounterUpdate
Parent: Encounter
Title: "Dunedin Hospital Outpatient Update Encounter"
Description: "This profile derives from the [Encounter](https://hl7.org/fhir/R4B/encounter.html) Resource, for use in the Dunedin Hospital Outpatients context."

* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^version = "0.0.2"
* ^purpose = "Dunedin Hospital Outpatient Encounter Update"
* ^derivation = #constraint

* ^purpose = "Describe the Dunedin Hospital Outpatient Encounter update resource profile"
* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Dunedin Hospital Outpatient Encounter update profile</div>"

* meta.profile 1..*
* identifier 0..1
* status 1..1
* class 1..1
* subject only Reference(Patient)
* appointment 1..*
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

Profile: DHOutpatientEncounterDelete
Parent: Encounter
Title: "Dunedin Hospital Outpatient Delete Encounter"
Description: "This profile derives from the [Encounter](https://hl7.org/fhir/R4B/encounter.html) Resource, for use in the Dunedin Hospital Outpatients context."

* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^version = "0.0.2"
* ^purpose = "Dunedin Hospital Outpatient Encounter Delete"
* ^derivation = #constraint

* ^purpose = "Describe the Dunedin Hospital Outpatient Encounter delete resource profile"
* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Dunedin Hospital Outpatient Encounter delete profile</div>"

* meta.profile 1..*
* identifier 0..1

// We only want the API to allow for updating the status and location status.
//* status 0..0
//* class 0..0
* subject 0..0
* appointment 0..0
* location 0..0
* period 0..0
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
