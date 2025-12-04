Profile: SharedCareAppointment
Parent: Appointment
Id: SharedCareAppointment
Title: "NZ SharedCare Appointment"
Description: "A FHIR resource profile for operational reporting of NZ planned encounters."

* ^version = "1.0.0"
* ^purpose = "A FHIR resource profile for operational reporting of NZ planned encounters."
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#NZ


* insert NzDerivedMetaDataRules

* identifier 0..1
* identifier.system 1..1
* identifier.value 1..1

// * insert ProfilePatient(participant.actor)

* participant ^slicing.discriminator.type = #pattern
* participant ^slicing.discriminator.path = "actor.type"
* participant ^slicing.rules = #open
* participant contains patient 1..1
* insert ProfilePatient(participant[patient].actor)


// * participant.actor 1..*
// * participant.actor only Reference(NzPatient or Patient)
// * participant.actor.type = "Patient"
// * participant.actor.type 1..1
// * participant.actor.identifier 1..1
// * participant.actor.identifier.system 1..1
// * participant.actor.identifier.system obeys nhi-system-format
// * participant.actor.identifier.value ^short = "Must be an absolute URL reference to the patient on the NHI system. See constraints for details."
// * participant.actor.identifier.value 1..1
// * participant.actor.identifier.value obeys nhi-value-format

* status 1..1

* created 0..1

* end 0..1

* reasonCode 0..*
* reasonCode from NzAppointmentReasonCodes
