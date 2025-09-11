Profile: NDHOutpatientAppointmentResponse
Parent: AppointmentResponse
Title: "New Dunedin Hospital Outpatient Appointment Response Profile"
Description: "This profile derives from the [AppointmentResponse](https://hl7.org/fhir/R4B/appointmentresponse.html) Resource with localisations using international and NZ standards including the [FHIR NZ Base IG](https://fhir.org.nz/ig/base/StructureDefinition-NzPatient.html), for use in the NZ context."

// We only want the API to allow for changing the participantStatus of the Appointment. Based on FHIR 4.3.0 (R4B) AppointmentResponse Elements
* appointment 1..1 MS
* start 0..1
* end 0..1
* participantStatus 1..1 MS
* actor 0..1
* participantType 0..1
* comment 0..0
