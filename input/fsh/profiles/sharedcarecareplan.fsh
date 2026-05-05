Profile: SharedCareCarePlan
Parent: CarePlan
Id: SharedCareCarePlan
Title: "SharedCare Care Plan"
Description: "A care coordination profile that manages patient questionnaires and communication workflows. Supports magic link generation for patient questionnaire access, tracks communication delivery status, and maintains processing state for care coordination activities. Used in shared care scenarios where multiple providers coordinate patient care through structured questionnaires and automated communications."

* subject 1..1 MS
* subject only Reference(NzPatient)
* subject ^short = "Patient reference with NHI"

* encounter 0..1 MS
* encounter ^short = "Encounter or Referral Reference (logical reference)"
* status 1..1
* intent 1..1
* activity 1..* MS

* activity.reference 0..1 MS
* activity.reference only Reference(CommunicationRequest)
* activity.reference ^short = "CommunicationRequest reference"

* activity.outcomeReference 0..* MS
* activity.outcomeReference only Reference(QuestionnaireResponse or Communication)
* activity.outcomeReference ^short = "QuestionnaireResponse or Communication outcome reference"

* activity.detail 0..1 MS
* activity.detail.instantiatesCanonical 0..1 MS
* activity.detail.instantiatesCanonical ^short = "FHIR Questionnaire identifier for response lookup"
* activity.detail.status 1..1 MS
* activity.detail.status ^short = "Processing status flag"
* activity.detail.statusReason 0..1 MS
* activity.detail.statusReason from SharedCareActivityStatusReasonVS (preferred)
* activity.detail.statusReason ^short = "Detailed status reason for clinician workflow"
* activity.detail.performer 0..* MS
* activity.detail.performer only Reference(Practitioner or PractitionerRole)
* activity.detail.performer ^short = "Clinician who reviewed or acted on this activity"

* category 0..* MS
* category ^short = "Care plan category or specialty"


// Unused fields set to 0..0
// * identifier 0..0
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* basedOn 0..0
* replaces 0..0
* partOf 0..0


* title 0..0
* description 0..0
* author 0..0
* contributor 0..0
* careTeam 0..0
* addresses 0..0
* supportingInfo 0..0
* goal 0..0
* created 0..0
* period 0..0
* note 0..0

CodeSystem: SharedCareActivityStatusReasonCS
Id: shared-care-activity-status-reason
Title: "Shared Care Activity Status Reason"
Description: "Status reasons for shared care activity workflow tracking"
* #pending-review "Pending Review" "Activity is awaiting clinician review"
* #clinician-reviewed "Clinician Reviewed" "Activity has been reviewed by a clinician"
* #action-taken "Action Taken" "Clinician has taken action based on this activity"
* #no-action-required "No Action Required" "Clinician determined no action is required"

ValueSet: SharedCareActivityStatusReasonVS
Id: shared-care-activity-status-reason
Title: "Shared Care Activity Status Reason"
Description: "Status reasons for shared care activity workflow tracking"
* include codes from system SharedCareActivityStatusReasonCS

