Profile: NzPharmacyMedicationDispense
Parent: MedicationDispense
Id: NzPharmacyMedicationDispense
Title: "NZ Medication Dispense"
Description: "A FHIR profile for NZ Medication Dispense, including extensions for NZePS script number."
* ^version = "0.0.1"
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ

// Top-level elements
* identifier 1..* // Unique Transaction Number
* authorizingPrescription 1..*
// * medication 1..1 // CodeableConcept, NZMT code this is already in R4B
* quantity 0..1 // SimpleQuantity, Quantity Dispensed
* daysSupply 0..1 // SimpleQuantity, Extended Supply
* whenPrepared 1..1 // Date of Service
* whenHandedOver 0..1 // Date handed over

// Extensions
* extension contains
    nzeps-scriptno-local named nzepsScriptNoLocal 0..1
