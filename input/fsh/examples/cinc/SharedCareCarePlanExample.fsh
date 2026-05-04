Instance: SharedCareCarePlanExample
InstanceOf: SharedCareCarePlan
Usage: #example
Title: "Shared Care CarePlan Example"
Description: "Example of a SharedCare CarePlan with questionnaire and communication activities"

* subject insert NHIPatientRef(ZAC7823, "John Smith")

* encounter.type = "Encounter"
* encounter.identifier.system = "https://example.org/encounter-ids"
* encounter.identifier.value = "ENC-12345"
* encounter.display = "Cardiology Consultation"

* category = http://hl7.org/fhir/care-plan-category#assess-plan

// Communication Request Activity
* activity[0].reference insert ReferencePractitioner(99ZZFX, "Dr. Sarah Wilson")
* activity[0].reference.type = "CommunicationRequest"
* activity[0].reference.identifier.system = "https://example.org/communication-request-ids"
* activity[0].reference.identifier.value = "COMM-REQ-789"
* activity[0].reference.display = "Patient notification for questionnaire"

// Questionnaire Activity
* activity[1].detail.instantiatesCanonical = "https://fhir-ig.digital.health.nz/shared-care/Questionnaire/COVIDInitialHealthAssessmentQuestionnaire"
* activity[1].detail.status = #in-progress
* activity[1].detail.statusReason = SharedCareActivityStatusReasonCS#pending-review
* activity[1].detail.performer insert ReferencePractitioner(99ZZFX, "Dr. Sarah Wilson")

// QuestionnaireResponse Outcome
* activity[1].outcomeReference.type = "QuestionnaireResponse"
* activity[1].outcomeReference.identifier.system = "https://example.org/questionnaire-response-ids"
* activity[1].outcomeReference.identifier.value = "QR-456"
* activity[1].outcomeReference.display = "Patient health assessment response"

// Communication Outcome
* activity[2].outcomeReference.type = "Communication"
* activity[2].outcomeReference.identifier.system = "https://example.org/communication-ids"
* activity[2].outcomeReference.identifier.value = "COMM-123"
* activity[2].outcomeReference.display = "SMS sent to patient"