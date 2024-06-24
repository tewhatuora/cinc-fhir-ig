CodeSystem: PersonTelecomSourceSystemCodes
Id: hnz-person-telecom-source-system-codes
Title: "Codes for Telecom Source Systems"
Description:  "Each code represents different source system"
* #NES "National Enrolment Service"
* #NIBS "National Immunisation Booking System"
* #CIR "COVID Immunisation Register"
* #Whaihua "Whaihua"
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^experimental = false
* ^caseSensitive = true
* ^purpose = "Enables a Person record to populate a telecom component with the appropriate source system of that record."
* ^status = #active

CodeSystem: PersonTelecomDeliverableCodes
Id: hnz-person-telecom-deliverable-indicator-codes
Title: "Codes for Telecom Is Deliverable"
Description:  "Each code represents an indication of notification delivery success"
* #-1 "Failure"
* #0 "Uncontacted"
* #1 "Success"
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^experimental = false
* ^caseSensitive = true
* ^purpose = "Enables a Person record to populate a telecom component with an indication of delivery success to that contact."
* ^status = #active

CodeSystem: PersonTelecomScoreCodes
Id: hnz-person-telecom-score-codes
Title: "Codes for Telecom Score"
Description:  "Each code represents an indication of a telecom records accuracy score"
* #-2 "Wrong Number"
* #-1 "Uncontactable"
* #0 "Unreached"
* #1 "Contactable"
* #2 "Receptive"
* #3 "Engaged"
* #4 "Highly Engaged"
* #5 "Confirmed and Highly Engaged"
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^experimental = false
* ^caseSensitive = true
* ^purpose = "Enables a score represenation for a telecom record."
* ^status = #active

CodeSystem: PersonTelecomPhoneTypeCodes
Id: hnz-person-telecom-phone-type-codes
Title: "Codes for Telecom Phone Types"
Description:  "Each code represents a phone type"
* #Mobile "Last delivery attempt was not successful"
* #Landline "Uncontactable"
* #Australian "Last delivery attempt was successful"
* #Other "Last delivery attempt was successful"
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^experimental = false
* ^caseSensitive = false
* ^purpose = "Enables the recording of a special type for a telecom record."
* ^status = #active