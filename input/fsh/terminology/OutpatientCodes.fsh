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

CodeSystem: ProvenanceReasonTypeCS
Id: provenance-reason-type-cs
Title: "Provenance Reason Type"
Description: "Local Reason type codes for Provenance tracking in the Dunedin Hospital Outpatients context"
* ^status = #active
* ^caseSensitive = true
* ^content = #complete
* #nhi-merge "NHI Merge" "Updated subject NHI logical identifier"
* #nhi-unmerge "NHI Unmerge" "Updated subject NHI logical identifier"
