Instance: HSAAPAdjudicatedClaimResponse
InstanceOf: ClaimResponse
Usage: #example
* identifier.system = "https://api.messaging.digital.health.nz/fileID"
* identifier.value = #7612345
* status = #active
* type.coding.system = "http://terminology.hl7.org/CodeSystem/claimresponse-type"
* type.coding.code = #pharmacy
* use = #claim
* patient.identifier.use = #official
* patient.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* patient.identifier.value = "ZXP7823"
* patient.display = "Carey Carrington"
* created = "2014-08-16"
* insurer = Reference(Organization/43242343232)
* request = Reference(Claim/790423052393482)
* outcome = #complete
* item[0].itemSequence = 1
* item[0].adjudication[0].category.coding.code = #eligible
* item[0].adjudication[0].amount.value = 235.4
* item[0].adjudication[0].amount.currency = #NZD
* payment.type.coding.system = "http://example.org/fhir/CodeSystem/payment-type"
* payment.type.coding.code = #complete
* payment.date = "2014-08-31"
* payment.amount.value = 382.32
* payment.amount.currency = #NZD