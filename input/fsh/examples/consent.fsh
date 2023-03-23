Instance: ConsentExample
InstanceOf: ManaakiNgaTahiConsent
Usage: #example
Description: "An example ManaakiNgaTahi Consent"
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Privacy Consent"
* scope.text = "Privacy Consent"
* category = http://loinc.org#57016-8 "Privacy policy acknowledgement Document"
* category.text = "Privacy policy acknowledgement Document"
* patient.type = "Patient"
* patient.identifier.use = #official
* patient.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* patient.identifier.value = "ZXP7823"
* patient.display = "Carey Carrington"
* dateTime = "2022-09-20T02:30:35.982Z"
* performer[0].type = "Practitioner"
* performer[=].identifier.use = #official
* performer[=].identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* performer[=].identifier.value = "99ZZFX"
* performer[=].display = "Dottie McStuffins"
* performer[1].type = "Patient"
* performer[=].identifier.use = #official
* performer[=].identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* performer[=].identifier.value = "ZXP7823"
* performer[=].display = "Carey Carrington"
* sourceReference = Reference(QuestionnaireResponseExample)
* policy[0].authority = "https://www.privacy.org.nz"
* policy[=].uri = "https://www.privacy.org.nz/privacy-act-2020/"
* policy[+].authority = "https://www.privacy.org.nz"
* policy[=].uri = "https://www.privacy.org.nz/privacy-act-2020/codes-of-practice/hipc2020/"
* verification.verified = true
* verification.verifiedWith.type = "Patient"
* verification.verifiedWith.identifier.use = #official
* verification.verifiedWith.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* verification.verifiedWith.identifier.value = "ZXP7823"
* verification.verifiedWith.display = "Carey Carrington"
* provision.period.start = "2022-09-20"
* provision.period.end = "2022-11-08"
* provision.data[0].meaning = #instance
* provision.data[=].reference = Reference(ConditionExample)
* provision.data[+].meaning = #instance
* provision.data[=].reference = Reference(EncounterExample)
* provision.data[+].meaning = #instance
* provision.data[=].reference = Reference(QuestionnaireResponseExample)
* meta.versionId = "1"
* meta.lastUpdated = "2022-09-20T02:30:37.161Z"
