Instance: DHOPatientExample
InstanceOf: DHOPatient
Description: "An example DH Outpatient"
Usage: #example

* id = "DHO-outpatient-instance"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOPatient"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

* extension[sex-at-birth].valueCodeableConcept.coding.version = "4.0.1"
* extension[sex-at-birth].valueCodeableConcept.coding.system = "http://hl7.org/fhir/administrative-gender"
* extension[sex-at-birth].valueCodeableConcept = #female

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
* name.given[+] = "Carey"
* name.given[+] = "Mary"
* name.prefix = "Miss"
* telecom[+].system = #phone
* telecom[=].value = "+64 21 123 4567"
* telecom[=].use = #mobile
* telecom[=].rank = 1
* telecom[=].extension[notification-enabled].valueBoolean = true
* telecom[+].system = #email
* telecom[=].value = "example@mail.com"
* telecom[=].use = #home
* telecom[=].rank = 2
* telecom[=].extension[notification-enabled].valueBoolean = true
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
* contact[=].extension[=].valueCodeableConcept = $cs-patient-contact-role#nok "Next of Kin"
* contact[=].extension[=].valueCodeableConcept.text = "Next of Kin"

* contact[+].name.text = "Mary PowerOfAttorney"
* contact[=].name.family = "PowerOfAttorney"
* contact[=].name.given = "Mary"
* contact[=].telecom[+].system = #phone
* contact[=].telecom[=].use = #mobile
* contact[=].telecom[=].value = "+64 22 123 4567"
* contact[=].extension[+].url = Canonical(hnz-patient-contact-role-extension-id)
* contact[=].extension[=].valueCodeableConcept = $cs-patient-contact-role#powatt "Power of Attorney"
* contact[=].extension[=].valueCodeableConcept.text = "Power of Attorney"

* generalPractitioner.type = #Practitioner
* generalPractitioner.identifier.use = #official
* generalPractitioner.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* generalPractitioner.identifier.value = "99ZZFX"
* generalPractitioner.display = "Dottie McStuffins"


Instance: DHOPatientUpdateExample
InstanceOf: DHOPatientUpdate
Usage: #example
Description: "An example Dunedin Hospital Outpatient Update demographics (phone and email)"

* id = "DHO-outpatient-update-instance"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOPatientUpdate"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZXP7823"

* telecom[+].system = #phone
* telecom[=].value = "+64 21 123 4567"
* telecom[=].use = #mobile
* telecom[=].rank = 1
* telecom[=].extension[notification-enabled].valueBoolean = true
* telecom[+].system = #email
* telecom[=].value = "example@mail.com"
* telecom[=].use = #home
* telecom[=].rank = 2
* telecom[=].extension[notification-enabled].valueBoolean = true
