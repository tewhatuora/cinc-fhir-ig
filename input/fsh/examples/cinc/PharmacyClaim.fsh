Instance: PharmacySubmittedClaim
InstanceOf: Claim
Usage: #example
* identifier.system = "https://api.messaging.digital.health.nz/fileID"
* identifier.value = "7612345"
* identifier.use = #secondary
* status = #active
* use = #claim
* type.coding = http://terminology.hl7.org/CodeSystem/claim-type#pharmacy
* subType.coding = https://example.com/HeaderType#ExampleRecordType
* insurer = Reference(Organization/43242343232)
* provider = Reference(Organization/54739649856)
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(Coverage/9876B1)
* patient.identifier.use = #official
* patient.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* patient.identifier.value = "ZXP7823"
* patient.display = "Carey Carrington"
* created = "2014-08-16"
* priority.coding.code = #stat
* item.sequence = 1
* item.productOrService.coding = https://example.com/productOrService#562721 "Alprazolam 0.25mg (Xanax)"
* item.servicedDate = "2014-08-16"
* item.quantity = 90 'TAB' "TAB"
* item.net.value = 90
* item.net.currency = #NZD
* item.detail[0].sequence = 1
* item.detail[=].productOrService.coding = https://example.com/productOrService#drugcost
* item.detail[=].net.value = 45
* item.detail[=].net.currency = #NZD
* item.detail[+].sequence = 2
* item.detail[=].productOrService.coding = https://example.com/productOrServicee#suspension
* item.detail[=].net.value = 9
* item.detail[=].net.currency = #NZD
* item.detail[+].sequence = 3
* item.detail[=].productOrService.coding = https://example.com/productOrService#dispensefee
* item.detail[=].net.value = 36
* item.detail[=].net.currency = #NZD
* total.value = 90
* total.currency = #NZD