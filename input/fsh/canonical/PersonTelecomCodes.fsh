CodeSystem: PersonTelecomSourceSystemCodes
Id: hnz-person-telecom-source-system-codes
Title: "Codes for Telecom Source Systems"
Description:  "Each code represents different source system"
* #NES "National Enrolment Service"
* #NIBS "National Immunisation Booking System"
* #CIR "COVID Immunisation Register"
* #NCTS " National Contact Tracing Service"
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^experimental = false
* ^caseSensitive = true
* ^purpose = "Enables a Person record to populate a telecom component with the appropriate source system of that record."
* ^status = #active

CodeSystem: PersonTelecomIsDeliverableCodes
Id: hnz-person-telecom-is-deliverable-codes
Title: "Codes for Telecom Is Deliverable"
Description:  "Each code represents an indication of notification delivery success"
* #-1 "Last delivery attempt was not successful"
* #1 "Last delivery attempt was successful"
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^experimental = false
* ^caseSensitive = true
* ^purpose = "Enables a Person record to populate a telecom component with an indication of delivery success to that contact."
* ^status = #active

CodeSystem: PersonTelecomScoreCodes
Id: hnz-person-telecom-score-codes
Title: "Codes for Telecom Score"
Description:  "Each code represents an indication of a telecom records accuracy score"
* #-2 "Last delivery attempt was not successful"
* #-1 "Uncontactable"
* #0 "Last delivery attempt was successful"
* #1 "Last delivery attempt was successful"
* #2 "Last delivery attempt was successful"
* #3 "Last delivery attempt was successful"
* #4 "Last delivery attempt was successful"
* #5 "Last delivery attempt was successful"
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^experimental = false
* ^caseSensitive = true
* ^purpose = "Enables a score represenation for a telecom record."
* ^status = #active

