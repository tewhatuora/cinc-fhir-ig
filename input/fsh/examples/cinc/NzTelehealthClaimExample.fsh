Instance: NzTelehealthClaimExample
InstanceOf: SharedCareClaim
Usage: #example
Title: "NZ Telehealth Claim Example"
Description: "Example of a telehealth claim for 24/7 telehealth services"

* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F12345"
* meta.tag[+].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[=].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

* identifier[0].use = #official
* identifier[0].system = "https://standards.digital.health.nz/ns/claim-identifier"
* identifier[0].value = "C123456"

* status = #active

* type.coding.code = http://terminology.hl7.org/CodeSystem/claim-type#professional

* subType.coding.code = $nz-claim-subtype#telehealth

* use = http://hl7.org/fhir/claim-use#claim

* created = "2025-01-01T00:00:00+13:00"

* billablePeriod.start = "2025-01-01"
* billablePeriod.end = "2025-01-01"

// * patient.reference = "Patient/ZZZ0008"
* patient.type = "Patient"
* patient.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* patient.identifier.value = "ZZZ0008"
* patient.display = "Mr Test Patient | Male | 2001-01-01"

// * provider.reference = "Organization/GZZ999-9"
* provider.type = "Organization"
* provider.identifier.use = #official
* provider.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* provider.identifier.value = "GZZ999-9"
* provider.identifier.use = #secondary
* provider.identifier.system = "https://standards.digital.health.nz/ns/hpi-nzbn"
* provider.identifier.value = "9876543210123"

* item[+].sequence = 1
* item[=].encounter[+].reference = "Encounter/NzTelehealthEncounterExample"
* item[=].productOrService.coding.system = "https://standards.digital.health.nz/ns/purchase-unit"
* item[=].productOrService.coding.code = #PU1234
* item[=].servicedPeriod.start = "2025-01-01T10:00:00+13:00"
* item[=].servicedPeriod.end = "2025-01-01T10:17:00+13:00"
* item[=].locationReference.type = "Location"
* item[=].locationReference.identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* item[=].locationReference.identifier.value = "F12345"
* item[=].locationReference.display = "Example Telehealth Facility"
* item[=].quantity.value = 1

* item[=].extension[patientPaid].valueMoney.value = 20.00
* item[=].extension[patientPaid].valueMoney.currency = #NZD

* extension[traceNumber].valueIdentifier.system = "https://example.org/fhir/trace-number"
* extension[traceNumber].valueIdentifier.value = "7890"
* extension[agreementNumber].valueString = "AGRS-202sdfg4-00121"

//In 4B Required fields, but not utilized in the example
* priority.coding.system = "http://terminology.hl7.org/CodeSystem/processpriority" 
* priority.coding.code = #normal
* insurance.coverage.identifier.system = "https://standards.digital.health.nz/ns/insurance-identifier"
* insurance.coverage.identifier.value = "INS123456"
* insurance.focal = false
* insurance.sequence = 1
