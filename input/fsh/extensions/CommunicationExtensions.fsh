Extension: CampaignCodeExtension
Id: hnz-campaign-code-extension
Title: "Campaign Code Extension"
Description: "A simple extension for storing campaign codes."
Context: Communication, CommunicationRequest
* valueString 0..1

Extension: CampaignNameExtension
Id: hnz-campaign-name-extension
Title: "Campaign Name Extension"
Description: "A simple extension for storing campaign names."
Context: Communication, CommunicationRequest
* valueString 0..1

Extension: ContactTypeExtension
Id: hnz-contact-point-extension
Title: "Communication details at particular time"
Context: Communication, CommunicationRequest
Description: "Communication details at particular times"
* value[x] only ContactPoint

Extension: DeliveryStatusTypeExtension
Id: hnz-delivery-status-extension
Title: "Delivery Status for a particular communication event"
Context: Communication, CommunicationRequest
Description: "Delivery Status for a particular communication"
* value[x] only Coding
* value[x] from hnz-communication-delivery-status-valueset (required)
