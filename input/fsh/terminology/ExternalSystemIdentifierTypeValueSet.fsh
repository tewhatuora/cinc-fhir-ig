ValueSet: ExternalSystemIdentifierTypeValueSet
Id: external-system-identifier-type-code
Title: "External identifier type codes"
Description:  "This value set defines the codes that differentiate types of external identifiers held in FHIR resource Identifiers"
* ^version = "1.0.0"
* ^experimental = false
// * ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/xxxxx"
* ^status = #active

* include codes from system external-system-identifier-type-codesystem
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0203      // Also bring in all the FHIR base codes for identifier type eg. #JHN - "Jurisdictional health number" 