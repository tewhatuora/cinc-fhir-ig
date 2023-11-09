CodeSystem: ExternalSystemIdentifierTypeCodeSystem
Id: external-system-identifier-type-codesystem
Title: "Codes for differentiating types of external identifiers held in FHIR resource Identifiers"
Description:  "Identifier type codes for differentiating types of external identifiers held in FHIR resource Identifiers"
* ^publisher = "Te Whatu Ora / Health New Zealand"
* ^experimental = false
* ^caseSensitive = true
* ^purpose = "These codes are used in the types of identifiers which are copied in FHIR but originate in external systems.  The purpose of designating these type codes is to provude a slicing.discrimator for use in FHIR resource profiles which have multiple slices on identifier"
* ^status = #active

* #salesforce-careplan-id "Identifies a CarePlan (case number) object in Te Whatu Ora's national RF Care Coordination System"
* #salesforce-careplanactivity-id "Identifies a CarePlanActivity object in Te Whatu Ora's national RF Care Coordination System"
* #salesforce-condition-id "Identifies a patient Condition object in Te Whatu Ora's national RF Care Coordination System"
* #salesforce-careteam-id "Identifies a CareTeam object in Te Whatu Ora's national RF Care Coordination System"
* #episurv-number "Identifies a notifiable disease surveillance case number in ESR's EpiSurv system"
