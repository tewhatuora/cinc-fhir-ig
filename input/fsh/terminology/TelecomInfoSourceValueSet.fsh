ValueSet: TelecomInfoSource
Id: hnz-telecom-information-source-valueset
Title: "Information source when using the telecom information source extension"
Description:  "Applicable values for information source when using the telecom information source extension. Identifies the source of information, the system where a contact detail is recorded."
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^version = "1.0.0"
* ^experimental = false
* ^status = #active
* include codes from system hnz-person-telecom-source-system-codes

ValueSet: TelecomLastUpdatedBy
Id: hnz-telecom-last-updated-by-valueset
Title: "System that last updated the record"
Description:  "When a system updates a record the intent is that this value set would be used to populate a meta.tag property in the updated resource indicating the system that is updating the resource."
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^version = "1.0.0"
* ^experimental = false
* ^status = #active
* include codes from system hnz-person-telecom-source-system-codes

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