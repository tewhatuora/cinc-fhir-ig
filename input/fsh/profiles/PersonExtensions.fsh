Extension: TelecomScoreExtension
Id:  hnz-telecom-score-extension-id
Title: "HNZ Person Telecom Score"
Context: ContactPoint, Person.telecom
Description: "Record an accuracy score for a Person telecom property."
* value[x] only Coding
* value[x] from hnz-telecom-score-valueset (required)

Extension: TelecomInformationSourceExtension
Id:  hnz-telecom-information-source-extension-id
Title: "HNZ Person Telecom Information Source"
Context: ContactPoint, Person.telecom
Description: "Property to record the source system where the contact details were collected"
* value[x] only Coding
* value[x] from hnz-telecom-information-source-valueset (required)

Extension: TelecomIsDeliverableExtension
Id:  hnz-telecom-isdeliverable-extension-id
Title: "HNZ Person Telecom Is Message Deliveraable"
Context: ContactPoint, Person.telecom
Description: "Property to record last recorded message delivery success for a telecom."
* value[x] only Coding
* value[x] from hnz-telecom-is-deliverable-valueset (required)

Extension: TelecomCountShared
Id:  hnz-telecom-count-shared-extension-id
Title: "HNZ Person Telecom Count Shared"
Context: ContactPoint, Person.telecom
Description: "Where a telecom is attributed to more than one Person this extension records the number of records this particular telecom is shared with."
* value[x] only integer

Extension: TelecomLastContacted
Id:  hnz-telecom-last-contacted-extension-id
Title: "HNZ Person Telecom Last Contacted"
Context: ContactPoint, Person.telecom
Description: "Records the last time that a particular contact method has been used."
* value[x] only dateTime


