Profile: SharedCareAppointment
Parent: Appointment
Id: SharedCareAppointment
Title: "NZ SharedCare Appointment"
Description: "A FHIR resource profile for operational reporting of NZ planned encounters."

* ^version = "0.0.1"
* ^purpose = "A FHIR resource profile for operational reporting of NZ planned encounters."
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ

* obeys hpiOrNzbnIdentifierPattern

* meta 1..1
  * source 1..1
    *  ^short = "HPI Facility ID from where the record is sourced"
  * tag 1..*
    *  ^short = "Correlation-id where the record is sourced"

* identifier 0..1
* identifier ^short = "External (provider) and Health NZ business identifiers"

* status 1..1

* created 0..1

* end 0..1

* reasonCode 0..*
* reasonCode from NzAppointmentReasonCodes
