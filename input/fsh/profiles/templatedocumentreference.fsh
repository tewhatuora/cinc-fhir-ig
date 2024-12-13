Profile: TemplateDocumentReference
Parent: DocumentReference
Description: "DocumentReference FHIR resource for Email communication Template"
* ^version = "0.0.1"
* masterIdentifier 1..1
* identifier 1..1
* status 1..
* docStatus 1..
* category 1..
* category from hnz-template-category-valueset (required)
* date 1..
* description 0..1
* content 1..*
* context 0..1
// extension 
