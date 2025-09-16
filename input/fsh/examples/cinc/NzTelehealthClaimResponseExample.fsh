Instance: NzTelehealthClaimResponseExample
InstanceOf: SharedCareClaimResponse
Usage: #example
Title: "NZ Telehealth Claim Response Example"
Description: "Example of a NZ Telehealth Claim Response for 24/7 telehealth services"

* identifier[0].use = #official
* identifier[0].system = "https://standards.digital.health.nz/ns/claim-response-identifier"
* identifier[0].value = "CR12345"

* status = #active

* type.coding.system = "https://standards.digital.health.nz/ns/nz-claim-type"
* type.coding.code = #professional

* subType.coding.system = "https://standards.digital.health.nz/ns/nz-claim-subtype"
* subType.coding.code = #online-gp-services

* use = #claim

* patient.reference = "Patient/ZZZ0008"
* patient.type = "Patient"
* patient.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* patient.identifier.value = "ZZZ0008"
* patient.display = "Mr Test Patient | Male | 2001-01-01"

* created = "2025-01-01T00:00:00-00:00"

* outcome = #complete

* request = Reference(NzTelehealthClaimExample)

// * requestor.reference = "Organisation/GZZ999-9"
// * requestor.type = "Organisation"
// * requestor.identifier.use = #primary
// * requestor.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
// * requestor.identifier.value = "GZZ999-9"
// * requestor.identifier.use = #secondary
// * requestor.identifier.system = "https://standards.digital.health.nz/ns/hpi-nzbn"
// * requestor.identifier.value = "9876543210123"

* item[+].itemSequence = 1
* item[=].extension[productOrService].valueCodeableConcept.coding[+].system = "https://standards.digital.health.nz/ns/purchase-unit"
* item[=].extension[productOrService].valueCodeableConcept.coding[=].code = #PU1234

* item[=].adjudication[+].category.coding[+].system = "https://standards.digital.health.nz/ns/adjudication-value-code"
* item[=].adjudication[=].category.coding[=].code = #benefit
* item[=].adjudication[=].reason.coding[+].system = "https://standards.digital.health.nz/ns/adjudication-reason-code"
* item[=].adjudication[=].reason.coding[=].code = #ar1234
* item[=].adjudication[=].amount.value = 100.00
* item[=].adjudication[=].amount.currency = #NZD
* item[=].adjudication[=].value = 1

* total[+].category.coding[+].system = "http://terminology.hl7.org/CodeSystem/adjudication"
* total[=].category.coding[=].code = #benefit
* total[=].amount.value = 100.00
* total[=].amount.currency = #NZD

* payment.type.coding[+].system = "http://terminology.hl7.org/CodeSystem/ex-paymenttype"
* payment.type.coding[=].code = #complete
* payment.date = "2025-01-01"
* payment.amount.value = 100.00
* payment.amount.currency = #NZD

//In 4B Required fields, but not utilized in the example
* insurer.reference = "Organization/GZZ000-1"
* insurer.type = "Organization"