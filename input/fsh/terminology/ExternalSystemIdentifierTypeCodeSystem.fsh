CodeSystem: ExternalSystemIdentifierTypeCodeSystem
Id: external-system-identifier-type-codesystem
Title: "Codes for differentiating types of external identifiers held in FHIR resource Identifiers"
Description:  "Identifier type codes for differentiating types of external identifiers held in FHIR resource Identifiers"
* ^publisher = "Te Whatu Ora / Health New Zealand"
* ^experimental = false
* ^caseSensitive = true
* ^purpose = "These codes are used in the types of identifiers which are copied in FHIR but originate in external systems.  The purpose of designating these type codes is to provude a slicing.discrimator for use in FHIR resource profiles which have multiple slices on identifier"
* ^status = #active

* #salesforce-careplan-id "Identifier of a CarePlan (case number) object in Te Whatu Ora Salesforce"
* #salesforce-condition-id "Identifier of a patient Condition object in Te Whatu Ora Salesforce"
* #salesforce-careteam-id "Identifier of a CareTeam object in Te Whatu Ora Salesforce"
* #episurv-number "Identifier of a case in ESR EpiSurv"
