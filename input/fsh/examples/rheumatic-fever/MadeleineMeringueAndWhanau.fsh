Instance: MadeleineMeringueAndWhanau
InstanceOf: RheumaticFeverPatient
Description: "Example of a teenager patient with whanau members defined as patient contacts"
Usage: #example

* meta.profile = Canonical(RheumaticFeverPatient)
* meta.versionId = "1"

* extension[interpreterRequired].url = "http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired"
* extension[interpreterRequired].valueBoolean = false

* extension[ethnicity].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[ethnicity].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#11111 "New Zealand European"

* extension[nzCitizen].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-citizenship"
* extension[nzCitizen].extension[0].url = "status"
* extension[nzCitizen].extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/nz-citizenship-status-code#yes "Yes"
* extension[nzCitizen].extension[+].url = "source"
* extension[nzCitizen].extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/information-source-code#BREG "Birth Register"

* identifier[NHI] insert NHIIdentifier(SCF7824)

* name.use = #usual
* name.family = "Meringue"
* name.given = "Madeleine"

* gender = #female

* address[0].use = #home
* address[=].text = "373 Jackson Street, Petone, Lower Hutt 5012, New Zealand"
* address[=].line[0] = "373 Jackson Street"
* address[=].line[+] = "Petone"
* address[=].city = "Lower Hutt"
* address[=].postalCode = "5012"
* address[=].country = "NZL"
* address[=].period.start = "2023-08-01"

* birthDate = "2008-11-24"

* communication[0].language.coding[0].system = "urn:ietf:bcp:47"
* communication[0].language.coding[0].code = #tgl
* communication[0].language.coding[0].display = "Tagalog"

* contact[0] insert WhanauCareTeamMember( 1,$sct#58626002,[[Mother]],[[Beryl]],[[Smith]],[[2023-06-01]],[[2026-01-01]],[[+64 21 111 111]],[[person1@gmail.com]] )             // legal guardian / mother 
* contact[+] insert WhanauCareTeamMember( 1,$sct#58626002,[[Spouse]],[[Matt]],[[Meringue]],[[2023-06-01]],[[2026-01-01]],[[+64 21 111 222]],[[person2@gmail.com]] )           // caregiver / spouse
* contact[+] insert WhanauCareTeamMember( 2,$sct#320731000210100,[[Aunt]],[[Delina]],[[Donut]],[[2023-06-01]],[[2026-01-01]],[[+64 21 111 333]],[[person3@gmail.com]] )       // support person / aunt
* contact[+] insert WhanauCareTeamMember( 3,$sct#74964007,[[Father]],[[Cyril]],[[Smith]],[[2023-06-01]],[[2026-01-01]],[[+64 21 111 444]],[[person4@gmail.com]] )             // other related person / father
* contact[+] insert WhanauCareTeamMember( 3,$sct#74964007,[[Brother in law]],[[Mike]],[[Meringue]],[[2023-06-01]],[[2026-01-01]],[[+64 21 111 555]],[[person5@gmail.com]] )   // other related person / brother (inactive)

// null out the activity dates on the last WhanauCareTeamMember to indicate it is an INACTIVE member
* contact[=].period


* deceasedBoolean = false

* link.other insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* link.type = #seealso
