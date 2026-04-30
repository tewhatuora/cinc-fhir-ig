Instance: EmailCommunicationTemplateExample
InstanceOf: TemplateDocumentReference
Description: "An example of an Email Template."
Usage: #example

* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

* status = #current
* docStatus = #final
* category.coding.code = #eligible
* category.coding.system = "https://fhir-ig.digital.health.nz/shared-care/CodeSystem/hnz-template-category-codes"
* date = "2024-08-20T14:30:00Z"
* description = "Participant is due for first-time screening (i.e. Pathway status has been updated to eligible): This would be triggered by a participant turning 25 (aged in) or having acquired a new NHI #"

// --- Template Body ---
* content[template-message-body].extension[contentType].valueCode = #body
* content[template-message-body].attachment.contentType = #text/html
* content[template-message-body].attachment.creation = "2023-08-01T09:35:00+11:00"
* content[template-message-body].attachment.data = "PHA+RGVhciB7e1BhdGllbnROYW1lfX0sPC9wPiA8cD5Zb3UgYXJlIGludml0ZWQgdG8gYSBzY3JlZW5pbmcgb24ge3tBcHBvaW50bWVudERhdGV9fSBhdCB7e0FwcG9pbnRtZW50VGltZX19LjwvcD4gPHA+UGxlYXNlIGNvbmZpcm0geW91ciBhdHRlbmRhbmNlIGJ5IHt7Q29uZmlybWF0aW9uRGVhZGxpbmV9fS48L3A+IDxwPlNpbmNlcmVseSw8L3A+IDxwPllvdXIgSGVhbHRoY2FyZSBUZWFtPC9wPg=="

// --- Template Parameters ---
* content[template-message-parameters].extension[contentType].valueCode = #parameters
* content[template-message-parameters].attachment.contentType = #application/json
* content[template-message-parameters].attachment.creation = "2023-08-01T09:35:00+11:00"
* content[template-message-parameters].attachment.data = "ewogICJ0aXRsZSI6ICJXZWxjb21lIE1lc3NhZ2UgU2NoZW1hIiwKICAidHlwZSI6ICJvYmplY3QiLAogICJwcm9wZXJ0aWVzIjogewogICAgImZpcnN0TmFtZSI6IHsKICAgICAgInR5cGUiOiAic3RyaW5nIiwKICAgICAgImRlc2NyaXB0aW9uIjogIlRoZSByZWNpcGllbnQncyBmaXJzdCBuYW1lLiIsCiAgICAgICJyZXF1aXJlZCI6IHRydWUKICAgIH0sCiAgICAibGFzdE5hbWUiOiB7CiAgICAgICJ0eXBlIjogInN0cmluZyIsCiAgICAgICJkZXNjcmlwdGlvbiI6ICJUaGUgcmVjaXBpZW50J3MgbGFzdCBuYW1lLiIsCiAgICAgICJyZXF1aXJlZCI6IGZhbHNlCiAgICB9LAogICAgIndlbGNvbWVNZXNzYWdlIjogewogICAgICAidHlwZSI6ICJzdHJpbmciLAogICAgICAiZGVzY3JpcHRpb24iOiAiQSBjdXN0b20gd2VsY29tZSBtZXNzYWdlLiIsCiAgICAgICJyZXF1aXJlZCI6IGZhbHNlCiAgICB9CiAgfSwKICAicmVxdWlyZWQiOiBbImZpcnN0TmFtZSJdCn0="

// --- Template Attachment ---
* content[template-attachment-file].extension[contentType].valueCode = #attachment
* content[template-attachment-file].attachment.contentType = #application/pdf
* content[template-attachment-file].attachment.title = "InstructionSet.pdf"
* content[template-attachment-file].attachment.creation = "2023-08-01T09:35:00+11:00"
* content[template-attachment-file].attachment.data = "IyBQYXRpZW50IEVuY291bnRlciBOb3RlcwoKIyMgMjAyMy0wOC0wMgoKLSBEaXNjdXNzZWQgY29uZGl0aW9uCi0gT3RhaW5lZCBjb25zZW50IAotIGV0Yy4="
* content[template-attachment-file].attachment.extension[AttachmentExtension].extension[attachmentDisposition].valueString = "attachment"
* content[template-attachment-file].attachment.extension[AttachmentExtension].extension[attachmentContentId].valueString = "logo"

* context.related.type = "Device"
* context.related.identifier.use = #official
* context.related.identifier.system = "https://hub.services.digital.health.nz/ns/hip-application-id"
* context.related.identifier.value = "56789"
* context.related.display = "BSA"
