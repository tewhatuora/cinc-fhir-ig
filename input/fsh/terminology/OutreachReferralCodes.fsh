CodeSystem: TaskCodeCodes
Id: hnz-task-code-codes
Title: "Codes for ServiceRequest code"
Description:  "Each code represents the type of referral request"
* #Immunization "Immunization Outreach"
* #CervicalScreening "Cervical Screening Outreach"
* #BreastScreening "Breast Screening Aotearoa Outreach"
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^experimental = false
* ^caseSensitive = true
* ^purpose = "Enables a ServiceRequest record to populate with the appropriate code."
* ^status = #active

CodeSystem: ServiceRequestStatusReasonCodes
Id: hnz-service-request-status-reason-codes
Title: "Status Reason for ServiceRequest"
Description:  "Each code represents the type of referral request"
* #ReferredToOutreach "Referred to Outreach" "The participant has been referred to outreach services."
* #ServiceGiven "Service Given" "All required services have been completed for the participant, and the process is now awaiting clinical results (e.g. all required vaccinations have been administered, but waiting for the clinical record to be received)"
* #ServiceDeclined "Service Declined" "All required services have been declined by the participant. (e.g. all required vaccinations have been declined)"
* #ServiceGivenDeclined "Service Given/Declined" "All required services have either been completed or declined by the participant (e.g. all required vaccinations have been given or declined)"
* #ClinicalRecordReceived "Clinical record received" "The relevant clinical record has been received, and outreach is no longer required."
* #ClinicalRecordCollected "Clinical record collected" "Documentation confirms the participant has has previously received the required services."
* #ReturningToProvider "Returning to provider" "The participant has indicated a preference to receive services from an existing provider (e.g. GP, Iwi, or Hauora)."
* #ProgrammeToBeCompleted "Programme to be completed" "The participant will continue with outreach services until programme completion."
* #ProgrammeStatusChanged "Programme status changed" "The participant's programme status has changed to 'Unenrolled' or 'Withdrawn'."
* #CorrespondenceStatusChanged "Correspondence status changed" "The participant has opted out of programme correspondence for reasons that preclude outreach engagement (e.g. illness, terminal diagnosis)."
* #DeclinedOutreachServices "Declined outreach services" "The participant has declined engagement with outreach services."
* #UnableToContact "Unable to contact" "Outreach has been unable to contact the participant despite multiple attempts."
* #MovedOutOfArea "Moved out of area" "The participant no longer resides within the region supported by the outreach provider."
* #GoneOverseas "Gone Overseas" "It has been confirmed that the participant is no longer residing in New Zealand."
* #UnconfirmedOverseas "Unconfirmed Overseas" "Investigations suggest that the participant is no longer residing in New Zealand."
* #Deceased "Deceased" "It has been confirmed that the participant is deceased, any open outreach service requests to be revoked with a status reason of 'Deceased'."
* #UnconfirmedDeceased "Unconfirmed deceased" "Investigations suggest that the participant may be deceased."
* #NoLongerOverdue "No longer overdue" "The participant is no longer considered overdue for the condition that initiated the outreach request."
* #OnHold "On Hold" "The outreach request has been temporarily suspended and may resume in the future."
* #EnteredInError "Entered in error" "The service request was created in error and is to be formally revoked."

* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^experimental = false
* ^caseSensitive = true
* ^purpose = "Enables a Service Request record to populate with the appropriate status reason."
* ^status = #active
