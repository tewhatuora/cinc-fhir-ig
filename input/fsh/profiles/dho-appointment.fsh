Profile: DHOutpatientAppointment
Parent: Appointment
Title: "Dunedin Hospital Outpatient Appointment Profile"
Description: "This profile derives from the [Appointment](https://hl7.org/fhir/R4B/appointment.html) Resource with localisations using international and NZ standards including the [FHIR NZ Base IG](https://fhir.org.nz/ig/base/StructureDefinition-NzPatient.html), for use in the NZ context."
* ^version = "0.0.1"
* ^purpose = "This profile is used to represent outpatient appointments in Dunedin."
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ

* meta 0..1
  * source 0..1
  * profile 0..*
  * lastUpdated 0..1
* identifier 0..1
  * use 0..1 MS
  * system 0..1 MS
  * value 1..1 MS
  * period 0..0
  * assigner 0..0
  * id 0..0
* identifier ^short = "External (provider) and Health NZ business identifiers"
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
* participant.actor only Reference(NzPatient or NzPractitioner or NzPractitionerRole or NzHealthcareService or NzLocation or RelatedPerson or Device)
* participant.required 0..1
* participant.status 1..1 MS
* participant.period 0..1
* requestedPeriod 0..*
