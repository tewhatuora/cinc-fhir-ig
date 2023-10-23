Profile: ManaakiNgaTahiConsent
Parent: Consent
Description: "Consent FHIR resource for Manaaki Nga Tahi"
* ^version = "0.1.7"
// elements modified
* patient 1..1    // v0.1.3 patient reference now required
* policy 1..*     // v0.1.3 policy element now required (uri and authority)
* provision.period 1..1 
* provision.period obeys fhir-hnz-period-utc-1
* sourceReference only Reference(QuestionnaireResponse)
// elements prohibited
* contained 0..0
//  * extension 0..0    v0.1.3 relief from prohibition of CarePlan extension

// DG 13/10/2023 identifier element publishing error
// A persistent IG publisher error arises on the identifier element: "if identifier.system is 'urn:ietf:rfc:3986', then the identifier.value must be a full URI (e.g. start with a scheme), not 'Local eCMS identifier'"
// The error reported means the string 'Local eCMS identifier' is not a proper Uri.
// The cause of the error seems to be that the IG Publisher is expecting the example of an identifier to be a valid Identifier with a proper system Uri.
// So quite a stickler for the rules...!
// The following attempts to suppress the error have all failed
// * identifier 0..0
// * identifier ^example.label = ""  

* implicitRules 0..0
* language 0..0
* modifierExtension 0..0
* organization 0..0
* policy.extension 0..0
* policy.id 0..0
* policy.modifierExtension 0..0
* provision.action 0..0
// * provision.actor 0..0         v0.3.1 re-enabled for #proposed consent-based access control
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
// * provision.purpose 0..0       v0.3.1 re-enabled for #proposed consent-based access control
* provision.securityLabel 0..0
// * provision.type 0..0          v0.3.1 re-enabled for #proposed consent-based access control
* verification.extension 0..0
* verification.id 0..0
* verification.modifierExtension 0..0
* verification.verificationDate 0..0
// v0.1.3 restored policyRule, formerly a prohibited element 
