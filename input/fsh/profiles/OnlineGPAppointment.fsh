Profile: OnlineGPAppointment
Parent: Appointment
Id: OnlineGPAppointment
Title: "Online GP Appointment"
Description: "A FHIR resource profile for operational reporting of Online GP Appointment."

* ^version = "1.0.6"
* ^purpose = "A FHIR resource profile for operational reporting of Online GP Appointment."
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#NZ


* insert PCTapDerivedMetaDataRules
* meta 1..1

* identifier 0..1
* identifier.system 1..1
* identifier.value 1..1
* identifier.assigner 1..1
* identifier.assigner only Reference(Organization)
* identifier.assigner ^short = "The provider organisation that owns this appointment"
* identifier.assigner ^definition = "Reference to the Organization that is the provider for this appointment. Used for tenant-based access control."
* identifier.assigner.type = "Organization"
* identifier.assigner.type 1..1
* identifier.assigner.identifier 1..1
* identifier.assigner.identifier.use = #official
* identifier.assigner.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier.assigner.identifier.system 1..1
* identifier.assigner.identifier.value 1..1

* contained 0..0
* serviceCategory  0..0
* serviceType  0..0
* specialty  0..0
* appointmentType  0..0
* reasonReference 0..0
* priority 0..0
* supportingInformation 0..0
* minutesDuration 0..0
* patientInstruction 0..0
* basedOn 0..0

* participant ^slicing.discriminator.type = #pattern
* participant ^slicing.discriminator.path = "actor.type"
* participant ^slicing.rules = #open
* participant contains patient 1..1
* participant[patient].actor 1..1
* insert ProfilePatient(participant[patient].actor)
* participant[patient].actor.display 0..0
* participant[patient].actor.display ^short = "Remove from all examples. Never return in a response. Never save if provided."

* status 1..1

* created 0..1
* created obeys full-datetime-with-timezone

* end 0..1

* reasonCode 1..*
* reasonCode from NzAppointmentReasonCodes
