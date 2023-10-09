Alias: $nz-interpreter = http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired

Profile: RheumaticFeverPatient
Parent: NzPatient
Description: "NzPatient-based FHIR resource for representing rheumatic fever patients"
Id: cinc-rheumaticfever-patient

* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^purpose = "Profiles a New Zealand patient with rheumatic fever (extends NzPatient resource)"
* ^meta.tag.code = #rheumatic-fever

// elements modified from base profile
* name 1..1
* link.other only Reference(Patient)
* link.type = #seealso

// add another extension to the ones NzPatient already does on FHIR Patient
* extension contains
    $nz-interpreter named interpreterRequired 0..*

* extension[interpreterRequired] ^short = "Does this person require an interpreter?"

// elements prohibited
* implicitRules 0..0
* language 0..0
