Instance: BasicCarePlan
InstanceOf: RheumaticFeverCarePlan
Usage: #example
Description: "Example of the most basic RF care plan: not fully setup and indicates only that a patient registered with RF service."

* meta.profile = Canonical(RheumaticFeverCarePlan)
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-06T08:00:00Z"

* identifier[NHI] insert NHIIdentifier(SCF7824)
* identifier[NationalSystem] insert NationalSystemExternalIdentifer(00073693)
* identifier[episurv] insert EpisurvNumber(21-383414-AK)

* addresses = Reference(SevereRfConditionExample)

* category = $sct#320721000210102 "Rheumatic fever secondary prevention care plan" 

* title = "Basic care plan representing only the registration of Madeleine Meringue"

* intent = #plan

* created = "2023-06-12"
* period.start = "2023-08-01"
* period.end = "2033-07-31"
* status = #draft

* insert PatientInstanceReference(subject,MadeleineMeringue)

// * subject = Reference(MadeleineMeringue)
// * subject.type = https://hl7.org/fhir/R4B/codesystem-resource-types.html#resource-types-Patient
// * subject.display = "Madeleine Meringue"


* author insert ReferenceOrganisation(GOM086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])
* careTeam[0] = Reference(SecondaryProphylaxisCareTeam)

// * extension[0].url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/rf-careplan-onhold-reason"
// * extension[=].valueString = "Patient on holiday overseas"

// * extension[+].url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/rf-careplan-closure-reason"
// * extension[=].valueString = "Patient left New Zealand"

