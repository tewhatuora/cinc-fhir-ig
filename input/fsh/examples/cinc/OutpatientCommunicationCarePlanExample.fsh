Instance: OutpatientCommunicationCarePlanExample
InstanceOf: OutpatientCommunicationCarePlan
Usage: #example
Title: "Outpatient Communication CarePlan Example"
Description: "Example of an OutpatientCommunication CarePlan tracking CommunicationRequest and Communication with clinician review status"

* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

* subject insert NHIPatientRef(ZAC7823,[[John Smith]])

* category = https://fhir-ig.digital.health.nz/shared-care/CodeSystem/outpatient-categories-cs#M10
* status = #active
* intent = #plan

// CommunicationRequest Activity
* activity[+].reference = Reference(OutpatientCommunicationRequestEmailExample)
// Communication Outcome
* activity[=].outcomeReference = Reference(EmailCommunicationExample)
* activity[+].reference = Reference(OutpatientCommunicationTaskExample)
