Profile: OutpatientProvenance
Parent: Provenance
Title: "DHO Provenance Profile"
Description: "This profile derives from the [Provenance](https://hl7.org/fhir/R4B/provenance.html) Resource, for use in the Dunedin Hospital Outpatients context. Specificly for the tracking of the merge and unmerge of patient records."
* ^version = "1.0.0"
* ^purpose = "Dunedin Hospital Outpatient Provenance profile"
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ

// ---------------------------------------------------------
// Inserts
// ---------------------------------------------------------
* insert DHODerivedMetaDataRules

* activity 1..1

* reason from $vs-provenance-reason-type (extensible)
* reason.coding.system = "https://fhir-ig.digital.health.nz/shared-care/CodeSystem/provenance-reason-type-cs" (exactly)
* reason.coding.code 1..1
