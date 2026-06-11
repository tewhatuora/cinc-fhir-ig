Profile: OutpatientCommunicationCarePlan
Parent: CarePlan
Title: "Outpatient Communication CarePlan"
Description: """A care coordination profile that manages patient questionnaires and communication outcomes.
Tracks CommunicationRequest references and QuestionnaireResponse outcomes within a care plan.
Maintains activity status and performer information for clinician workflow tracking."""

* meta 1..1
* meta.profile 1..1
* meta.tag ^slicing.discriminator.type = #value
* meta.tag ^slicing.discriminator.path = "system"
* meta.tag ^slicing.rules = #open
* meta.tag contains 
    correlationId 1..1

// -----------------------------
// Hub Correlation ID
// -----------------------------
* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].system ^short = "Hub correlation ID system"
* meta.tag[correlationId].system ^definition = "The system URI used by the hub to identify its correlation ID."
* meta.tag[correlationId].code 1..1

* subject 1..1 MS
* subject only Reference(NzPatient)
* subject ^short = "Patient reference with NHI"

* status 1..1
* intent 1..1
* author 0..1
* activity 0..*

* activity.reference 0..1
* activity.reference only Reference(CMSCommunicationRequest or OutpatientCommunicationTask)
* activity.reference ^short = "CommunicationRequest reference"

* activity.outcomeReference 0..*
* activity.outcomeReference only Reference(QuestionnaireResponse or CMSCommunication)
* activity.outcomeReference ^short = "QuestionnaireResponse or Communication outcome reference"

* activity.detail.status 1..1 MS
* activity.detail.statusReason 0..1 
* activity.detail.statusReason from OutpatientActivityStatusReasonVS (preferred)
* activity.detail.performer only Reference(Practitioner or PractitionerRole)
* activity.detail.performer ^short = "Clinician who reviewed or acted on this activity"

* category 0..*
* category from DHOHealthSpecialityVS (preferred)
* category ^short = "Outpatient service category or specialty"


// Unused fields set to 0..0
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* basedOn 0..0
* replaces 0..0
* partOf 0..0
* contributor 0..0
* careTeam 0..0
* addresses 0..0
* supportingInfo 0..0
* goal 0..0
* created 0..0
* period 0..0
* note 0..0

