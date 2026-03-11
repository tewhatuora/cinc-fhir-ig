Instance: NzTelehealthClaimResponseExample
InstanceOf: SharedCareClaimResponse
Usage: #example
Title: "NZ Telehealth Claim Response Example"
Description: "Example of a NZ Telehealth Claim Response for 24/7 telehealth services"

* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F12345-A"
* meta.tag[hubCorrelationId].system = "https://hub.services.digital.health.nz/ns/correlation-id-type"
* meta.tag[hubCorrelationId].code = #hub-correlation-id
* meta.tag[hubCorrelationId].display = "123e4567-e89b-12d3-a456-426614174000"

* identifier[0].use = #official
* identifier[0].system = "https://standards.digital.health.nz/ns/claim-response-identifier"
* identifier[0].value = "a1b2c3d4-e5f6-7890-abcd-ef1234567890"

* status = #active

* type.coding = http://terminology.hl7.org/CodeSystem/claim-type#professional

* subType.coding = $nz-claim-subtype#telehealth

* use = http://hl7.org/fhir/claim-use#claim

// * patient.reference = "Patient/ZZZ0008"
* patient.type = "Patient"
* patient.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* patient.identifier.value = "ZZZ0008"

* created = "2025-01-15T10:30:00-00:00"

* outcome = http://hl7.org/fhir/remittance-outcome#complete

* request = Reference(NzTelehealthClaimExample)

* requestor.type = "Organization"
* requestor.identifier.use = #official
* requestor.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* requestor.identifier.value = "GZZ999-J"

* item[+].itemSequence = 1
* item[=].extension[traceNumber].valueIdentifier.system = "https://standards.digital.health.nz/ns/claim-response-item-identifier"
* item[=].extension[traceNumber].valueIdentifier.value = "cd7b6e0d-c554-4786-a52d-3efd1c187c1a"
* item[=].extension[productOrService].valueCodeableConcept.coding[+].system = "https://standards.digital.health.nz/ns/purchase-unit"
* item[=].extension[productOrService].valueCodeableConcept.coding[=].code = #COGP0068
* item[=].extension[reviewOutcome].extension[decision].valueCodeableConcept.coding[+].system = "https://fhir-ig.digital.health.nz/shared-care/CodeSystem/claim-decision-cs"
* item[=].extension[reviewOutcome].extension[decision].valueCodeableConcept.coding[=].code = #approved
* item[=].extension[reviewOutcome].extension[decision].valueCodeableConcept.coding[=].display = "Approved"
* item[=].extension[reviewOutcome].extension[reason][+].valueCodeableConcept.coding[+].system = "https://fhir-ig.digital.health.nz/shared-care/CodeSystem/claim-decision-reason-cs"
* item[=].extension[reviewOutcome].extension[reason][=].valueCodeableConcept.coding[=].code = #DET064.001
* item[=].extension[reviewOutcome].extension[reason][=].valueCodeableConcept.coding[=].display = "Passed"
* item[=].extension[reviewOutcome].extension[reason][=].valueCodeableConcept.text = "Record of encounter was found in our system."

* item[=].adjudication[+].category.coding[+].system = "http://terminology.hl7.org/CodeSystem/adjudication"
* item[=].adjudication[=].category.coding[=].code = #benefit
* item[=].adjudication[=].reason.coding[+].system = "https://standards.digital.health.nz/ns/adjudication-reason-code"
* item[=].adjudication[=].reason.coding[=].code = #policy
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
// * insurer.reference = "Organization/GZZ000-1"
* insurer.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* insurer.identifier.value = "G0K357-H"
* insurer.type = "Organization"

* error[+].code.coding[+].system = "http://terminology.hl7.org/CodeSystem/adjudication-error"
* error[=].code.coding[=].code = #a001
* error[=].code.coding[=].display = "Invalid claim"
* error[=].code.text = "Claim validation failed: Missing required service date"
