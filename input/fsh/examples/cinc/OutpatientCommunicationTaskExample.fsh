Instance: OutpatientCommunicationTaskExample
InstanceOf: OutpatientCommunicationTask
Title: "Outpatient Communication Task Example"
Description: "Example of a task requesting a patient to complete a pre-appointment questionnaire for a cardiology appointment"

* status = #requested
* code = http://hl7.org/fhir/uv/sdc/CodeSystem/temp#complete-questionnaire
* for insert NHIPatientRef(ZAC7823,[[John Smith]])
* owner = Reference(Practitioner/practitioner-example) "Dr. Jane Smith"
* basedOn = Reference(OutpatientCommunicationCarePlanExample)
* authoredOn = 2024-01-15T10:00:00Z
* intent = #order
* requester = Reference(Practitioner/practitioner-example) "Dr. Jane Smith"
* description = "Please complete this questionnaire before your cardiology appointment on January 22nd. It should take about 10 minutes."

* input[questionnaire].type = http://hl7.org/fhir/uv/sdc/CodeSystem/temp#questionnaire
* input[questionnaire].valueCanonical = "https://fhir-ig.digital.health.nz/shared-care/Questionnaire/cardiology-intake-questionnaire|1.0.0"
