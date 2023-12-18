Alias: $nz-interpreter = http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired

Profile: RheumaticFeverPatient
Parent: NzPatient
Title: "Rheumatic Fever Patient"
Description: "NzPatient-based FHIR resource for representing rheumatic fever patients"
Id: nz-sharedcare-rheumaticfever-patient

* ^version = "1.0.0"
* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^purpose = "Profiles a New Zealand patient with rheumatic fever (extends NzPatient resource)"
* insert metaContactDetail([[David Grainger]],[[david.grainger@middleware.co.nz]])

// elements modified from base profile
* name 1..1
* link.other only Reference(Patient)
* link.type = #seealso

// add another extension to the ones NzPatient already does on FHIR Patient
* extension contains
    $nz-interpreter named interpreterRequired 0..*

* extension[interpreterRequired] ^short = "Does this person require an interpreter?"

// extensions to Patient.contact to track the role and relationship of whanau member in contact[]s
* contact.extension contains
  RfPatientWhanauMemberRoleExtension named whanauMemberCareRole 0..1 and
  RfPatientWhanauMemberRelationshipExtension named whanauMemberCareRelationship 0..1 and
  RfPatientWhanauMemberPrimaryExtension named whanauMemberCarePrimary 0..1

// elements removed by this profile
* implicitRules 0..0
* language 0..0

// ONE DOES NOT SIMPLY REDEFINE NzPatient SLICING RULES!!!
// // * identifier ^slicing.discriminator.type = #value
// // * identifier ^slicing.discriminator.path = "use"
// // * identifier ^slicing.rules = #open

// // In addition to the NHI slice already defined by NzPatient this extra slice lets clients attach identifiers to resources in external 'national' systems eg. salesforce
// //* identifier contains NHI 1..1 and NationalSystem 0..*
// * identifier contains NationalSystem 0..*

// // This slice allows (0 or more) use=USUAL identifier references for linking to external 'national' systems.  

// * identifier[NationalSystem] ^short = "This allows a rheumatic fever patient resource to link with corresponding objects in systems like salesforce"

// * identifier[NationalSystem].use 1..1
// * identifier[NationalSystem].use = #usual

// * identifier[NationalSystem].system 0..1        // system Uri may (SHOULD) be specified but it's up to clients to do this.
// * identifier[NationalSystem].system insert MakeProfileIdentifierSystemExample([[Uri that defines the type of external identifier]])

// // In this slice, clients MUST set a type taken from known external identifier type codes
// * identifier[NationalSystem].type 1..1      
// * identifier[NationalSystem].type from ExternalSystemIdentifierTypeValueSet

// // a value MUST be given and we give an example here
// * identifier[NationalSystem].value 1..1
// * identifier[NationalSystem].value insert MakeProfileIdentifierExample([[Salesforce object id]],[[patient-000577]])

// * identifier[NationalSystem].id 0..0       // don't want this kind of thing
// * identifier[NationalSystem].extension 0..0       // don't want this kind of thing

