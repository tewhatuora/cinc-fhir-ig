Instance: NzPharmacyClaimExample2
InstanceOf: NzPharmacyClaim
Title: "New Zealand Pharmacy Claim Example"
Description: "Example of a New Zealand pharmacy claim"


* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/FZZ111-A"
* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #123e4567-e89b-12d3-a456-426614174000

* identifier[0].use = #official
* identifier[0].system = "https://provider-org-name.co.nz/ns/claim-identifier"
* identifier[0].value = "C123456"

* type = https://fhir-ig.digital.health.nz/shared-care/CodeSystem/nz-claim-type#pharmacy
* subType = https://fhir-ig.digital.health.nz/shared-care/CodeSystem/nz-claim-subtype#ICPSA

* use = #claim
* status = #active

* priority = http://terminology.hl7.org/CodeSystem/processpriority#normal
* created = "2025-01-01T00:00:00+13:00"

* billablePeriod.start = "2025-01-01"
* billablePeriod.end = "2025-01-01"

* insurance[0].sequence = 1
* insurance[0].focal = false
* insurance[0].coverage.display = "Not applicable"
* insurance[0].coverage.extension[0].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* insurance[0].coverage.extension[0].valueCode = #not-applicable

* enterer.type = "Practitioner"
* enterer.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* enterer.identifier.value = "12345"

* patient.type = "Patient"
* patient.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* patient.identifier.value = "ZZZ0008"

* provider.type = "Organization"
* provider.identifier.use = #official
* provider.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* provider.identifier.value = "GZZ999-9"

* total.value = 500.00
* total.currency = #NZD

//extension
// Extensions
* extension[patientCohort].valueCodeableConcept = https://fhir-ig.digital.health.nz/shared-care/CodeSystem/pharmacy-claim-patient-cohort-codes#CRC
* extension[claimantNumber].valueString = "AG12345"
* extension[originatingClaimantNumber].valueString = "AG54321"

//Item
* item[0].sequence = 1
* item[0].productOrService = https://standards.digital.health.nz/ns/purchase-unit#PU1234
* item[0].servicedPeriod.start = "2025-01-01T00:00:00+13:00"
* item[0].servicedPeriod.end = "2025-01-01T23:59:59+13:00"

// Item-level extensions
* item[0].extension[transactionCategory].valueCodeableConcept = https://fhir-ig.digital.health.nz/shared-care/CodeSystem/nz-pharmacy-transaction-category#I
* item[0].extension[extendedSupplyFlag].valueBoolean = false

// Item-level extensions flags
* item[0].extension[patientFlag].valueBoolean = true
* item[0].extension[prescriberFlag].valueBoolean = false
* item[0].extension[prescriptionFlag].valueBoolean = true
* item[0].extension[doseFlag].valueBoolean = false
* item[0].extension[groupId].valueString = "GRP001"

* item[0].extension[request].valueReference.type = "MedicationDispense"
* item[0].extension[request].valueReference.identifier.system = "https://provider-org-name.co.nz/ns/scriptno-local"
* item[0].extension[request].valueReference.identifier.value = "RX123456-01"

//Item Detail
* item[0].detail[0].sequence = 1
* item[0].detail[0].productOrService.coding[0] = https://standards.digital.health.nz/ns/pharmacode#123456
* item[0].detail[0].productOrService.coding[1] = https://standards.digital.health.nz/ns/nzulm#NZULM789

* item[0].detail[0].quantity.value = 180
* item[0].detail[0].quantity.unit = "Tablets"
* item[0].detail[0].net.value = 500.00
* item[0].detail[0].net.currency = #NZD
* item[0].detail[0].extension[balanceOwing].valueString = "0"
* item[0].detail[0].extension[wastageQuantity].valueQuantity.value = 5
* item[0].detail[0].extension[wastageQuantity].valueQuantity.unit = "Tablets"
* item[0].detail[0].extension[cbsSubsidy].valueMoney.value = 10.00
* item[0].detail[0].extension[cbsSubsidy].valueMoney.currency = #NZD
* item[0].detail[0].extension[cbsPackSize].valueQuantity.value = 30
* item[0].detail[0].extension[cbsPackSize].valueQuantity.unit = "Tablets"