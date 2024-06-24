ValueSet: TelecomInfoSource
Id: hnz-telecom-information-source-valueset
Title: "Information source when using the telecom information source extension"
Description:  "Applicable values for information source when using the telecom information source extension. Identifies the source of information, the system where a contact detail is recorded."
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^version = "1.0.0"
* ^experimental = false
* ^status = #active
* include codes from system hnz-person-telecom-source-system-codes

ValueSet: TelecomDeliverable
Id: hnz-telecom-deliverable-indicator-valueset
Title: "Telecom record delivery success indicator"
Description:  "Indicates the last known delivery success for a telecom record."
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^version = "1.0.0"
* ^experimental = false
* ^status = #active
* include codes from system hnz-person-telecom-deliverable-indicator-codes

ValueSet: TelecomScore
Id: hnz-telecom-score-valueset
Title: "Telecom record score indicator"
Description:  "Indicates the accuracy score for a telecom record."
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^version = "1.0.0"
* ^experimental = false
* ^status = #active
* include codes from system hnz-person-telecom-score-codes

ValueSet: TelecomPhoneType
Id: hnz-telecom-phone-type-valueset
Title: "Telecom phone type indicator"
Description:  "Enables the recording of a special type for a telecom record."
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^version = "1.0.0"
* ^experimental = false
* ^status = #active
* include codes from system hnz-person-telecom-phone-type-codes