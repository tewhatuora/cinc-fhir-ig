Profile: ManaakiNgaTahiConsent
Parent: Consent
Description: "Consent FHIR resource for Manaaki Nga Tahi"
* ^version = "0.1.7"
// elements modified
* patient 1..1    // v0.1.3 patient reference now required
* policy 1..*     // v0.1.3 policy element now required (uri and authority)
* provision.period 1..1 
* provision.period obeys fhir-hnz-period-utc-1
* sourceReference only Reference(ManaakiNgaTahiQuestionnaireResponse) // v0.1.7 fixed to refer to profiled type instead of specific instance
// elements prohibited
* contained 0..0
//  * extension 0..0    v0.1.3 relief from prohibition of CarePlan extension
* identifier 0..0
* implicitRules 0..0
* language 0..0
* modifierExtension 0..0
* organization 0..0
* policy.extension 0..0
* policy.id 0..0
* policy.modifierExtension 0..0
* provision.action 0..0
* provision.actor 0..0
* provision.class 0..0
* provision.code 0..0
* provision.data.extension 0..0
* provision.data.id 0..0
* provision.data.modifierExtension 0..0
* provision.dataPeriod 0..0
* provision.extension 0..0
* provision.id 0..0
* provision.modifierExtension 0..0
* provision.provision 0..0
* provision.purpose 0..0
* provision.securityLabel 0..0
* provision.type 0..0
* verification.extension 0..0
* verification.id 0..0
* verification.modifierExtension 0..0
* verification.verificationDate 0..0
// v0.1.3 restored policyRule, formerly a prohibited element 
