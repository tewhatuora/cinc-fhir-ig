Profile: ManaakiNgaTahiCondition
Parent: Condition
Description: "Condition FHIR resource for Manaaki Nga Tahi"
* ^version = "0.1.3"
// elements modified'
* subject only Reference(Patient)
* onset[x] only dateTime
* onsetDateTime ^short = "Must be in UTC timezone on the FHIR server"
* abatement[x] only dateTime
* abatementDateTime ^short = "Must be in UTC timezone on the FHIR server"
* recorder only Reference(Practitioner)
// elements prohibited
* asserter 0..0
* bodySite 0..0
* contained 0..0
* encounter 0..0
* evidence 0..0
//* extension 0..0    v0.1.3 relief from prohibition of CarePlan extension
* identifier 0..0
* implicitRules 0..0
* language 0..0
* modifierExtension 0..0
* note 0..0
* stage 0..0
