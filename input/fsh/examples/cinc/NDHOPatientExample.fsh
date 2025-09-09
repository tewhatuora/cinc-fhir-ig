Instance: NDHOutpatientExample
InstanceOf: NDHOutpatient
Description: "An example New Dunedin Hospital Outpatient"
Usage: #example

* id = "ndh-outpatient-instance"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/NDHOutpatient"

* extension[sex-at-birth].valueCodeableConcept.coding.code = #female
* extension[ethnicity].valueCodeableConcept.coding.version = "2.0"
* extension[ethnicity].valueCodeableConcept.coding = $ns-ethnic-group-level-4-code#21111 "Māori"
* extension[ethnicity].valueCodeableConcept.text = "Māori"
* extension[nz-citizenship].extension[+].url = "source"
* extension[nz-citizenship].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* extension[nz-citizenship].extension[=].valueCodeableConcept.coding = $ns-information-source-code#BREG "Birth Register"
* extension[nz-citizenship].extension[=].valueCodeableConcept.text = "Birth Register"
* extension[nz-citizenship].extension[+].url = "status"
* extension[nz-citizenship].extension[=].valueCodeableConcept.coding.version = "1.1.0"
* extension[nz-citizenship].extension[=].valueCodeableConcept.coding = $ns-nz-citizenship-status-code#no "No"
* extension[nz-citizenship].extension[=].valueCodeableConcept.text = "No"
* extension[interpreter-required].valueBoolean = false

* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZXP7823"
* active = true
* name.use = #usual
* name.text = "Miss Carey Mary Carrington"
* name.family = "Carrington"
* name.given = "Carey Mary"
* name.prefix = "Miss"
* telecom[+].system = #phone
* telecom[=].value = "+64 21 123 4567"
* telecom[=].use = #mobile
* telecom[=].rank = 1
* telecom[+].system = #email
* telecom[=].value = "example@mail.com"
* telecom[=].use = #home
* telecom[=].rank = 2
* gender = #female
* birthDate = "1968-01-27"
* address[+].type = #postal
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code"
* address[=].extension[=].valueCodeableConcept.text = "Dunedin Central"
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* address[=].extension[=].valueString = "Dunedin"
* address[=].line = "360 Cumberland Street"
* address[=].postalCode = "9016"
* address[=].country = "NEW ZEALAND"
* address[=].use = #work
* address[+].type = #physical
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code"
* address[=].extension[=].valueCodeableConcept = $ns-domicile-code#2898 "Maori Hill"
* address[=].extension[=].valueCodeableConcept.text = "Maori Hill"
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* address[=].extension[=].valueString = "Maori Hill"
* address[=].line = "481 Highgate"
* address[=].postalCode = "9010"
* address[=].country = "NEW ZEALAND"
* address[=].use = #home
* maritalStatus.coding[+].code = #S
* maritalStatus.coding[=].system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* maritalStatus.coding[=].display = "Never Married"
* contact[+].name.text = "John NextOfKin"
* contact[=].name.family = "NextOfKin"
* contact[=].name.given = "John Test"
* contact[=].telecom[+].system = #phone
* contact[=].telecom[=].use = #mobile
* contact[=].telecom[=].value = "+64 27 123 4567"
* contact[=].extension[+].url = Canonical(hnz-patient-contact-role-extension-id)
* contact[=].extension[=].valueCoding = $sd-patient-contact-role-extension-id#N "Next of Kin"

* generalPractitioner.type = #Practitioner
* generalPractitioner.identifier.use = #official
* generalPractitioner.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* generalPractitioner.identifier.value = "99ZZFX"
* generalPractitioner.display = "Dottie McStuffins"


Instance: NDHOutpatientUpdateExample
InstanceOf: NDHOutpatientUpdate
Usage: #example
Description: "An example New Dunedin Hospital Outpatient Update demographics (phone and email)"

* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/NDHOutpatientUpdate"
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
