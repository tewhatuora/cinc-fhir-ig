CodeSystem: TaskCodeCodes
Id: hnz-task-code-codes
Title: "Codes for Task code"
Description:  "Each code represents the type of referral request"
* #Immunization "Immunization Outreach"
* #CervicalScreening "Cervical Screening Outreach"
* #BreastScreening "Breast Screening Aotearoa Outreach"
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^experimental = false
* ^caseSensitive = true
* ^purpose = "Enables a Task record to populate with the appropriate code."
* ^status = #active

CodeSystem: ServiceRequestStatusReasonCodes
Id: hnz-service-request-status-reason-codes
Title: "Status Reason for ServiceRequest"
Description:  "Each code represents the type of referral request"
* #ReferredToOutreach "Referred to Outreach" "The consumer has been referred to outreach."
* #ServiceGiven "Service Given" "All services have been given to the consumer (e.g. all required vaccinations have been administered)"
* #ServiceDeclined "Service Declined" "All services have been declined by the consumer (e.g. all required vaccinations have been declined)"
* #ServiceGivenDeclined "Service Given/Declined" "All services have been given/declined by the consumer (e.g. all required vaccinations have been given or declined)"
* #DeclinedOutreachServices "Declined outreach services" "The consumer has declined to engaged with outreach services"
* #ReturningToProvider "Returning to provider" "The consumer would prefer to get their service from their existing provider (GP/Iwi/Hauora)."
* #GoneOverseas "Gone Overseas" "It has been identified the consumer is no longer living in NZ."
* #UnableToContact "Unable to contact" "After numerous attempts Outreach have not been able to locate or make contact with the consumer."
* #UnconfirmedDeceased "Unconfirmed deceased" "Investigations have identified that the consumer is deceased."
* #MovedOutOfArea "Moved out of area" "Investigations have identified the consumer is no longer living in the area/region supported by the outreach provider."
* #ProgrammeToBeCompleted "Programme to be completed" "The consumer will stay with outreach services until they complete their service programme."
* #ClinicalRecordCollected "Clinical record collected" "Proof has been supplied that the consumer has previously received the overdue/due services."
* #Deceased "Deceased" "When a consumer is confirmed deceased any open outreach service requests to be revoked with a status reason of 'Deceased'."
* #EnteredInError "Entered in error" "The service request was entered in error and is to be revoked."
* #ClinicalRecordReceived "Clinical Record received" "The expected clinical record (Test result of Clinical Event) has been received in the register and outreach is no longer required"
* #ProgrammeStatusChanged "Programme status changed" "The participant's programme status has changed to either Unenrolled or Withdrawn"
* #CorrespondenceStatusChanged "Correspondence status changed" "The participant has requested no correspondence from the programme and the reason is one that excludes outreach services e.g. Cancer, Unwell"
* #OnHold "On Hold" "The outreach service request is on hold for a period of time."

* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^experimental = false
* ^caseSensitive = true
* ^purpose = "Enables a Task record to populate with the appropriate status reason."
* ^status = #active
