Instance: BSAService
InstanceOf: NationalHealthServices
Usage: #example
* identifier[0].use = #usual
* identifier[0].value = "#B1011"
* identifier[0].system = "https://api.messaging.digital.health.nz/HealthServicesId"
* name = "National Breast Screening Programme"
* comment = "This is a public health initiative that provides breast cancer screening to eligible individuals "
* category.coding.display = "Community Health Care"
* telecom[0].system = #phone
* telecom[=].value = "+1-555-1234"
* telecom[+].system = #email
* telecom[=].value = "servicecontact@example.com"
* telecom[+].system = #other
* telecom[=].value = "555333"