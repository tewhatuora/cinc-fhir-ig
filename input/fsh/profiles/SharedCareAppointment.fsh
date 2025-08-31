Profile: SharedCareAppointment
Parent: Appointment
Id: SharedCareAppointment
Title: "NZ SharedCare Appointment"
Description: "A FHIR resource profile for NZ Telehealth Appointments for 24/7 telehealth services."
* ^version = "0.0.1"
* ^purpose = "This profile is used to represent telehealth appointments in New Zealand for 24/7 telehealth services."
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ

* identifier 0..1
* identifier ^short = "External (provider) and Health NZ business identifiers"

* status 1..1

* created 0..1

* end 0..1

* reasonCode 0..*