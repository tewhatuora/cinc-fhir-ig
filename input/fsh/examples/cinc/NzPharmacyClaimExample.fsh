Instance: NzPharmacyClaimExample2
InstanceOf: NzPharmacyClaim
Title: "New Zealand Pharmacy Claim Example"
Description: "Example of a New Zealand pharmacy claim"
* identifier[0].system = "https://standards.digital.health.nz/ns/nzeps-scid-item-id"
* identifier[0].value = "123456789123456789"
* type = https://standards.digital.health.nz/ns/claim-type#PHM
* subType = https://standards.digital.health.nz/ns/claim-subtype#ICPSA
* use = #claim
* supportingInfo[+].category = https://standards.digital.health.nz/ns/transaction-category#PHARMACY
* supportingInfo[=].sequence = 1
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(Coverage/9876B1)
* status = #active
* priority = #routine
* created = "2025-01-01T00:00:00-00:00"
* billablePeriod.start = "2025-01-01"
* billablePeriod.end = "2025-01-01"
* enterer.reference = "Practitioner/12345"
* enterer.type = "Practitioner"
* enterer.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* enterer.identifier.value = "12345"
* patient.reference = "Patient/ZZZ0008"
* patient.type = "Patient"
* patient.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* patient.identifier.value = "ZZZ0008"
* patient.display = "Mr Test Patient | Male | 2001-01-01"
* provider.reference = "Organisation/12345"
* provider.type = "Organisation"
* provider.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* provider.identifier.value = "12345"
* total.value = 500.00
* total.currency = #NZD
* extension[+].url = Canonical(patient-cohort)
* extension[=].valueString = "CRC"
* extension[+].url = Canonical(claimant-number)
* extension[=].valueString = "AG12345"
* extension[+].url = Canonical(originating-claimant-number)
* extension[=].valueString = "AG54321"

* item[0].sequence = 1
* item[0].productOrService = https://standards.digital.health.nz/ns/purchase-unit#PU1234
* item[0].servicedDate = "2015-01-01"
* item[0].extension[patientFlag].valueBoolean = true
* item[0].extension[prescriberFlag].valueBoolean = false
* item[0].extension[prescriptionFlag].valueBoolean = true
* item[0].extension[doseFlag].valueBoolean = false
* item[0].extension[groupId].valueString = "GRP001"
* item[0].detail[0].sequence = 1
* item[0].detail[0].productOrService = https://standards.digital.health.nz/ns/pharmac-subsidy-code#123456
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