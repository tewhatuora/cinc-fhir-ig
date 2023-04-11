Alias: $nz-careplan-rf-case-management = https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/nz-careplan-rf-case-management
Profile: RheumaticFeverCarePlan
Parent: ManaakiNgaTahiCarePlan
Description: "CarePlan extensions for NZ rheumatic fever case management"
* ^version = "0.1.3"
// introduced in v0.1.3
* extension contains 
  nz-careplan-rf-case-management named case 0..1
* careTeam 0..1     // v0.1.0 resurrecting from FHIR R4 base CarePlan (as ManaakiNgaTahiCarePlan 0..0'd it)
