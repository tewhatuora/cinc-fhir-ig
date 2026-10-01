Instance: DHOServiceRequestExample
InstanceOf: DHOServiceRequest
Usage: #example
Title: "An example Dunedin Hospital Outpatient Service Request"
Description: "An example lightweight referral to the Dunedin Hospital Outpatients Fracture Clinic."

* id = "DHO-service-request-instance"
* meta.versionId = "1"
* meta.lastUpdated = "2025-11-11T02:29:24.844Z"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOServiceRequest"

* identifier[0].value = "#fbdb8d66-1390-22c7-89a6-a9a75d65d3e6"
* status = #active
* intent = #order
* priority = #routine
* code = DHOHealthSpecialityCS#S45B "Fracture Clinic"

* subject.identifier insert NHIIdentifier(ZXP7823)
* subject.display = "Carey Carrington"

* authoredOn = "2025-11-10T21:15:00.000Z"

* requester.identifier insert HPIProviderNumber(99ZZZX)
* requester.display = "Dr Dotty McStuffins"

* reasonCode.text = "Persistent wrist pain following fall"
