// inserts a SNOMED coding identifying the role
RuleSet: CareTeamRole(snomed-code,display)

* coding.system = $sct
* coding.code = #"{snomed-code}"
* coding.display = "{display}"



// inserts a Patient.contact identifying a whanau care team member with role and relationship SNOMED-coded
RuleSet: WhanauCareTeamMember(primary-flag,role-code,relationship-text,first,last,period-start,period-end,contact-phone,contact-email)

* extension[whanauMemberCarePrimary].url = Canonical(RfPatientWhanauMemberPrimaryExtension)
* extension[whanauMemberCarePrimary].valueBoolean = {primary-flag}

* extension[whanauMemberCareRole].url = Canonical(RfPatientWhanauMemberRoleExtension)
* extension[whanauMemberCareRole].valueCoding = {role-code}

* extension[whanauMemberCareRelationship].url = Canonical(RfPatientWhanauMemberRelationshipExtension)
* extension[whanauMemberCareRelationship].valueString = "{relationship-text}"

* name.given = "{first}"
* name.family = "{last}"

* period.start = "{period-start}"
* period.end = "{period-end}"

* telecom[0] insert ContactPoint(phone,{contact-phone},1)     // uses macro in ContactMacros.fsh
* telecom[+] insert ContactPoint(email,{contact-email},2)     // uses macro in ContactMacros.fsh
