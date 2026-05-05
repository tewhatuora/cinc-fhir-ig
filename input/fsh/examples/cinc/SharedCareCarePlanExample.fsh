Instance: SharedCareCarePlanExample
InstanceOf: SharedCareCarePlan
Usage: #example
Title: "Shared Care CarePlan Example"
Description: "Example of a SharedCare CarePlan with questionnaire and communication activities"

* subject insert NHIPatientRef(ZAC7823,[[John Smith]])

* encounter.type = "Encounter"
* encounter.identifier.system = "https://example.org/encounter-ids"
* encounter.identifier.value = "ENC-12345"
* encounter.display = "Cardiology Consultation"

* category = http://hl7.org/fhir/care-plan-category#assess-plan
* status = #active
* intent = #plan
// Communication Request Activity
* activity[+].reference = Reference(EmailCommunicationRequestWithoutTemplateExample)

// Questionnaire Activity
* activity[+].detail.instantiatesCanonical = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/MeaslesHealthCheckQuestionnaire"
* activity[=].detail.status = #in-progress
* activity[=].detail.statusReason = SharedCareActivityStatusReasonCS#pending-review
* activity[=].detail.performer insert ReferencePractitioner(99ZZFX, [[Dr. Sarah Wilson]])

// QuestionnaireResponse Outcome
* activity[=].outcomeReference = Reference(MeaslesHealthCheckQuestionnaireResponse)

// Communication Outcome
* activity[+].outcomeReference = Reference(EmailCommunicationExample)
