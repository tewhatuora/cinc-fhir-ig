Profile: OutpatientCommunicationTask
Parent: http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-task
Id: OutpatientCommunicationTask
Title: "Outpatient Communication Task"
Description: """Task-based solicitation for collecting patient information via questionnaire before hospital appointment.
Directs patients to complete a Questionnaire as a 'to do' item, with reference to an appointment or ServiceRequest.
Implements SDC Form Solicitation Workflow for pre-appointment form collection."""

* for only Reference(NzPatient)
* for ^short = "Patient who should complete the questionnaire"

* basedOn only Reference(CarePlan)
