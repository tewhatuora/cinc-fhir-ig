Instance: DHOLocationInternalExample
InstanceOf: DHOLocation
Usage: #example
Title: "Dunedin Hospital Internal Clinic Example"
Description: "An internal location within Dunedin Hospital, with required area code and parent location."

* id = "DHO-location-internal-instance"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOLocation"

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
* partOf.identifier.value = "F04066-D"
* partOf.display = "Dunedin Hospital"

* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* meta.tag[correlationId].code = #example-correlation-id

Instance: DHOLocationPatientHomeExample
InstanceOf: DHOLocation
Usage: #example
Title: "Patient Home Location Example"
Description: "A patient's home used as a location for telehealth or home visits."

* id = "DHO-location-home-instance"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOLocation"

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

* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* meta.tag[correlationId].code = #example-correlation-id

Instance: DHOLocationExternalExample
InstanceOf: DHOLocation
Usage: #example
Title: "External Facility Example"
Description: "An external facility (e.g., a community clinic) not directly managed by DHO."

* id = "DHO-location-external-instance"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOLocation"

* status = #active
* name = "Community Health Centre"
* mode = #instance
* type = DHOLocationRelationship#external
* physicalType = DHOLocationPhysicalType#physical

* identifier[0].system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* identifier[=].value = "F04066-D"

* address.line = "456 Community Lane"
* address.city = "Mosgiel"
* address.postalCode = "9024"
* address.country = "NZ"

* managingOrganization.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* managingOrganization.identifier.value = "GZZ888-F"
* managingOrganization.display = "External Healthcare Provider"

* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* meta.tag[correlationId].code = #example-correlation-id

// Example Location using the DHOOutreach extension
Instance: DHOLocationOutreachExample
InstanceOf: DHOLocation
Usage: #example
Title: "Outreach Example"
Description: "Location demonstrating the DHOOutreach extension."

* id = "DHO-location-outreach-instance"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOLocation"

* status = #active
* name = "DHO Outreach Clinic"
* identifier[0].system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* identifier[=].value = "F04066-D"
* managingOrganization = Reference(DHONzOrganizationExample)
* address.text = "123 Example Street, Dunedin"

// Use the extension (named 'outreach' in the profile)
* extension[outreach].valueCodeableConcept = DHOLocationOutreach#outreach "Outreach / mobile location"
