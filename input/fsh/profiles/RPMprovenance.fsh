Profile: RPMEducationProvenance
Parent: Provenance
Description: "A DocumentReference FHIR Resource That Define the Template For Email communication. template-message-body, template-message-parameters and template-attachment-fileX are special ID's"
Id: RPMEducationProvenance
Title: "Record of Engagement with a Remote Patient Monitoring Education Module"
* ^version = "0.0.1"
* ^purpose = "Record of Engagement with a Remote Patient Monitoring Education Module"
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ

// Make the extension required
* extension contains RPMEducationModuleExtension named educationModule 1..1