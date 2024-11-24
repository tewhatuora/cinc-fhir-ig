Profile: ManaakiNgaTahiDocumentReference
Parent: DocumentReference
Description: "DocumentReference FHIR resource for Manaaki Nga Tahi"
* ^version = "0.1.3"
// elements modified
* context.encounter only Reference(Encounter)
* context.period 0..1
* context.period ^short = "Must be in UTC timezone on the FHIR server"
* author only Reference(Practitioner)
* subject only Reference(Patient)
// elements prohibited
* implicitRules 0..0
* masterIdentifier 0..0
* authenticator 0..0
* custodian 0..0
* securityLabel 0..0
