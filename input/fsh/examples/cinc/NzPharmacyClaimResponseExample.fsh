Instance: NzPharmacyClaimResponseExample
InstanceOf: NzPharmacyClaimResponse
Title: "New Zealand Pharmacy Claim Response Example"
Description: "Example of a New Zealand pharmacy claim response"
* identifier.value = "123456789123456789"
* extension[traceNumber].valueIdentifier.value = "TRN-123456789"
* extension[traceNumber].valueIdentifier.system = "https://example.com/system"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#pharmacy
* use = #claim
* patient = Reference(Patient/example)
* created = "2025-01-01T00:00:00-00:00"
* insurer = Reference(Organization/pharmac)
* requestor = Reference(Organization/pharmacy)
* request = Reference(Claim/123456789123456789)
* outcome = #complete

* item[0].itemSequence = 1
* item[0].extension[productOrService].valueCodeableConcept = https://standards.digital.health.nz/ns/purchase-unit#PU1234
* item[0].adjudication[0].category = https://standards.digital.health.nz/ns/pharmacy-adjudication-category#amountpaid
* item[0].adjudication[0].amount.value = 100.00
* item[0].adjudication[0].amount.currency = #NZD

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

* payment.type = http://terminology.hl7.org/CodeSystem/ex-paymenttype#complete
* payment.date = "2025-01-01"
* payment.amount.value = 100.00
* payment.amount.currency = #NZD

* error[0].itemSequence = 1
* error[0].detailSequence = 1
* error[0].code = http://terminology.hl7.org/CodeSystem/adjudication-error#a002