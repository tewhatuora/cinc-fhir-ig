Profile: NationalHealthCareService
Parent: HealthcareService
Id: NationalHealthCareService
Title: "Record Of all helathcare services"
Description: "A Healthcareservice Resource used to record the details of the service"
* ^version = "0.0.1"
* ^purpose = "A Healthcareservice Resource used to record the details of the service"
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ
* meta.profile 1..1
* identifier 1..1
* identifier.use 1..1
* identifier.value 1..1
* identifier.system 1..1
* contained 0..0
* active 1..1
* type 0..
* name 1..1
* comment 0..
* category 0..
* program 0..
* telecom 1..