Profile: RheumaticFeverCareTeam
Parent: CareTeam
Title: "Rheumatic Fever Care Team"
Description: "Identifies parties involved in secondary prophylaxis (preventative treatment) for a patient.  Members typically comprise rheumatic fever service Organizations and Practitioners especially nurses"
Id: nz-sharedcare-rheumaticfever-careteam

* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^purpose = "Controls CareTeam representations to model care teams involved in rheumatic fever secondary prophylaxis (preventative treatment)"

// elements modified from base profile
* category 1..1

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
// We allow here for 1 NHI ref and 0..* external refs 'national' systems. 
// This allows for mulesoft to keep and track refs between FHIR and Salesforce objects, etc. 
* identifier contains NationalSystem 0..*

// SLICE
// This slice allows clients to link (0 or more) use=USUAL identifiers to reference resources in external 'national' systems.  

* identifier[NationalSystem] ^short = "This allows a rheumatic fever patient resource to link with corresponding objects in systems like salesforce"

* identifier[NationalSystem].use 1..1
* identifier[NationalSystem].use = #usual

* identifier[NationalSystem].system 0..1        // system Uri may (SHOULD) be specified but it's up to clients to do this.
* identifier[NationalSystem].system insert MakeProfileIdentifierSystemExample([[Uri that defines the type of external identifier]])

// In this slice, clients MUST set a type taken from known external identifier type codes
* identifier[NationalSystem].type 1..1      
* identifier[NationalSystem].type from ExternalSystemIdentifierTypeValueSet

// a value MUST be given and we give an example here
* identifier[NationalSystem].value 1..1
* identifier[NationalSystem].value insert MakeProfileIdentifierExample([[Salesforce object id]],[[CTM-0000144]])

* identifier[NationalSystem].id 0..0       // don't want this kind of thing
* identifier[NationalSystem].extension 0..0       // don't want this kind of thing


// * category from https://nzhts.digital.health.nz/fhir/ValueSet/rheumatic-fever-care-team-category
// The category code is defined in the above ValueSet on NZHTS but there are problems relating to the 
// fact that the code is in a temporary codesystem while we wait for SNOMED NZ edition April 2024 to roll around
// So for now, this profile requires that the canonical ValueSet will be the one defined in this IG

* category from rf-careteam-category-code (required)
* category = $sct#320721000210108 "Secondary prophylaxis team"

// elements from base profile prohibited - NONE
