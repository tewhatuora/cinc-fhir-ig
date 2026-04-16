Profile: OnlineGPAppointment
Parent: Appointment
Id: OnlineGPAppointment
Title: "Online GP Appointment"
Description: "A FHIR resource profile for operational reporting of Online GP Appointment."

* ^version = "1.0.7"
* ^purpose = "A FHIR resource profile for operational reporting of Online GP Appointment."
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#NZ


* insert PCTapDerivedMetaDataRules
* meta 1..1

* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "assigner.identifier.system"
* identifier ^slicing.rules = #open

* identifier contains appointmentId 0..1 and providerId 1..1

* identifier[appointmentId] ^short = "External appointment identifier"
* identifier[appointmentId] ^definition = "Business identifier assigned by the provider system for this appointment."
* identifier[appointmentId].system 1..1
* identifier[appointmentId].value 1..1

* identifier[providerId] ^short = "Provider organisation identifier for access control"
* identifier[providerId] ^definition = "Identifies the provider organisation that owns this appointment. Used for tenant-based access control."
* identifier[providerId].assigner 1..1
* identifier[providerId].assigner only Reference(Organization)
* identifier[providerId].assigner.type = "Organization"
* identifier[providerId].assigner.type 1..1
* identifier[providerId].assigner.identifier 1..1
* identifier[providerId].assigner.identifier.use = #official
* identifier[providerId].assigner.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier[providerId].assigner.identifier.system 1..1
* identifier[providerId].assigner.identifier.value 1..1
* identifier[providerId].assigner.identifier obeys hpiOrganizationIdPattern

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
