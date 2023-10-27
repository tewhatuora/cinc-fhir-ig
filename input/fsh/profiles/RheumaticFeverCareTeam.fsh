Profile: RheumaticFeverCareTeam
Parent: CareTeam
Title: "Rheumatic Fever Care Team"
Description: "FHIR resource for representing care teams comprising rheumatic fever practitioners or patient's whanau and/or nominated delegates"
Id: cinc-rheumaticfever-careteam

* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^purpose = "Profiles CareTeam to require categorisation (two types of care team that arise in rheumatic fever care)"

// elements modified from base profile
* category 1..1

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier contains NationalSystem 0..*

// This slice allows (0 or more) use=USUAL identifier references for linking to external 'national' systems.  

* identifier[NationalSystem] ^short = "This slice lets clients link FHIR rheumatic fever care teams to corresponding records in external systems eg. Salesforce"

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
// The ValueSet is defined at an enduring Url so the code binding is stable
// The category code is due to appear in SNOMED in 2024 but until then is published temporarily in an NZHTS codesystem 

// elements from base profile prohibited
