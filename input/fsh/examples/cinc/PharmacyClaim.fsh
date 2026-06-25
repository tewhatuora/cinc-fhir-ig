Instance: PharmacySubmittedClaim
InstanceOf: Claim
Usage: #example
Title: "Pharmacy Submitted Claim"
Description: "Example of a pharmacy submitted claim for medication dispensing"
* identifier.system = "https://api.messaging.digital.health.nz/fileID"
* identifier.value = "7612345"
* identifier.use = #secondary
* status = #active
* use = #claim
* type.coding = http://terminology.hl7.org/CodeSystem/claim-type#pharmacy
* subType.coding = http://terminology.hl7.org/CodeSystem/ex-claimsubtype#ortho "Orthodontic Claim"

* insurer.type = "Organization"
* insurer.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* insurer.identifier.value = "GZZ998-A"
* insurer.display = "Health New Zealand"

* provider.type = "Organization"
* provider.identifier.use = #official
* provider.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* provider.identifier.value = "GZZ999-9"
* provider.display = "Wellness Pharmacy Auckland"

* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage.display = "Not applicable"
* insurance[0].coverage.extension[0].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* insurance[0].coverage.extension[0].valueCode = #not-applicable

* patient.identifier.use = #official
* patient.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* patient.identifier.value = "ZXP7823"
* patient.display = "Carey Carrington"
* created = "2014-08-16"
* priority = http://terminology.hl7.org/CodeSystem/processpriority#normal

* item.sequence = 1
* item.productOrService.coding = http://snomed.info/sct#21691008 "Alprazolam"
* item.productOrService.text = "Alprazolam 0.25mg (Xanax)"
* item.servicedDate = "2014-08-16"
* item.quantity.value = 90
* item.quantity.unit = "tablets"
* item.quantity.system = "http://snomed.info/sct"
* item.quantity.code = #385055001
* item.net.value = 90
* item.net.currency = #NZD

* item.detail[0].sequence = 1
* item.detail[=].productOrService.coding = https://standards.digital.health.nz/ns/pharmacy-claim-item-type#drugcost "Drug Cost"
* item.detail[=].net.value = 45
* item.detail[=].net.currency = #NZD

* item.detail[+].sequence = 2
* item.detail[=].productOrService.coding = https://standards.digital.health.nz/ns/pharmacy-claim-item-type#suspension "Suspension"
* item.detail[=].net.value = 9
* item.detail[=].net.currency = #NZD

* item.detail[+].sequence = 3
* item.detail[=].productOrService.coding = https://standards.digital.health.nz/ns/pharmacy-claim-item-type#dispensefee "Dispense Fee"
* item.detail[=].net.value = 36
* item.detail[=].net.currency = #NZD

* total.value = 90
* total.currency = #NZD