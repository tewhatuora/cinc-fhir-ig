Extension: CampaignCodeExtension
Id: hnz-campaign-code-extension
Title: "Campaign Code Extension"
Description: "A simple extension for storing campaign codes."
Context: CPIRCommunication
* valueString 0..1

Extension: CampaignNameExtension
Id: hnz-campaign-name-extension
Title: "Campaign Name Extension"
Description: "A simple extension for storing campaign names."
Context: CPIRCommunication
* valueString 0..1

Extension: ContactTypeExtension
Id: hnz-Contact-point-extension-id
Title: "Communication details at paticular time"
Context: CPIRCommunication
Description: "Communication details at paticular times"
* value[x] only ContactPoint