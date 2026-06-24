Instance: NzPharmacyClaimResponseExample
InstanceOf: NzPharmacyClaimResponse
Title: "New Zealand Pharmacy Claim Response Example"
Description: "Example of a New Zealand pharmacy claim response"

* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/FZZ111-A"
* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #123e4567-e89b-12d3-a456-426614174011

* identifier.system = "https://standards.digital.health.nz/ns/claim-response-identifier"
* identifier.value = "a1b2c3d4-e5f6-7890-abcd-ef1234567890"
* identifier.use = #official

* insurer.type = "Organization"
* insurer.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* insurer.identifier.value = "G0K357-H"

* requestor.type = "Organization"
* requestor.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* requestor.identifier.value = "GZZ999-9"  // use same as Claim.provider

* status = #active
* type = https://fhir-ig.digital.health.nz/shared-care/CodeSystem/nz-claim-type#pharmacy
* subType = https://fhir-ig.digital.health.nz/shared-care/CodeSystem/nz-claim-subtypes#ICP
* use = #claim

* patient.type = "Patient"
* patient.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* patient.identifier.value = "ZZZ0008"

* created = "2025-01-01T00:00:00-00:00"

* request = Reference(NzPharmacyClaimExample2)
* outcome = #complete

* item[0].itemSequence = 1
* item[0].extension[productOrService].valueCodeableConcept = https://standards.digital.health.nz/ns/purchase-unit#PU1234
* item[0].extension[reviewOutcome].extension[decision].valueCodeableConcept = claim-decision-cs#approved

* item[0].adjudication[0].category = https://standards.digital.health.nz/ns/pharmacy-adjudication-category#amountpaid
* item[0].adjudication[0].amount.value = 100.00
* item[0].adjudication[0].amount.currency = #NZD

* item[0].adjudication[0].reason = https://fhir-ig.digital.health.nz/shared-care/CodeSystem/adjudication-reason-codes#policy

* item[0].detail[0].detailSequence = 1
* item[0].detail[0].adjudication[0].category = https://standards.digital.health.nz/ns/pharmacy-adjudication-category#drugcost
* item[0].detail[0].adjudication[0].amount.value = 50.00
* item[0].detail[0].adjudication[0].amount.currency = #NZD

* item[0].detail[0].adjudication[1].category = https://standards.digital.health.nz/ns/pharmacy-adjudication-category#pharmaceuticalsubsidy
* item[0].detail[0].adjudication[1].amount.value = 30.00
* item[0].detail[0].adjudication[1].amount.currency = #NZD

* item[0].detail[0].adjudication[2].category = https://standards.digital.health.nz/ns/pharmacy-adjudication-category#amountpaid
* item[0].detail[0].adjudication[2].amount.value = 100.00
* item[0].detail[0].adjudication[2].amount.currency = #NZD
* item[0].detail[0].adjudication[0].reason = https://fhir-ig.digital.health.nz/shared-care/CodeSystem/adjudication-reason-codes#policy



* item[0].detail[0].extension[productOrService].valueCodeableConcept = https://standards.digital.health.nz/ns/pharmacode#123456
* item[0].detail[0].extension[reviewOutcome].extension[decision].valueCodeableConcept = claim-decision-cs#approved
* item[0].detail[0].extension[traceNumber].valueIdentifier.system = "https://example.com/system"
* item[0].detail[0].extension[traceNumber].valueIdentifier.value = "UUID-123456"


* payment.type = http://terminology.hl7.org/CodeSystem/ex-paymenttype#complete
* payment.date = "2025-01-01"
* payment.amount.value = 100.00
* payment.amount.currency = #NZD

* error[0].itemSequence = 1
* error[0].detailSequence = 1
* error[0].code = https://fhir-ig.digital.health.nz/shared-care/CodeSystem/claim-decision-reason-cs#DET055.002
* error[0].code.text = "NHI number cannot be found in our records"