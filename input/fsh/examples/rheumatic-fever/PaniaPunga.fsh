Instance: PaniaPunga
InstanceOf: RheumaticFeverPatient
Usage: #example
Description: "An example rheumatic fever patient who is Māori ethnicity and speaks Māori"

* meta.profile = Canonical(RheumaticFeverPatient)
* meta.versionId = "1"

* extension[interpreterRequired].url = "http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired"
* extension[interpreterRequired].valueBoolean = false

* extension[ethnicity].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[ethnicity].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#21111 "Māori"

* extension[nzCitizen].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-citizenship"
* extension[nzCitizen].extension[0].url = "status"
* extension[nzCitizen].extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/nz-citizenship-status-code#yes "Yes"
* extension[nzCitizen].extension[+].url = "source"
* extension[nzCitizen].extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/information-source-code#BREG "Birth Register"

* identifier[NHI] insert NHIIdentifier(SCF7825)

* name.use = #usual
* name.family = "Punga"
* name.given = "Pania"

* gender = #female

* address[0].use = #home
* address[=].text = "155 Pukaki Rd, Māngere, Auckland 2022"
* address[=].line[0] = "155 Pukaki Rd"
* address[=].line[+] = "Māngere"
* address[=].line[+] = "Auckland 2022"
* address[=].city = "Auckland"
* address[=].postalCode = "2022"
* address[=].country = "NZL"
* address[=].period.start = "2023-01-15"

* birthDate = "2004-12-21"

* communication[0].language.coding[0].system = "urn:ietf:bcp:47"
* communication[0].language.coding[0].code = #mao
* communication[0].language.coding[0].display = "Māori"

* deceasedBoolean = false

* link.other insert NHIPatientRef(SCF7825,[[Pania Punga]])
* link.type = #seealso
