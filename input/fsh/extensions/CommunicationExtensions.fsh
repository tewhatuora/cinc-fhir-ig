Extension: CampaignExtension
Id: hnz-campaign-extension
Title: "Campaign details"
Context: CommunicationRequest
Description: "For storing campaign codes and names"
* extension contains
    campaignCode 0..1 and campaignName 0..1
* extension[campaignCode].value[x] only string
* extension[campaignName].value[x] only string

Extension: ContactPointExtension
Id: hnz-contact-point-extension
Title: "Send communication to contact point"
Context: Communication , CommunicationRequest
Description: "Communication send to contact point"
* extension contains
    fromContactPoint 1..1 and toContactPoint 1..1
* extension[fromContactPoint].value[x] only ContactPoint
* extension[toContactPoint].value[x] only ContactPoint

Extension: SystemCallbackUrlExtension
Id: hnz-system-callback-url-extension
Title: "Callback Url"
Context: CommunicationRequest
Description: "Callback Url for system"
* value[x] only url

Extension: SystemReplyExtension
Id: hnz-system-reply-extension
Title: "For sms reply"
Context: CommunicationRequest
Description: "Weather expect reply or not and webhook url for reply"
* extension contains
    replyUrl 0..1 and replyBoolean 0..1
* extension[replyUrl].value[x] only url
* extension[replyBoolean].value[x] only boolean

Extension: AttachmentExtension
Id: hnz-attachment-extension
Title: "Attachment details"
Context: CommunicationRequest
Description: "Extra details for attachment to help with rendering"
* extension contains
    attachmentContentId 0..1 and attachmentDisposition 0..1
* extension[attachmentDisposition].value[x] only string
* extension[attachmentContentId].value[x] only string