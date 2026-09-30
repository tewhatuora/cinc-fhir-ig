Instance: DHOLocationInternalExample
InstanceOf: DHOLocation
Usage: #example
Title: "An example Dunedin Hospital Outpatient Internal Clinic"
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

* address.use = #work
* address.type = #physical
* address.line[+] = "350 Cumberland Street"
* address.line[+] = "Dunedin Central"
* address.city = "Dunedin"
* address.postalCode = "9016"
* address.country = "NZ"

* managingOrganization.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* managingOrganization.identifier.value = "G00001-E"
* managingOrganization.display = "Te Whatu Ora - Southern"

* partOf.identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* partOf.identifier.value = "F04066-D"
* partOf.display = "Dunedin Hospital"

Instance: DHOLocationNewDunedinHospitalExample
InstanceOf: DHOLocation
Usage: #example
Title: "An example New Dunedin Hospital outpatient clinic"
Description: "An outpatient clinic location at the New Dunedin Hospital, contained on an Appointment as the clinician/service site for a telehealth appointment."

* id = "DHO-location-new-dunedin-hospital-instance"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOLocation"

* status = #active
* name = "New Dunedin Hospital Outpatients"
* mode = #instance
* type = DHOLocationRelationship#internal
* physicalType = DHOLocationPhysicalType#physical

* identifier[0].system = "https://standards.digital.health.nz/ns/dho-area-code"
* identifier[=].value = "DHO-AREA-201"

* address.use = #work
* address.type = #physical
* address.line = "201 Great King Street"
* address.city = "Dunedin"
* address.postalCode = "9016"
* address.country = "NZ"

* managingOrganization.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* managingOrganization.identifier.value = "G00001-E"
* managingOrganization.display = "Te Whatu Ora - Southern"

* partOf.identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* partOf.identifier.value = "F09000-A"
* partOf.display = "New Dunedin Hospital"

Instance: DHOLocationPatientHomeExample
InstanceOf: DHOLocation
Usage: #example
Title: "An example Dunedin Hospital Outpatient patient home location"
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

Instance: DHOLocationTelehealthHomeExample
InstanceOf: DHOLocation
Usage: #example
Title: "An example Dunedin Hospital Outpatient telehealth-at-home location"
Description: "The patient's home address, contained on an Appointment as the location where the patient will be present for a telehealth appointment."

* id = "DHO-location-telehealth-home-instance"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOLocation"

* status = #active
* name = "Carey Carrington's Residence"
* mode = #instance
* type = DHOLocationRelationship#patient_home
* physicalType = DHOLocationPhysicalType#virtual

* identifier[0].system = "https://fhir-ig.digital.health.nz/id/local-patient-home-id"
* identifier[=].value = "HOME-67890"

* address.use = #home
* address.line = "22 Filleul Street"
* address.city = "Dunedin"
* address.postalCode = "9016"
* address.country = "NZ"

* managingOrganization.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* managingOrganization.identifier.value = "G00001-E"
* managingOrganization.display = "Te Whatu Ora - Southern"

Instance: DHOLocationTelehealthPrisonExample
InstanceOf: DHOLocation
Usage: #example
Title: "An example Dunedin Hospital Outpatient telehealth-at-prison location"
Description: "A Corrections facility, contained on an Appointment as the location where the patient will be present for a telehealth appointment while in custody."

* id = "DHO-location-telehealth-prison-instance"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOLocation"

* status = #active
* name = "Otago Corrections Facility"
* mode = #instance
* type = DHOLocationRelationship#external
* physicalType = DHOLocationPhysicalType#virtual

* identifier[0].system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* identifier[=].value = "F99123-C"

* address.use = #work
* address.line = "Landfall Drive"
* address.city = "Milton"
* address.postalCode = "9286"
* address.country = "NZ"

* managingOrganization.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* managingOrganization.identifier.value = "GZZ777-C"
* managingOrganization.display = "Department of Corrections"

Instance: DHOLocationExternalExample
InstanceOf: DHOLocation
Usage: #example
Title: "External Facility Example"
Description: "An example Dunedin Hospital Outpatient external facility (e.g., a community clinic) not directly managed by DHO."

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

// Example Location using the DHOOutreach extension
Instance: DHOLocationOutreachExample
InstanceOf: DHOLocation
Usage: #example
Title: "An example Dunedin Hospital Outpatient outreach"
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
* address.text = "456 Example Street, Dunedin"

// Use the extension (named 'outreach' in the profile)
* extension[outreach].valueCodeableConcept = DHOLocationOutreach#outreach "Outreach / mobile location"

Instance: DHOLocationDunstanOutreachExample
InstanceOf: DHOLocation
Usage: #example
Title: "An example Dunedin Hospital Outpatient Dunstan outreach clinic"
Description: "The Dunstan outreach clinic, contained on an Appointment as the location where the patient is seen in person for an external (outreach) appointment."

* id = "DHO-location-dunstan-outreach-instance"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOLocation"

* status = #active
* name = "Dunstan Outreach Clinic"
* mode = #instance
* type = DHOLocationRelationship#external
* physicalType = DHOLocationPhysicalType#physical

* identifier[0].system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* identifier[=].value = "F04180-A"

* address.use = #work
* address.type = #physical
* address.line = "26 Symes Road"
* address.city = "Clyde"
* address.postalCode = "9330"
* address.country = "NZ"

* managingOrganization.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* managingOrganization.identifier.value = "G00001-E"
* managingOrganization.display = "Te Whatu Ora - Southern"

// Use the extension (named 'outreach' in the profile)
* extension[outreach].valueCodeableConcept = DHOLocationOutreach#outreach "Outreach / mobile location"
