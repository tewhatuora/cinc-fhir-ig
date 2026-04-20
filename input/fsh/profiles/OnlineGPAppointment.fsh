Profile: OnlineGPAppointment
Parent: Appointment
Id: OnlineGPAppointment
Title: "Online GP Appointment"
Description: "A FHIR resource profile for operational reporting of Online GP Appointment."

* ^version = "1.0.8"
* ^purpose = "A FHIR resource profile for operational reporting of Online GP Appointment."
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#NZ


* insert PCTapDerivedMetaDataRules
* meta 1..1

* identifier 0..1
* identifier.system 1..1
* identifier.value 1..1

* contained 0..0
* serviceCategory  0..0
* serviceType  0..0
* specialty  0..0
* appointmentType  0..0
* reasonReference 0..0
* priority 0..0
* supportingInformation 1..1
* supportingInformation only Reference(Organization)
* supportingInformation ^short = "The provider organisation that owns this appointment"
* supportingInformation ^definition = "Reference to the Organization that is the provider for this appointment. Used for tenant-based access control."
* supportingInformation.type = "Organization"
* supportingInformation.type 1..1
* supportingInformation.identifier 1..1
* supportingInformation.identifier.use = #official
* supportingInformation.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* supportingInformation.identifier.system 1..1
* supportingInformation.identifier.value 1..1
* supportingInformation.identifier obeys hpiOrganizationIdPattern
* minutesDuration 0..0
* patientInstruction 0..0
* basedOn 0..0

* participant ^slicing.discriminator.type = #pattern
* participant ^slicing.discriminator.path = "actor.type"
* participant ^slicing.rules = #open
* participant contains patient 0..1
* participant[patient].actor 1..1
* insert ProfilePatient(participant[patient].actor)
* participant[patient].actor.display 0..0
* participant[patient].actor.display ^short = "Remove from all examples. Never return in a response. Never save if provided."

* obeys patient-or-data-absent-reason

* status 1..1

* created 0..1
* created obeys full-datetime-with-timezone

* end 0..1

* reasonCode 1..*
* reasonCode from NzAppointmentReasonCodes

Invariant: patient-or-data-absent-reason
Description: "Either a patient participant must be present, or a participant with a data-absent-reason extension on actor must be provided."
Expression: "participant.where(actor.type = 'Patient').exists() or participant.where(actor.extension.where(url = 'http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()).exists()"
Severity: #error
