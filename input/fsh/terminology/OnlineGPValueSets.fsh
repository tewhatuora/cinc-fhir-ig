// Online GP Value Sets
// Value sets specific to Online GP encounter reporting

ValueSet: OnlineGPParticipantType
Id: onlinegp-participant-type
Title: "Online GP Participant Type"
Description: "Allowed participant types for Online GP encounters in New Zealand"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^purpose = "Defines the allowed participant types for Online GP encounter reporting"

* http://snomed.info/sct#62247001 "Family medicine specialist"
* http://snomed.info/sct#224535009 "Registered nurse"
* http://snomed.info/sct#309294001 "Emergency department physician"
* http://snomed.info/sct#397897005 "Paramedic"
* http://snomed.info/sct#224571005 "Nurse practitioner"
* http://snomed.info/sct#224570006 "Clinical nurse specialist"

ValueSet: OnlineGPDischargeDisposition
Id: onlinegp-discharge-disposition
Title: "Online GP Discharge Disposition"
Description: "Allowed discharge disposition codes for Online GP encounters in New Zealand"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^purpose = "Defines the allowed discharge disposition outcomes for Online GP encounter reporting"

* http://snomed.info/sct#182991002 "Treatment given"
* http://snomed.info/sct#183561008 "Referral to general practitioner"
* http://snomed.info/sct#134403003 "Urgent referral"
* http://snomed.info/sct#306344004 "Referral to professional allied to medicine"
* http://snomed.info/sct#566291000210102 "Out of scope for telehealth"
* http://snomed.info/sct#185324002 "Failed encounter"
