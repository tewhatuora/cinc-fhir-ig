CodeSystem: OutpatientActivityStatusReasonCS
Id: outpatient-activity-status-reason-cs
Title: "Outpatient Activity Status Reason"
Description: "Status reasons for outpatient activity workflow tracking"
* ^status = #active
* ^caseSensitive = true
* ^content = #complete
* #pending-review "Pending Review" "Activity is awaiting clinician review"
* #clinician-reviewed "Clinician Reviewed" "Activity has been reviewed by a clinician"
* #action-taken "Action Taken" "Clinician has taken action based on this activity"
* #no-action-required "No Action Required" "Clinician determined no action is required"
