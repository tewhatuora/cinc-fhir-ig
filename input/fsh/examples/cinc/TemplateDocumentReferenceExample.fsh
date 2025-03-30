Instance : EmailCommunicationTemplateExample
InstanceOf : TemplateDocumentReference
Description : "An example of an Email Template."
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
* content[0].attachment.id = "template-message-body"
* content[=].attachment.contentType = #text/html
* content[=].attachment.creation = "2023-08-01T09:35:00+11:00"
* content[=].attachment.data = "PHA+RGVhciB7e1BhdGllbnROYW1lfX0sPC9wPiA8cD5Zb3UgYXJlIGludml0ZWQgdG8gYSBzY3JlZW5pbmcgb24ge3tBcHBvaW50bWVudERhdGV9fSBhdCB7e0FwcG9pbnRtZW50VGltZX19LjwvcD4gPHA+UGxlYXNlIGNvbmZpcm0geW91ciBhdHRlbmRhbmNlIGJ5IHt7Q29uZmlybWF0aW9uRGVhZGxpbmV9fS48L3A+IDxwPlNpbmNlcmVseSw8L3A+IDxwPllvdXIgSGVhbHRoY2FyZSBUZWFtPC9wPg=="

//Template Parameters
* content[+].attachment.id = "template-message-parameters"
* content[=].attachment.contentType = #application/json
* content[=].attachment.creation = "2023-08-01T09:35:00+11:00"
* content[=].attachment.data = "ewogICJ0aXRsZSI6ICJXZWxjb21lIE1lc3NhZ2UgU2NoZW1hIiwKICAidHlwZSI6ICJvYmplY3QiLAogICJwcm9wZXJ0aWVzIjogewogICAgImZpcnN0TmFtZSI6IHsKICAgICAgInR5cGUiOiAic3RyaW5nIiwKICAgICAgImRlc2NyaXB0aW9uIjogIlRoZSByZWNpcGllbnQncyBmaXJzdCBuYW1lLiIsCiAgICAgICJyZXF1aXJlZCI6IHRydWUKICAgIH0sCiAgICAibGFzdE5hbWUiOiB7CiAgICAgICJ0eXBlIjogInN0cmluZyIsCiAgICAgICJkZXNjcmlwdGlvbiI6ICJUaGUgcmVjaXBpZW50J3MgbGFzdCBuYW1lLiIsCiAgICAgICJyZXF1aXJlZCI6IGZhbHNlCiAgICB9LAogICAgIndlbGNvbWVNZXNzYWdlIjogewogICAgICAidHlwZSI6ICJzdHJpbmciLAogICAgICAiZGVzY3JpcHRpb24iOiAiQSBjdXN0b20gd2VsY29tZSBtZXNzYWdlLiIsCiAgICAgICJyZXF1aXJlZCI6IGZhbHNlCiAgICB9CiAgfSwKICAicmVxdWlyZWQiOiBbImZpcnN0TmFtZSJdCn0="

//Template Attachment
* content[+].attachment.id = "template-attachment-file1"
* content[=].attachment.contentType = #application/pdf
* content[=].attachment.title = "InstructionSet.pdf"
* content[=].attachment.creation = "2023-08-01T09:35:00+11:00"
* content[=].attachment.data = "IyBQYXRpZW50IEVuY291bnRlciBOb3RlcwoKIyMgMjAyMy0wOC0wMgoKLSBEaXNjdXNzZWQgY29uZGl0aW9uCi0gT3RhaW5lZCBjb25zZW50IAotIGV0Yy4="
* content[=].attachment.extension[0].url = Canonical(hnz-attachment-extension)
* content[=].attachment.extension[=].extension[0].url = "attachmentDisposition"
* content[=].attachment.extension[=].extension[=].valueString = "attachment"
* content[=].attachment.extension[=].extension[+].url = "attachmentContentId"
* content[=].attachment.extension[=].extension[=].valueString = "logo"

* context.related = Reference(BSAService)
