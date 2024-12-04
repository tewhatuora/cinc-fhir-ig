ValueSet: NZPurposeOfUse
Id: purposeofuse
Title: "NZ purpose of use"
Description: "Reason for performing one or more operations on information, which may be permitted by source system's security policy in accordance with one or more privacy policies and consent directives.                                                   Usage Notes: The rationale or purpose for an act relating to the management of personal health information, such as collecting personal health information for research or public health purposes."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2024-07-25T17:30:07.811+12:00"
* ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/nz-purpose-of-use-value-set"
* ^identifier.value = "Purposeofinformationuse"
* ^version = "20240725"
* ^status = #draft
* ^date = "2023-08-01T00:00:00.000Z"
* ^publisher = "HISO"
* ^contact.name = "HISO"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "Standards@health.govt.nz"
* include codes from system http://terminology.hl7.org/CodeSystem/v3-ActReason|2018-08-12
    where concept is-a #PurposeOfUse
* include codes from system https://standards.digital.health.nz/ns/nz-purpose-of-use|20240725


CodeSystem: NZPurposeOfUse
Id: d1adf025-b6d2-44dc-a8b1-da3adfcafa73
Title: "NZ Purpose Of Use"
Description: "Additional codes to be incorporated with HL7 v3 Value Set Purpose of Use"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2024-07-25T17:30:04.727+12:00"
* ^url = "https://standards.digital.health.nz/ns/nz-purpose-of-use"
* ^version = "20240725"
* ^status = #draft
* ^experimental = false
* ^date = "2023-06-19T00:00:00.000Z"
* ^publisher = "HISO"
* ^contact.name = "HISO"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "Standards@health.govt.nz"
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete
* ^count = 5
* #NZLEG "legislative requirement" "To perform actions otherwise described in New Zealand Legislation"
* #NZRISK "risk assessment" "To perform risk management assessment and the disclosure is solely to a person engaged by the agency for the purpose of assessing the agency’s risk"
* #NZRISK ^property.code = #child
* #NZRISK ^property.valueCode = #NZLEG
* #NZCHILD "child abuse reporting" "To perform actions relating to the mandatory reporting of child abuse"
* #NZCHILD ^property.code = #child
* #NZCHILD ^property.valueCode = #NZLEG
* #NZSCREEN "screening" "To perform actions relating to screening carried out under legislation"
* #NZSCREEN ^property.code = #child
* #NZSCREEN ^property.valueCode = #NZLEG
* #NOTSUPPLIED "No code supplied" "Where no purpose of use code was supplied in an API request. This may not be a valid code for clients to supply, but will be used in the audit record to indicate no purpose of use code was included in a rejected request."
* #NOTSUPPLIED ^property.code = #child
* #NOTSUPPLIED ^property.valueCode = #NZLEG