Instance: ActiveCarePlan
InstanceOf: RheumaticFeverCarePlan
Usage: #example
Description: "Example of an RF care plan where setup is complete but no secondary prevention activities yet planned."

* meta.tag.code = #rheumatic-fever

* meta.profile = Canonical(RheumaticFeverCarePlan)
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-06T08:00:00Z"

* identifier[NHI] insert NHIIdentifier(SCF7824)
* identifier[case] insert SalesforceCaseNumber(00073469)

* addresses = Reference(SevereRfConditionExample)

* category = $sct#734163000 // placeholder - will change to code for "Rheumatic fever secondary prevention care plan"
* created = "2023-09-08"

// * encounter = Reference(EncounterExample)

* intent = #plan

* period.start = "2023-10-15"
* period.end = "2033-10-14"

* subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* author insert ReferenceOrganisation(GOM086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])
* careTeam[0] = Reference(SecondaryProphylaxisCareTeam)

* status = #active
* title = "Care plan set up but no activities yet"

// * extension[0].url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/rf-careplan-onhold-reason"
// * extension[=].valueString = "Patient on holiday overseas"

// * extension[+].url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/rf-careplan-closure-reason"
// * extension[=].valueString = "Patient left New Zealand"

