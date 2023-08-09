Instance: DocumentReferenceExample
InstanceOf: ManaakiNgaTahiDocumentReference
Usage: #example
Description: "An example ManaakiNgaTahi DocumentReference" 

* status = #current
* docStatus = #preliminary

* type.coding.system = "http://loinc.org"
* type.coding.code = #34748-4
* type.coding.display = "Telephone encounter Note"

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

* content.attachment.contentType = #markdown
* content.attachment.language = #en-nz
* content.attachment.data = "Thisisaencounternote"
* content.attachment.size = 3654
* content.attachment.hash = "2jmj7l5rSw0yVb/vlWAYkK/YBwk\u003d"
* content.attachment.title = "Physical"
* content.attachment.creation = "2005-12-24T09:35:00+11:00"

* content.format.system = "urn:oid:1.3.6.1.4.1.19376.1.2.3"
* content.format.code = #urn:ihe:pcc:handp:2008
* content.format.display = "History and Physical Specification"

* context.encounter.reference = "encounterid"
* context.period.start = "2022-09-20"
* context.period.end = "2022-09-27"


* meta.versionId = "1"
* meta.lastUpdated = "2022-09-20T02:23:35.662Z"
