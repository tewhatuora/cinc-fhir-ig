Instance: OutpatientCommunicationTaskExample
InstanceOf: OutpatientCommunicationTask
Title: "Outpatient Communication Task Example"
Description: "Example of a task requesting a patient to complete a pre-appointment questionnaire for a cardiology appointment"

* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx

* status = #requested
* code = http://hl7.org/fhir/uv/sdc/CodeSystem/temp#complete-questionnaire
* for insert NHIPatientRef(ZAC7823,[[John Smith]])
* owner insert ReferencePractitioner(99ZZFX, [[Dr. Sarah Wilson]])
* basedOn = Reference(OutpatientCommunicationCarePlanExample)
* authoredOn = 2024-01-15T10:00:00Z
* intent = #order
* requester insert ReferencePractitioner(99ZZFX, [[Dr. Sarah Wilson]])
* description = "Complete this questionnaire before your appointment."

* input[questionnaire].type = http://hl7.org/fhir/uv/sdc/CodeSystem/temp#questionnaire
* input[questionnaire].valueCanonical = Canonical(DHOSleepQuestionnaire)
