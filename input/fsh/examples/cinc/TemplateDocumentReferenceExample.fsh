Instance : EmailCommunicationTemplateExample
InstanceOf :  TemplateDocumentReference
Description: "An example of an Email Template"
Usage : #example
* masterIdentifier.use = #usual
* masterIdentifier.value = "REC0"
* masterIdentifier.system = "https://api.messaging.digital.health.nz/MasterTemplateId"
* identifier.use = #usual
* identifier.system = "https://api.messaging.digital.health.nz/TemplateId"
* identifier.value = "CR1"
* status = #current
* docStatus = #final
* category.coding.code = #eligible
* category.coding.system = "https://fhir-ig.digital.health.nz/shared-care/CodeSystem/hnz-template-category-codes"
* date = "2024-08-20T14:30:00Z"
* description = "Participant is due for first-time screening (i.e. Pathway status has been updated to eligible): This would be triggered by a participant turning 25 (aged in) or having acquired a new NHI #"
//Template Body
* content[0].attachment.contentType = #application/pdf
* content[=].attachment.language = #en-nz
* content[=].attachment.id = "template-content"
* content[=].attachment.creation = "2023-08-01T09:35:00+11:00"
* content[=].attachment.data = "IyBQYXRpZW50IEVuY291bnRlciBOb3RlcwoKIyMgMjAyMy0wOC0wMgoKLSBEaXNjdXNzZWQgY29uZGl0aW9uCi0gT3RhaW5lZCBjb25zZW50IAotIGV0Yy4="
//Template Parameters
* content[+].attachment.contentType = #application/pdf
* content[=].attachment.language = #en-nz
* content[=].attachment.id = "template-variables"
* content[=].attachment.creation = "2023-08-01T09:35:00+11:00"
* content[=].attachment.data = "IyBQYXRpZW50IEVuY291bnRlciBOb3RlcwoKIyMgMjAyMy0wOC0wMgoKLSBEaXNjdXNzZWQgY29uZGl0aW9uCi0gT3RhaW5lZCBjb25zZW50IAotIGV0Yy4="
//Template Attachment
* content[+].attachment.contentType = #application/pdf
* content[=].attachment.language = #en-nz
* content[=].attachment.id = "template-attachment1"
* content[=].attachment.creation = "2023-08-01T09:35:00+11:00"
* content[=].attachment.data = "IyBQYXRpZW50IEVuY291bnRlciBOb3RlcwoKIyMgMjAyMy0wOC0wMgoKLSBEaXNjdXNzZWQgY29uZGl0aW9uCi0gT3RhaW5lZCBjb25zZW50IAotIGV0Yy4="
* context.related = Reference(BSAService)
