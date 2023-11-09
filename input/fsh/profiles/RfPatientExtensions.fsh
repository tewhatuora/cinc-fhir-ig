Extension: RfPatientWhanauMemberRoleExtension
Id:  rf-patient-whanaumember-role
Title: "Codifies role taken by a whanau member of patient's care team"
Description: "Codifies role this whanau member plays in a patient's care team"
Context: Patient.contact
* value[x] only Coding
* value[x] from rf-careteam-participant-role-code (required)


Extension: RfPatientWhanauMemberRelationshipExtension
Id:  rf-patient-whanaumember-relationship
Title: "Relationship of whanau member to patient in care team"
Description: "In patient care teams, codifies this whanau member's relationship to the patient"
Context: Patient.contact
* value[x] only string



Extension: RfPatientWhanauMemberPrimaryExtension
Id:  rf-patient-whanaumember-primary
Title: "Denotes if the member is to be used a primary contact"
Description: "Set to true if this whanau member acts as a primary contact for the patient"
Context: Patient.contact
* value[x] only boolean
