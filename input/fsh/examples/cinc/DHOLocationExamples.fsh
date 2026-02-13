Instance: DHOLocationInternalExample
InstanceOf: DHOLocation
Usage: #example
Title: "Dunedin Hospital Internal Clinic Example"
Description: "An internal location within Dunedin Hospital, with required area code and parent location."

* status = #active
* name = "Dunedin Hospital Outpatients Clinic 1"
* mode = #instance
* type = DHOLocationRelationship#internal
* physicalType = DHOLocationPhysicalType#physical

* identifier[0].system = "https://standards.digital.health.nz/ns/dho-area-code"
* identifier[=].value = "DHO-AREA-123"

* address.line = "201 Great King Street"
* address.city = "Dunedin"
* address.postalCode = "9016"
* address.country = "NZ"

* managingOrganization.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* managingOrganization.identifier.value = "G00001-E"
* managingOrganization.display = "Te Whatu Ora - Southern"

* partOf.identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* partOf.identifier.value = "F00001-A"
* partOf.display = "Dunedin Hospital"

* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F00001-A"
* meta.tag[correlationId].code = #example-correlation-id

Instance: DHOLocationPatientHomeExample
InstanceOf: DHOLocation
Usage: #example
Title: "Patient Home Location Example"
Description: "A patient's home used as a location for telehealth or home visits."

* status = #active
* name = "John Doe's Residence"
* mode = #instance
* type = DHOLocationRelationship#patient_home
* physicalType = DHOLocationPhysicalType#virtual

* identifier[0].system = "https://fhir-ig.digital.health.nz/id/local-patient-home-id"
* identifier[=].value = "HOME-12345"

* address.line = "123 Example Street"
* address.city = "Dunedin"
* address.postalCode = "9010"
* address.country = "NZ"

* managingOrganization.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* managingOrganization.identifier.value = "G00001-E"
* managingOrganization.display = "Te Whatu Ora - Southern"

* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F00001-A"
* meta.tag[correlationId].code = #example-correlation-id

Instance: DHOLocationExternalExample
InstanceOf: DHOLocation
Usage: #example
Title: "External Facility Example"
Description: "An external facility (e.g., a community clinic) not directly managed by DHO."

* status = #active
* name = "Community Health Centre"
* mode = #instance
* type = DHOLocationRelationship#external
* physicalType = DHOLocationPhysicalType#physical

* identifier[0].system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* identifier[=].value = "FZZ999-B"

* address.line = "456 Community Lane"
* address.city = "Mosgiel"
* address.postalCode = "9024"
* address.country = "NZ"

* managingOrganization.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* managingOrganization.identifier.value = "GZZ888-F"
* managingOrganization.display = "External Healthcare Provider"

* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/FZZ999-B"
* meta.tag[correlationId].code = #example-correlation-id
