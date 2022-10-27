Instance: ConsentExample
InstanceOf: CovidConsent
Usage: #example
Description: "An example COVID Consent"
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Privacy Consent"
* scope.text = "Privacy Consent"
* category = http://terminology.hl7.org/CodeSystem/v3-ActCode#IDSCL "information disclosure"
* category.text = "information disclosure"
* patient.type = "Patient"
* patient.identifier.use = #official
* patient.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* patient.identifier.value = "ZXP7823"
* patient.display = "Carey Carrington"
* dateTime = "2022-09-20T02:30:35.982Z"
* performer.type = "Patient"
* performer.identifier.use = #official
* performer.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* performer.identifier.value = "ZXP7823"
* performer.display = "Carey Carrington"
* sourceReference = Reference(QuestionnaireResponseExample)
* policy.authority = "https://www.health.govt.nz"
* policy.uri = "https://www.health.govt.nz/covid-19-novel-coronavirus/covid-19-resources-and-tools/covid-19-your-privacy"
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
