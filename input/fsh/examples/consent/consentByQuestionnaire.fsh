Instance: ConsentByQuestionnaireExample
InstanceOf: ManaakiNgaTahiConsent
Usage: #example
Description: "An example ManaakiNgaTahi Consent by policy"
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Privacy Consent"
* scope.text = "Privacy Consent"
* category = http://loinc.org#57016-8 "Privacy policy acknowledgment Document"
* category.text = "Privacy policy acknowledgement Document"

* patient = Reference(CareyCarrington) "Carey Carrington"
* patient.type = "Patient"

* dateTime = "2022-09-20T02:30:35.982Z"
* policy[0].authority = "https://www.privacy.org.nz"
* policy[=].uri = "https://www.privacy.org.nz/privacy-act-2020/"
* policy[+].authority = "https://www.privacy.org.nz"
* policy[=].uri = "https://www.privacy.org.nz/privacy-act-2020/codes-of-practice/hipc2020/"
* sourceReference = Reference(ConsentQuestionnaireResponseExample) // v0.1.7 now refers to purpose-built example
* verification.verified = true
* verification.verifiedWith.type = "Patient"
* verification.verifiedWith.identifier.use = #official
* verification.verifiedWith.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* verification.verifiedWith.identifier.value = "ZXP7823"
* verification.verifiedWith.display = "Carey Carrington"
* provision.period.start = "2023-01-20"
* provision.period.end = "2023-09-20"

* provision insert ConsentInstanceDataRef( ConditionExample )
* provision insert ConsentInstanceDataRef( EncounterExample )
