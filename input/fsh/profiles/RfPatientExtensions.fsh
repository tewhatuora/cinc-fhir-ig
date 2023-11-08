Extension: RfPatientWhanauMemberRoleExtension
Id:  rf-patient-whanaumember-role
Title: "Codifies role taken by a whanau member of patient's care team"
Description: "Codifies role taken by a whanau member of patient's care team"
Context: Patient.contact
* value[x] only Coding
* value[x] from rf-careteam-participant-role-code (required)


Extension: RfPatientWhanauMemberRelationshipExtension
Id:  rf-patient-whanaumember-relationship
Title: "Relationship of whanau member to patient in care team"
Description: "Codifies the relationship a whanau member has to the patient, in a patient care team"
Context: Patient.contact
* value[x] only string
