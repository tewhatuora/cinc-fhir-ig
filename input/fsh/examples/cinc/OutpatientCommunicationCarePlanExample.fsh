Instance: OutpatientCommunicationCarePlanExample
InstanceOf: OutpatientCommunicationCarePlan
Usage: #example
Title: "Outpatient Communication CarePlan Example"
Description: "Example of an OutpatientCommunication CarePlan tracking CommunicationRequest and Communication with clinician review status"

* subject insert NHIPatientRef(ZAC7823,[[John Smith]])

* category = http://hl7.org/fhir/care-plan-category#assess-plan
* status = #active
* intent = #plan

// CommunicationRequest Activity
* activity[+].reference = Reference(EmailCommunicationRequestWithoutTemplateExample)
* activity[=].detail.status = #in-progress
* activity[=].detail.statusReason = SharedCareActivityStatusReasonCS#pending-review
* activity[=].detail.performer insert ReferencePractitioner(99ZZFX, [[Dr. Sarah Wilson]])

// Communication Outcome
* activity[=].outcomeReference = Reference(EmailCommunicationExample)
