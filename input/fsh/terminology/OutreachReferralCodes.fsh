CodeSystem: TaskSourceSystemCodes
Id: hnz-task-source-system-codes
Title: "Codes for Task Source Systems"
Description:  "Each code represents different source system"
* #AIR "Aotearoa Immunisation Register"
* #Whaihua "Whaihua"
* #CSR "Cervical Screening Register"
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^experimental = false
* ^caseSensitive = true
* ^purpose = "Enables a Task record to populate with the appropriate source system of that record."
* ^status = #active

CodeSystem: TaskCodeCodes
Id: hnz-task-code-codes
Title: "Codes for Task code"
Description:  "Each code represents the type of referral request"
* #Immunization "Immunization Outreach"
* #CervicalScreening "Cervical Screening Outreach"
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^experimental = false
* ^caseSensitive = true
* ^purpose = "Enables a Task record to populate with the appropriate code."
* ^status = #active


CodeSystem: ServiceRequestStatusReasonCodes
Id: hnz-service-request-status-reason-codes
Title: "Status Reason for ServiceRequest"
Description:  "Each code represents the type of referral request"
* #overseas "Over Seas"
* #outreach "Needs Outreach"
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^experimental = false
* ^caseSensitive = true
* ^purpose = "Enables a Task record to populate with the appropriate status reason."
* ^status = #active
