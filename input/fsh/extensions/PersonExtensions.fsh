Extension: TelecomScoreExtension
Id:  hnz-telecom-score-extension-id
Title: "HNZ Person Telecom Score"
Context: ContactPoint, Person.telecom
Description: "Record an accuracy score for a Person telecom property."
* extension contains score 0..1
* extension contains scoreCalculatedDateTime 0..1
* extension[score].value[x] only Coding
* extension[score].value[x] from hnz-telecom-score-valueset (required)
* extension[scoreCalculatedDateTime].value[x] only dateTime

Extension: TelecomInformationSourceExtension
Id:  hnz-telecom-information-source-extension-id
Title: "HNZ Person Telecom Information Source"
Context: ContactPoint, Person.telecom
Description: "Property to record the source system where the contact details were collected"
* value[x] only Coding
* value[x] from hnz-telecom-information-source-valueset (required)

Extension: TelecomDeliverableIndicatorExtension
Id:  hnz-telecom-deliverable-indicator-extension-id
Title: "HNZ Person Telecom Is Message Deliveraable"
Context: ContactPoint, Person.telecom
Description: "Property to record last recorded message delivery success for a telecom."
* value[x] only Coding
* value[x] from hnz-telecom-deliverable-indicator-valueset (required)

Extension: TelecomCountSharedExtension
Id:  hnz-telecom-count-shared-extension-id
Title: "HNZ Person Telecom Count Shared"
Context: ContactPoint, Person.telecom
Description: "Where a telecom is attributed to more than one Person this extension records the number of records this particular telecom is shared with."
* value[x] only integer

Extension: TelecomLastContactedExtension
Id:  hnz-telecom-last-contacted-extension-id
Title: "HNZ Person Telecom Last Contacted"
Context: ContactPoint, Person.telecom
Description: "Records the last time that a particular contact method has been used."
* value[x] only dateTime

Extension: TelecomPhoneTypeExtension
Id:  hnz-telecom-phone-type-extension-id
Title: "HNZ Person Telecom Phone Type"
Context: ContactPoint, Person.telecom
Description: "Records the last time that a particular contact method has been used."
* value[x] only Coding
* value[x] from hnz-telecom-phone-type-valueset (required)

Extension: TelecomPhoneInvalidIndicatorExtension
Id:  hnz-telecom-invalid-indicator-extension-id
Title: "HNZ Person Telecom Invalid Indicator"
Context: ContactPoint, Person.telecom
Description: "Records the validity of the telecom generally based on most recent contact attempt."
* extension contains invalid 0..1
* extension contains flaggedInvalidBy 0..1
* extension[invalid].value[x] only boolean
* extension[flaggedInvalidBy].value[x] only Coding
* extension[flaggedInvalidBy].value[x] from hnz-telecom-information-source-valueset