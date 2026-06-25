Instance: HSAAPAdjudicatedClaimResponse
InstanceOf: ClaimResponse
Usage: #example
Title: "HSAAP Adjudicated Claim Response"
Description: "Example of a pharmacy claim response adjudicated by HSAAP"
* identifier.system = "https://api.messaging.digital.health.nz/fileID"
* identifier.value = "7612345"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#pharmacy
* use = #claim

* patient.identifier.use = #official
* patient.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* patient.identifier.value = "ZXP7823"
* patient.display = "Carey Carrington"

* created = "2014-08-16"

* insurer.type = "Organization"
* insurer.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* insurer.identifier.value = "GZZ998-A"
* insurer.display = "Health New Zealand"

* requestor.type = "Organization"
* requestor.identifier.use = #official
* requestor.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* requestor.identifier.value = "GZZ999-9"
* requestor.display = "Wellness Pharmacy Auckland"

* outcome = #complete

* item[0].itemSequence = 1
* item[0].adjudication[0].category = http://terminology.hl7.org/CodeSystem/adjudication#eligible "Eligible Amount"
* item[0].adjudication[0].amount.value = 235.4
* item[0].adjudication[0].amount.currency = #NZD

* payment.type = http://terminology.hl7.org/CodeSystem/ex-paymenttype#complete "Complete"
* payment.date = "2014-08-31"
* payment.amount.value = 382.32
* payment.amount.currency = #NZD