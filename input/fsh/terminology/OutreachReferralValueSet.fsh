ValueSet: TaskLastUpdatedBy
Id: hnz-task-last-updated-by-valueset
Title: "System that last updated the record"
Description:  "When a system updates a record the intent is that this value set would be used to populate a meta.tag property in the updated resource indicating the system that is updating the resource."
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^version = "1.0.0"
* ^experimental = false
* ^status = #active
* include codes from system hnz-task-source-system-codes

ValueSet: TaskCode
Id: hnz-task-code-valueset
Title: "Codes for Task code"
Description:  "Each code represents the type of referral request"
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^version = "1.0.0"
* ^experimental = false
* ^status = #active
* include codes from system hnz-task-code-codes

ValueSet: ServiceRequestStatusReason
Id: hnz-service-request-status-reason-valueset
Title: "Status Reason for ServiceRequest"
Description:  "Each code represents the type of referral request"
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^version = "1.0.0"
* ^experimental = false
* ^status = #active
* include codes from system hnz-service-request-status-reason-codes
