Instance: OutpatientCommunicationTaskExample
InstanceOf: OutpatientCommunicationTask
Title: "Outpatient Communication Task Example"
Description: "Example of a task requesting a patient to complete a pre-appointment questionnaire for a cardiology appointment"

* status = #requested
* code = http://hl7.org/fhir/uv/sdc/CodeSystem/temp#complete-questionnaire
* for = Reference(Patient/nhi-example) "John Doe"
* owner = Reference(Practitioner/practitioner-example) "Dr. Jane Smith"
* basedOn = Reference(Appointment/appointment-example)
* focus = Reference(Questionnaire/cardiology-intake-questionnaire)
* authoredOn = 2024-01-15T10:00:00Z
// * dueDate = 2024-01-20
* intent = #order
* requester = Reference(Practitioner/practitioner-example) "Dr. Jane Smith"
* description = "Please complete this questionnaire before your cardiology appointment on January 22nd. It should take about 10 minutes."
* reasonCode = http://snomed.info/sct#394807007 "Cardiology"

* input[0].type = http://hl7.org/fhir/uv/sdc/CodeSystem/temp#questionnaire
* input[0].valueCanonical = "https://fhir-ig.digital.health.nz/shared-care/Questionnaire/cardiology-intake-questionnaire|1.0.0"
