Extension: CampaignExtension
Id: hnz-campaign-extension
Title: "Campaign details"
Context: Communication, CommunicationRequest
Description: "For storing campaign codes and names"
* extension contains
    campaignCode 0..1 and campaignName 0..1
* extension[campaignCode].value[x] only string
* extension[campaignName].value[x] only string

Extension: ContactPointExtension
Id: hnz-contact-point-extension
Title: "Send to and from communication to contact points"
Context: Communication, CommunicationRequest
Description: "Communication send to and from contact point"
* extension contains
    fromContactPoint 0..1 and toContactPoint 1..1
* extension[fromContactPoint].value[x] only ContactPoint
* extension[toContactPoint].value[x] only ContactPoint

Extension: SystemCallbackUrlExtension
Id: hnz-system-callback-url-extension
Title: "Callback Url"
Context: Communication, CommunicationRequest
Description: "Callback Url for system"
* value[x] only url

Extension: SystemReplyExtension
Id: hnz-system-reply-extension
Title: "For sms reply"
Context: Communication, CommunicationRequest
Description: "Specifies whether a reply is expected and provides a webhook URL for the reply."
* extension contains
    replyUrl 0..1 and replyBoolean 0..1
* extension[replyUrl].value[x] only url
* extension[replyBoolean].value[x] only boolean

Extension: AttachmentExtension
Id: hnz-attachment-extension
Title: "Attachment details"
Context: Communication, CommunicationRequest, Attachment
Description: "Extra details for attachment to help with rendering"
* extension contains
    attachmentContentId 0..1 and attachmentDisposition 0..1
* extension[attachmentDisposition].value[x] only string
* extension[attachmentContentId].value[x] only string

Extension: StatusDateTimeExtension
Id: hnz-status-date-time-extension
Title: "Status DateTime"
Context: Communication, CommunicationRequest
Description: "Status updated date time"
* value[x] only dateTime
