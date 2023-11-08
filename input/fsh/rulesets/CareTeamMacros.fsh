// inserts a SNOMED coding identifying the role
RuleSet: CareTeamRole(snomed-code,display)

* coding.system = $sct
* coding.code = #"{snomed-code}"
* coding.display = "{display}"



// inserts a Patient.contact identifying a whanau care team member with role and relationship SNOMED-coded
RuleSet: WhanauCareTeamMember(id,role-code,relationship-text,first,last,period-start,period-end,contact-phone,contact-email)

* id = "{id}"

* extension[whanauMemberCareRole].url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/rf-patient-whanaumember-role"
* extension[whanauMemberCareRole].valueCoding = {role-code}

* extension[whanauMemberCareRelationship].url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/rf-patient-whanaumember-relationship"
* extension[whanauMemberCareRelationship].valueString = "{relationship-text}"

* name.given = "{first}"
* name.family = "{last}"

* period.start = "{period-start}"
* period.end = "{period-end}"

* telecom[0] insert ContactPoint(phone,{contact-phone},1)
* telecom[+] insert ContactPoint(email,{contact-email},2)
