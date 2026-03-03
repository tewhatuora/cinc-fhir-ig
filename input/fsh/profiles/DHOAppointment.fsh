Profile: DHOAppointment
Parent: Appointment
Title: "DHO Appointment Profile"
Description: "This profile derives from the [Appointment](https://hl7.org/fhir/R4B/appointment.html) Resource, for use in the Dunedin Hospital Outpatients context."
* ^version = "1.0.2"
* ^purpose = "Dunedin Hospital Outpatient Appointment profile"
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ

// ---------------------------------------------------------
// Inserts
// ---------------------------------------------------------
* insert DHODerivedMetaDataRules

// ---------------------------------------------------------
// Cardinality tightening
// ---------------------------------------------------------
* identifier 0..*
  * use 0..1 MS
  * system 0..1 MS
  * value 1..1 MS
  * period 0..0
  * assigner 0..1
  * id 0..0
* status 1..1
* cancelationReason 0..1
* serviceCategory 0..*
* serviceType 0..*
* specialty 0..*
* appointmentType 0..1
* reasonCode 0..*
* reasonReference 0..*
* priority 0..1
* description 0..1
* supportingInformation 0..*
* start 0..1
* end 0..1
* minutesDuration 0..1
* slot 0..*
* created 0..1
* comment 0..1
* patientInstruction 0..1
* basedOn 0..*
* participant 1..*
* participant.required 0..1
* participant.status 1..1 MS
* participant.period 0..1
* requestedPeriod 0..*

// ---------------------------------------------------------
// Terminology bindings
// ---------------------------------------------------------
* serviceType from DHOHealthSpecialityVS (extensible)

// ---------------------------------------------------------
// Extensions
// ---------------------------------------------------------
* extension contains DHOAppointmentMethod named appointmentMethod 1..1 MS
* extension[appointmentMethod] ^short = "How the appointment is delivered (in-person | telehealth | home-visit)"

// ---------------------------------------------------------
// Reference constraints
// ---------------------------------------------------------
* participant.actor only Reference(NzPatient or NzPractitioner or NzPractitionerRole or NzHealthcareService or NzLocation or RelatedPerson or Device)

// --------------------------------------------------------
// Short Descriptions
// --------------------------------------------------------
* identifier ^short = "External (provider) and Health NZ business identifiers"
