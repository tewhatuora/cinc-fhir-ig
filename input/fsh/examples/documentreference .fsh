Instance: DocumentReferenceExample
InstanceOf: ManaakiNgaTahiDocumentReference
Usage: #example
Description: "An example ManaakiNgaTahi DocumentReference" 

* status = #current
* docStatus = #preliminary

* type.coding.system = "http://snomed.info/sct"
* type.coding.code = #866144008
* type.coding.display = "Encounter note"

* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZXP7823"
* subject.display = "Carey Carrington"

* date = "2005-12-24T09:43:41+11:00"

* author.type = "Practitioner"
* author.identifier.use = #official
* author.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* author.identifier.value = "99ZZFX"
* author.display = "Dottie McStuffins"

* description = "A note generated during an Encounter"

* content.attachment.contentType = #text/markdown
* content.attachment.language = #en-nz
* content.attachment.data = "IyBQYXRpZW50IEVuY291bnRlciBOb3RlcwoKIyMgMjAyMy0wOC0wMgoKLSBEaXNjdXNzZWQgY29uZGl0aW9uCi0gT3RhaW5lZCBjb25zZW50IAotIGV0Yy4="
//* content.attachment.size = 3654
//* content.attachment.hash = "2jmj7l5rSw0yVb/vlWAYkK/YBwk\u003d"
* content.attachment.title = "Telephone Encounter Notes"
* content.attachment.creation = "2023-08-01T09:35:00+11:00"

* context.encounter = Reference(EncounterExample)
//* context.period.start = "2023-08-01"
//* context.period.end = "2022-09-27"


* meta.versionId = "1"
* meta.lastUpdated = "2022-09-20T02:23:35.662Z"
