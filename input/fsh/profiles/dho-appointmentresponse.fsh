Profile: DHOAppointmentResponse
Parent: AppointmentResponse
Id: DHOAppointmentResponse
Title: "Dunedin Hospital Outpatient Appointment Response Profile"
Description: "This profile derives from the [AppointmentResponse](https://hl7.org/fhir/R4B/appointmentresponse.html) Resource with localisations using international and NZ standards including the [FHIR NZ Base IG](https://fhir.org.nz/ig/base/StructureDefinition-NzPatient.html), for use in the NZ context."
* ^version = "1.0.1"
* ^purpose = "A FHIR resource profile for Dunedin Hospital outpatient Appointment Responses."
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#NZ

// ---------------------------------------------------------
// Inserts
// ---------------------------------------------------------
* insert DHODerivedMetaDataRules

// ---------------------------------------------------------
// Cardinality tightening
// ---------------------------------------------------------
* appointment 1..1 MS
* participantType 1..1 MS
* participantStatus 1..1 MS
* comment 0..0
* start 0..0
* end 0..0
* actor 0..0
