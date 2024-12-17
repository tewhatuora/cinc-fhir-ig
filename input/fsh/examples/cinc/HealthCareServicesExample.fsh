Instance: BSAService
InstanceOf: NationalHealthCareService
Description: "An example of a Health Service. This resource is used to record information related to individual Health Service."
Usage: #example
* identifier.use = #usual
* identifier.value = "B1011"
* identifier.system = "https://api.messaging.digital.health.nz/HealthServicesId"
* active = true
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/service-type"
* type.coding[0].code = #272
* type.coding[0].display = "Breast Screening"

* name = "National Breast Screening Programme"
* comment = "This is a public health initiative that provides breast cancer screening to eligible individuals."
* category.coding[0].system = "http://terminology.hl7.org/CodeSystem/service-category"
* category.coding[0].code = #7
* category.coding[0].display = "Community Health Care"
* telecom[0].system = #phone
* telecom[0].value = "+642110939804"
* telecom[1].system = #email
* telecom[1].value = "servicecontact@example.com"
* telecom[2].system = #sms
* telecom[2].value = "555333"