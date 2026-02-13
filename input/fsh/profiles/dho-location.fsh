// ------------------------------
// Profile
// ------------------------------
Profile: DHOLocation
Parent: NzLocation
Id: DHOLocation
Title: "Dunedin Hospital Outpatient Location Profile"
Description: "This profile derives from the Location Resource with localisations using international and NZ standards including the FHIR NZ Base IG, for use in the NZ context."
* obeys dho-location-internal-requirements
* ^version = "0.0.1"
* ^purpose = "This profile is used to represent outpatient locations for Dunedin Hospital Outpatients."
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ

* insert DHODerivedMetaDataRules

// ---------------------------------------------------------
// Identifier metadata
// ---------------------------------------------------------
* identifier 1..*
  * use 0..1 MS
  * system 0..1 MS
  * value 1..1 MS
  * period 0..0
  * assigner 0..1
  * id 0..0
* identifier ^short = "External (provider) and Health NZ location identifiers"

// ---------------------------------------------------------
// Cardinality tightening
// ---------------------------------------------------------
* name 1..1
* identifier 1..*
* address 1..1
* managingOrganization 1..1

// ---------------------------------------------------------
// Must Support
// ---------------------------------------------------------
* identifier ^mustSupport = true
* name ^mustSupport = true
* address ^mustSupport = true
* telecom ^mustSupport = true
* managingOrganization ^mustSupport = true

// ---------------------------------------------------------
// Reference constraints
// ---------------------------------------------------------
* managingOrganization only Reference(NzOrganization)
* partOf only Reference(DHOLocation)
* endpoint only Reference(Endpoint)

// ---------------------------------------------------------
// Datatype constraints
// ---------------------------------------------------------
* address only NzAddress
* telecom only NzContactPoint

// ---------------------------------------------------------
// Telecom slicing by use-case
// ---------------------------------------------------------
* telecom ^slicing.discriminator.type = #pattern
* telecom ^slicing.discriminator.path = "use"
* telecom ^slicing.rules = #open

* telecom contains
    Public 0..* and
    Clinical 0..* and
    Technical 0..*

* telecom[Public].use = #work
* telecom[Public] ^short = "Public contact details"

* telecom[Clinical].use = #work
* telecom[Clinical] ^short = "Clinical/professional contact"

* telecom[Technical].use = #temp
* telecom[Technical] ^short = "Technical or routing contact"

// ---------------------------------------------------------
// Location type (relationship)
// ---------------------------------------------------------
* type from DHOLocationRelationshipVS (required)
* type ^mustSupport = true

// ---------------------------------------------------------
// Physical vs Virtual
// ---------------------------------------------------------
* physicalType from DHOLocationPhysicalTypeVS (required)
* physicalType ^mustSupport = true

// ---------------------------------------------------------
// Outreach vs Fixed site
// ---------------------------------------------------------
// Correct SUSHI slicing for standalone extension
* extension contains DHOOutreach named outreach 0..1
* extension[outreach] ^mustSupport = true

// ---------------------------------------------------------
// Invariants
// ---------------------------------------------------------
Invariant: dho-location-internal-requirements
Description: "When type is 'internal', require an identifier with system 'https://standards.digital.health.nz/ns/dho-area-code', partOf.display, and partOf.identifier."
Severity: #error
Expression: "type.coding.where(code = 'internal').exists() implies (identifier.where(system = 'https://standards.digital.health.nz/ns/dho-area-code').exists() and partOf.exists() and partOf.display.exists() and partOf.identifier.exists())"
