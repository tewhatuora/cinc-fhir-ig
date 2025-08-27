Instance: NDHOutpatientExample
InstanceOf: NDHOutpatient
Usage: #example
Description: "An example New Dunedin Hospital Outpatient"

* id = "ndh-outpatient-instance"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/NzPatient"
* meta.versionId = "1"
* meta.lastUpdated = "2023-07-26T01:00:00.000Z"

* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZXP7823"

* name.use = #usual
* name.family = "Carrington"
* name.given = "Carey"

* gender = #female
* birthDate = "1968-01-27"

* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept.coding.version = "2.0"
* extension[=].valueCodeableConcept.coding = $ethnic-group-level-4-code#21111 "Māori"
* extension[=].valueCodeableConcept.text = "Māori"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/birth-place"
* extension[=].extension[0].url = "country"
* extension[=].extension[=].valueCodeableConcept.coding.version = "2013"
* extension[=].extension[=].valueCodeableConcept.coding = urn:iso:std:iso:3166#NZ "New Zealand"
* extension[=].extension[=].valueCodeableConcept.text = "New Zealand"
* extension[=].extension[+].url = "source"
* extension[=].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* extension[=].extension[=].valueCodeableConcept.coding = $information-source-code#BRCT "Birth Certificate"
* extension[=].extension[=].valueCodeableConcept.text = "Birth Certificate"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-citizenship"
* extension[=].extension[0].url = "source"
* extension[=].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* extension[=].extension[=].valueCodeableConcept.coding = $information-source-code#BREG "Birth Register"
* extension[=].extension[=].valueCodeableConcept.text = "Birth Register"
* extension[=].extension[+].url = "status"
* extension[=].extension[=].valueCodeableConcept.coding.version = "1.1.0"
* extension[=].extension[=].valueCodeableConcept.coding = $nz-citizenship-status-code#no "No"
* extension[=].extension[=].valueCodeableConcept.text = "No"
* address[+].line = "123 Example St"
* address[=].city = "Dunedin"
* address[=].extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/not-validated-address-reason"
* address[=].extension[=].valueCodeableConcept.coding.version = "1.1"
* address[=].extension[=].valueCodeableConcept.coding = $address-not-validated-reason-code#NOSVC "Address Service Unavailable"
* address[=].extension[=].valueCodeableConcept.text = "Address Service Unavailable"
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code"
* address[=].extension[=].valueCodeableConcept = $domicile-code#2896 "North Dunedin"
* address[=].extension[=].valueCodeableConcept.text = "North Dunedin"
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* address[=].extension[=].valueString = "North Dunedin"
* address[+].line = "456 Example St"
* address[=].city = "Dunedin"
* address[=].extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/not-validated-address-reason"
* address[=].extension[=].valueCodeableConcept.coding.version = "1.1"
* address[=].extension[=].valueCodeableConcept.coding = $address-not-validated-reason-code#NOSVC "Address Service Unavailable"
* address[=].extension[=].valueCodeableConcept.text = "Address Service Unavailable"
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code"
* address[=].extension[=].valueCodeableConcept = $domicile-code#2898 "Maori Hill"
* address[=].extension[=].valueCodeableConcept.text = "Maori Hill"
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* address[=].extension[=].valueString = "Maori Hill"
* telecom[+].system = #phone
* telecom[=].value = "+64 21 123 4567"
* telecom[=].use = #mobile
* telecom[=].rank = 1
* telecom[+].system = #email
* telecom[=].value = "example@mail.com"
* telecom[=].use = #home
* telecom[=].rank = 2

Instance: NDHOutpatientUpdateExample
InstanceOf: NDHOutpatient
Usage: #example
Description: "An example New Dunedin Hospital Outpatient Update demographics (phone and email)"

* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/NzPatient"
* meta.versionId = "1"
* meta.lastUpdated = "2023-07-26T01:00:00.000Z"

* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZXP7823"

* telecom[+].system = #phone
* telecom[=].value = "+64 21 123 4567"
* telecom[=].use = #mobile
* telecom[=].rank = 1
* telecom[+].system = #email
* telecom[=].value = "example@mail.com"
* telecom[=].use = #home
* telecom[=].rank = 2
