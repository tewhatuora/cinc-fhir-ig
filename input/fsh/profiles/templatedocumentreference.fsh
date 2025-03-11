Profile: TemplateDocumentReference
Parent: DocumentReference
Description: "A DocumentReference FHIR Resource That Define the Template For Email communication. template-message-body, template-message-parameters and template-attachment-fileX are special ID's"
Id: TemplateDocumentReference
Title: "Record of Template for Email Communication from Any Healthcare System"
* ^version = "0.0.1"
* ^purpose = "A Record Of Template used by different healthcare services for email communication"
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ
* masterIdentifier 1..1
* identifier 1..1
* status 1..1
* docStatus 1..1
* category 1..*
* category from hnz-template-category-valueset (required)
* date 1..1
* description 0..1
* content 1..*
* context 0..1