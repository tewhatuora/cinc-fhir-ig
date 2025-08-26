Profile: NDHOutpatientAppointmentResponse
Parent: AppointmentResponse
Title: "New Dunedin Hospital Outpatient Appointment Response Profile"
Description: "This profile derives from the [AppointmentResponse](https://hl7.org/fhir/R4B/appointmentresponse.html) Resource with localisations using international and NZ standards including the [FHIR NZ Base IG](https://fhir.org.nz/ig/base/StructureDefinition-NzPatient.html), for use in the NZ context."

// We only want the API to allow for changing the participantStatus of the Appointment. Based on FHIR 4.3.0 (R4B) AppointmentResponse Elements
* appointment 1..1 MS
* participantStatus 1..1 MS
* start 0..0
* end 0..0
* participantType 0..0
* actor 0..0
* comment 0..0
