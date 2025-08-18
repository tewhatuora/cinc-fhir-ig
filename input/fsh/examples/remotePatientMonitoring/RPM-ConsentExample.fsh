Alias: $consentscope = http://terminology.hl7.org/CodeSystem/consentscope
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode

Instance: 046b9873-d3d5-4944-8787-7a9510e3c2ea
InstanceOf: Consent
Usage: #example
* status = #active
* scope = $consentscope#patient-privacy "Privacy Consent"
* scope.text = "Privacy Consent"
* category = $v3-ActCode#IDSCL "information disclosure"
* category.text = "information disclosure"
* patient.type = "Patient"
* patient.identifier.use = #official
* patient.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* patient.identifier.value = "ZZZ1234"
* patient.display = "Carey Carrington"
* dateTime = "2025-08-18T22:02:15.409Z"
* performer.type = "Patient"
* performer.identifier.use = #official
* performer.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* performer.identifier.value = "ZZZ1234"
* performer.display = "Carey Carrington"
* policy.authority = "https://www.privacy.org.nz"
* policy.uri = "https://www.privacy.org.nz/privacy-act-2020/"
* verification.verified = true
* verification.verifiedWith.type = "Patient"
* verification.verifiedWith.identifier.use = #official
* verification.verifiedWith.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* verification.verifiedWith.identifier.value = "ZZZ1234"
* verification.verifiedWith.display = "Carey Carrington"
* provision.period.start = "2025-08-18"
* provision.period.end = "2027-08-18"
* provision.data[0].meaning = #instance
* provision.data[=].reference = Reference(Condition/a6fbb0a1-4251-4d59-931b-457e3133a317)
* provision.data[+].meaning = #instance
* provision.data[=].reference = Reference(Encounter/0eacc1fa-5669-4b77-98e7-d1b9f2d87c01)
* provision.data[+].meaning = #instance
* provision.data[=].reference = Reference(CarePlan/09f09486-f29e-4166-89d5-4b344f3dfc4f)
* provision.data[+].meaning = #instance
* provision.data[=].reference = Reference(ServiceRequest/2acef86c-a113-4c13-a1d1-2ad2958b8b7f)
* meta.versionId = "3"
* meta.lastUpdated = "2025-08-18T22:02:55.492Z"