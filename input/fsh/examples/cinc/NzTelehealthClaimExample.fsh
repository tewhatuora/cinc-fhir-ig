Instance: NzTelehealthClaimExample
InstanceOf: SharedCareClaim
Usage: #example
Title: "NZ Telehealth Claim Example"
Description: "Example of a telehealth claim for 24/7 telehealth services"



* identifier[0].use = #official
* identifier[0].system = "https://standards.digital.health.nz/ns/claim-identifier"
* identifier[0].value = "C123456"

* status = #active

* type.coding.system = "https://standards.digital.health.nz/ns/nz-claim-type"
* type.coding.code = #professional

* subType.coding.system = "https://standards.digital.health.nz/ns/nz-claim-subtype"
* subType.coding.code = #online-gp-services

* use = #claim

* created = "2025-01-01T00:00:00+13:00"

* billablePeriod.start = "2025-01-01"
* billablePeriod.end = "2025-01-01"

* insurer.reference = "Organization/GZZ000-1"
* insurer.type = "Organization"
* insurer.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* insurer.identifier.value = "GZZ000-1"

* payee.type.coding.system = "http://terminology.hl7.org/CodeSystem/payeetype"
* payee.type.coding.code = #provider
* payee.party.identifier.use = #official
* payee.party.identifier.system = "https://standards.digital.health.nz/ns/hsaap-provider-site-id"
* payee.party.identifier.value = "P012345"

* patient.reference = "Patient/ZZZ0008"
* patient.type = "Patient"
* patient.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* patient.identifier.value = "ZZZ0008"
* patient.display = "Mr Test Patient | Male | 2001-01-01"

* provider.reference = "Organization/GZZ999-9"
* provider.type = "Organization"
* provider.identifier.use = #official
* provider.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* provider.identifier.value = "GZZ999-9"
* provider.identifier.use = #secondary
* provider.identifier.system = "https://standards.digital.health.nz/ns/hpi-nzbn"
* provider.identifier.value = "9876543210123"

* careTeam[+].sequence = 1
* careTeam[=].provider.reference = "Practitioner/12345"
* careTeam[=].responsible = true
* careTeam[=].role.coding.system = "https://standards.digital.health.nz/ns/claim-careteam-role-code"
* careTeam[=].role.coding.code = #primary
* careTeam[=].qualification.coding.system = "https://standards.digital.health.nz/ns/provider-qualification-codes"
* careTeam[=].qualification.coding.code = #S12345

* total.value = 500.00
* total.currency = #NZD

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
* item[=].unitPrice.value = 500.00
* item[=].unitPrice.currency = #NZD
* item[=].net.value = 500.00
* item[=].net.currency = #NZD
* item[=].extension[patientPaid].valueMoney.value = 20.00
* item[=].extension[patientPaid].valueMoney.currency = #NZD
* item[=].extension[itemTax].valueMoney.value = 75.00
* item[=].extension[itemTax].valueMoney.currency = #NZD

* extension[traceNumber].valueIdentifier.system = "https://example.org/fhir/trace-number"
* extension[traceNumber].valueIdentifier.value = "7890"


//In 4B Required fields, but not utilized in the example
* priority.coding.system = "http://terminology.hl7.org/CodeSystem/processpriority" 
* priority.coding.code = #normal

* insurance[+].sequence = 1
* insurance[=].focal = true
* insurance[=].coverage.reference = "Coverage/1234567890"

* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F12345"
* meta.tag[+].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[=].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx