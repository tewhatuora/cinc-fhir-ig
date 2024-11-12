Instance: BSAHealthService
InstanceOf: HealthOrganization
Description: "An example of an Organizational Health Service. This resource is used to record information related to an Organizational Health Service."

Usage: #example
* identifier[0].use = #usual
* identifier[0].value = "BSA"
* identifier[0].system = "https://api.messaging.digital.health.nz/HealthServicesId"
* active = true
* name = "National Breast Screening Programme"
* alias = "This is a public health initiative that provides breast cancer screening to eligible individuals "
* type = #govt
* contact.telecom[0].system = #phone
* contact.telecom[=].value = "+642110939804"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "servicecontact@example.com"
* contact.telecom[+].system = #other
* contact.telecom[=].value = "55533"