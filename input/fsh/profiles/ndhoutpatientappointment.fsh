Profile: NDHOutpatientAppointment
Parent: Appointment
Title: "New Dunedin Hospital Outpatient Appointment Profile"
Description: "This profile derives from the [Appointment](https://hl7.org/fhir/R4B/appointment.html) Resource with localisations using international and NZ standards including the [FHIR NZ Base IG](https://fhir.org.nz/ig/base/StructureDefinition-NzPatient.html), for use in the NZ context."

// We only want the API to allow for changing the participantStatus of the Appointment. Based on FHIR 4.3.0 (R4B) AppointmentResponse Elements
* status 1..1 MS
* cancelationReason 0..0
* serviceCategory 0..0
* serviceType 0..0
* specialty 0..0
* appointmentType 0..0
* reasonCode 0..0
* reasonReference 0..0
* priority 0..0
* description 0..0
* supportingInformation 0..0
* start 0..0
* end 0..0
* minutesDuration 0..0
* slot 0..0
* created 0..0
* comment 0..0
* patientInstruction 0..0
* basedOn 0..0
* requestedPeriod 0..0
