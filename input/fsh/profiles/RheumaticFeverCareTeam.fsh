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
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains NationalSystem 0..*

* identifier[NationalSystem].use = #usual
* identifier[NationalSystem].system 1..
* identifier[NationalSystem].system = $NationalCareCoordinationSystem
* identifier[NationalSystem].value insert MakeProfileIdentifierExample([[Salesforce object id]],[[CTM-0000144]])

// * category from https://nzhts.digital.health.nz/fhir/ValueSet/rheumatic-fever-care-team-category
// The category code is defined in the above ValueSet on NZHTS but there are problems relating to the 
// fact that the code is in a temporary codesystem while we wait for SNOMED NZ edition April 2024 to roll around
// So for now, this profile requires that the canonical ValueSet will be the one defined in this IG

* category from rf-careteam-category-code (required)
// The ValueSet is defined at an enduring Url so the code binding is stable
// The category code is due to appear in SNOMED in 2024 but until then is published temporarily in an NZHTS codesystem 

// elements from base profile prohibited
