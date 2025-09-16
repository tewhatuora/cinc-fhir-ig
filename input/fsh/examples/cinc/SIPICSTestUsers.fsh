Instance: NDH-SIPICS-EmilyWhite
InstanceOf: NDHOutpatient
Description: "A SIPICS example patient resource"
Usage: #example

* id = "ndh-sipics-emily-white"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/NDHOutpatient"

* extension[sex-at-birth].valueCodeableConcept.coding.version = "4.3.0"
* extension[sex-at-birth].valueCodeableConcept.coding.system = "http://hl7.org/fhir/administrative-gender"
* extension[sex-at-birth].valueCodeableConcept = #female

* extension[ethnicity].valueCodeableConcept.coding.version = "2.0"
* extension[ethnicity].valueCodeableConcept.coding = $ns-ethnic-group-level-4-code#11111 "New Zealand European"
* extension[ethnicity].valueCodeableConcept.text = "New Zealander"
* extension[nz-citizenship].extension[+].url = "source"
* extension[nz-citizenship].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* extension[nz-citizenship].extension[=].valueCodeableConcept.coding = $ns-information-source-code#PPRT "Passport"
* extension[nz-citizenship].extension[=].valueCodeableConcept.text = "Passport"
* extension[nz-citizenship].extension[+].url = "status"
* extension[nz-citizenship].extension[=].valueCodeableConcept.coding.version = "1.1.0"
* extension[nz-citizenship].extension[=].valueCodeableConcept.coding = $ns-nz-citizenship-status-code#yes "Yes"
* extension[nz-citizenship].extension[=].valueCodeableConcept.text = "No"
//* extension[nz-residency].extension[+].url = "source"
//* extension[nz-residency].extension[=].valueCodeableConcept.coding.version = "1.0.0"
//* extension[nz-residency].extension[=].valueCodeableConcept.coding = $ns-information-source-code#PPRT "Passport"
//* extension[nz-residency].extension[=].valueCodeableConcept.text = "Passport"
//* extension[nz-residency].extension[+].url = "status"
//* extension[nz-residency].extension[=].valueCodeableConcept.coding.version = "1.0.0"
//* extension[nz-residency].extension[=].valueCodeableConcept.coding = $ns-nz-residency-code#yes "Yes"
//* extension[nz-residency].extension[=].valueCodeableConcept.text = "Yes"
* extension[interpreter-required].valueBoolean = false

* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZNW3337"
* active = true
* name.use = #usual
* name.text = "Emily White"
* name.family = "White"
* name.given = "Emily"
* telecom[+].system = #phone
* telecom[=].value = "+64 21 123 4567"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "Di.mha.test+INT-L1-test1@gmail.com"
* telecom[=].use = #home
* gender = #male
* birthDate = "1968-09-26"
* address[+].type = #postal
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code"
* address[=].extension[=].valueCodeableConcept.text = "Dunedin Central"
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* address[=].extension[=].valueString = "Dunedin"
* address[=].line = "360 Cumberland Street"
* address[=].city = "Dunedin"
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
* address[=].city = "Dunedin"
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

* generalPractitioner.type = #Practitioner
* generalPractitioner.identifier.use = #official
* generalPractitioner.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* generalPractitioner.identifier.value = "99ZZFX"
* generalPractitioner.display = "Dottie McStuffins"

Instance: NDH-SIPICS-AlexMorgan
InstanceOf: NDHOutpatient
Description: "A SIPICS example patient resource"
Usage: #example

* id = "ndh-sipics-alex-morgan"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/NDHOutpatient"

* extension[sex-at-birth].valueCodeableConcept.coding.version = "4.3.0"
* extension[sex-at-birth].valueCodeableConcept.coding.system = "http://hl7.org/fhir/administrative-gender"
* extension[sex-at-birth].valueCodeableConcept = #female

* extension[ethnicity].valueCodeableConcept.coding.version = "2.0"
* extension[ethnicity].valueCodeableConcept.coding = $ns-ethnic-group-level-4-code#61118 "New Zealander"
* extension[ethnicity].valueCodeableConcept.text = "New Zealander"
* extension[nz-citizenship].extension[+].url = "source"
* extension[nz-citizenship].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* extension[nz-citizenship].extension[=].valueCodeableConcept.coding = $ns-information-source-code#PPRT "Passport"
* extension[nz-citizenship].extension[=].valueCodeableConcept.text = "Passport"
* extension[nz-citizenship].extension[+].url = "status"
* extension[nz-citizenship].extension[=].valueCodeableConcept.coding.version = "1.1.0"
* extension[nz-citizenship].extension[=].valueCodeableConcept.coding = $ns-nz-citizenship-status-code#yes "Yes"
* extension[nz-citizenship].extension[=].valueCodeableConcept.text = "No"
//* extension[nz-residency].extension[+].url = "status"
//* extension[nz-residency].extension[=].valueCodeableConcept.coding.version = "1.0.0"
//* extension[nz-residency].extension[=].valueCodeableConcept.coding = $ns-nz-residency-code#yes "Yes"
//* extension[nz-residency].extension[=].valueCodeableConcept.text = "Yes"
* extension[interpreter-required].valueBoolean = false

* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZQR2146"
* active = true
* name.use = #usual
* name.text = "Alex Morgan"
* name.family = "Morgan"
* name.given = "Alex"
* telecom[+].system = #phone
* telecom[=].value = "+64 22 000 1119"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "Di.mha.test+INT-L1-test2@gmail.com"
* telecom[=].use = #home
* gender = #male
* birthDate = "1999-12-01"
* address[+].type = #postal
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code"
* address[=].extension[=].valueCodeableConcept.text = "Dunedin Central"
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* address[=].extension[=].valueString = "Dunedin"
* address[=].line = "1 Galaxy Lane"
* address[=].city = "Dunedin"
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
* address[=].city = "Dunedin"
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

* generalPractitioner.type = #Practitioner
* generalPractitioner.identifier.use = #official
* generalPractitioner.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* generalPractitioner.identifier.value = "99ZZFX"
* generalPractitioner.display = "Dottie McStuffins"

Instance: NDH-SIPICS-CuriousGeorge
InstanceOf: NDHOutpatient
Description: "A SIPICS example patient resource"
Usage: #example

* id = "ndh-sipics-curious-george"
* meta.versionId = "1"
* meta.lastUpdated = "2025-09-04T09:00:00.000Z"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/NDHOutpatient"

* extension[sex-at-birth].valueCodeableConcept.coding.version = "4.3.0"
* extension[sex-at-birth].valueCodeableConcept.coding.system = "http://hl7.org/fhir/administrative-gender"
* extension[sex-at-birth].valueCodeableConcept = #male
* extension[ethnicity].valueCodeableConcept.coding.version = "2.0"
* extension[ethnicity].valueCodeableConcept.coding = $ns-ethnic-group-level-4-code#11111 "New Zealand European"
* extension[ethnicity].valueCodeableConcept.text = "New Zealand European"
* extension[nz-citizenship].extension[+].url = "source"
* extension[nz-citizenship].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* extension[nz-citizenship].extension[=].valueCodeableConcept.coding = $ns-information-source-code#BREG "Birth Register"
* extension[nz-citizenship].extension[=].valueCodeableConcept.text = "Birth Register"
* extension[nz-citizenship].extension[+].url = "status"
* extension[nz-citizenship].extension[=].valueCodeableConcept.coding.version = "1.1.0"
* extension[nz-citizenship].extension[=].valueCodeableConcept.coding = $ns-nz-citizenship-status-code#yes "Yes"
* extension[nz-citizenship].extension[=].valueCodeableConcept.text = "No"
//* extension[nz-residency].extension[+].url = "status"
//* extension[nz-residency].extension[=].valueCodeableConcept.coding.version = "1.0.0"
//* extension[nz-residency].extension[=].valueCodeableConcept.coding = $ns-nz-residency-code#yes "Yes"
//* extension[nz-residency].extension[=].valueCodeableConcept.text = "Yes"
* extension[interpreter-required].valueBoolean = false

* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZQR2146"
* active = true
* name.use = #usual
* name.text = "Curious NMDHB George"
* name.family = "George"
* name.given[+] = "Curious"
* name.given[+] = "NMDHB"
* telecom[+].system = #phone
* telecom[=].value = "+64 22 035 4093"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "Di.mha.test+INT-L1-test1@gmail.com"
* telecom[=].use = #home
* gender = #male
* birthDate = "1988-09-10"
* address[+].type = #physical
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code"
* address[=].extension[=].valueCodeableConcept.text = "Halswell"
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* address[=].extension[=].valueString = "Halswell"
* address[=].line = "12 Marsack Crescent"
* address[=].city = "Christchurch"
* address[=].postalCode = "8025"
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

* generalPractitioner.type = #Practitioner
* generalPractitioner.identifier.use = #official
* generalPractitioner.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* generalPractitioner.identifier.value = "99ZZFX"
* generalPractitioner.display = "Dottie McStuffins"
