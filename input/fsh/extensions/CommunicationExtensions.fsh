Extension: CampaignCodeExtension
Id: hnz-campaign-code-extension
Title: "Campaign Code Extension"
Description: "A simple extension for storing campaign codes."
Context: Communication , CommunicationRequest
* valueString 0..1

Extension: CampaignNameExtension
Id: hnz-campaign-name-extension
Title: "Campaign Name Extension"
Description: "A simple extension for storing campaign names."
Context: Communication , CommunicationRequest
* valueString 0..1

Extension: ContactTypeExtension
Id: hnz-contact-point-extension
Title: "Communication details at paticular time"
Context: Communication , CommunicationRequest
Description: "Communication details at paticular times"
* value[x] only ContactPoint

Extension: notificationTriggeredExtension
Id: hnz-notification-triggered-extension
Title: "notification triggered Extension"
Description: "A simple extension for storing notification triggered time."
Context: DocumentReference 
* valueString 0..1