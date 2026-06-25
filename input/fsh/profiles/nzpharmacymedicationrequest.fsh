Profile: NzPharmacyMedicationRequest
Parent: MedicationRequest
Id: NzPharmacyMedicationRequest
Title: "NZ Medication Request"
Description: "A FHIR profile for NZ Medication Requests, including extensions for NZePS endorsement and funding category."
* ^version = "1.0.0"
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#NZ

// Top-level elements
* identifier 1..* // Prescription ID, Suffix
* status 1..1
* subject 1..1 // NHI not allowing 0..1
* requester 0..1 // Prescriber ID
* recorder 0..1 // Locum ID
* performer 1..1 // Dispensing pharmacy (Organization) - required for provider isolation

//* informationSource 0..1 // Specialist ID not in R4B
* dispenseRequest 1..1
* dosageInstruction 1..* // Dose, Daily Dose

* authoredOn 1..1

// Extensions
* extension contains
    nzeps-endorsement named nzepsEndorsement 0..1 and
    nzeps-funding-category named nzepsFundingCategory 0..1