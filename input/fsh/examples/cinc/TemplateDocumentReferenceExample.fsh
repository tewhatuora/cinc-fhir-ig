Instance : EmailTemplateExample
InstanceOf :  TemplateDocumentReference
Description: "An example of an Eail Template"
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
//Email Body
* content.attachment.contentType = #application/pdf
* content.attachment.language = #en-nz
* content.attachment.id = "attachment-body"
* content.attachment.title = "Cervical Screening: What you need to know" //Email Subject
* content.attachment.creation = "2023-08-01T09:35:00+11:00"
* content.attachment.data = "IyBQYXRpZW50IEVuY291bnRlciBOb3RlcwoKIyMgMjAyMy0wOC0wMgoKLSBEaXNjdXNzZWQgY29uZGl0aW9uCi0gT3RhaW5lZCBjb25zZW50IAotIGV0Yy4="
* context.period.start = "2024-08-20T14:30:00Z"
* context.related = Reference(BSAService)
//Extensions
* extension[0].url = Canonical(hnz-notification-triggered-extension)
* extension[=].valueString = "Pathway status change"
