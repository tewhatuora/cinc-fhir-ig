Profile: ManaakiNgaTahiConsent
Parent: Consent
Id: nz-sharedcare-consent
Description: "Consent FHIR resource for Manaaki Nga Tahi"
* ^version = "0.1.7"
// elements modified
* patient 1..1    // v0.1.3 patient reference now required
* policy 1..*     // v0.1.3 policy element now required (uri and authority)
* provision.period 1..1 
* provision.period ^short = "Must be in UTC timezone on the FHIR server"
* sourceReference only Reference(QuestionnaireResponse)
// elements disabled
// * contained 0..0       renabled in IGv0.3.4 so performer.Reference(RelatedPerson) can refer to an inline RelatedPerson instance.
* implicitRules 0..0
* language 0..0
* modifierExtension 0..0
* policy.extension 0..0
* policy.id 0..0
* policy.modifierExtension 0..0
* provision.provision 0..0

// v0.3.3 reenabled default cardinality of the following .. there wasn't really a good reason to disable in first place
// * organization 0..0
// * provision.securityLabel 0..0  
// * provision.action 0..0
// * provision.class 0..0
// * provision.code 0..0
// * provision.data.extension 0..0
// * provision.data.id 0..0
// * provision.data.modifierExtension 0..0
// * provision.dataPeriod 0..0
// * provision.extension 0..0
// * provision.id 0..0
// * provision.modifierExtension 0..0
// * verification.extension 0..0
// * verification.id 0..0
// * verification.modifierExtension 0..0
// * verification.verificationDate 0..0
