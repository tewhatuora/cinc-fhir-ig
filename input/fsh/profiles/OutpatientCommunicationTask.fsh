Profile: OutpatientCommunicationTask
Parent: http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-task
Title: "Outpatient Communication Task"
Description: """Task-based solicitation for collecting patient information via questionnaire before hospital appointment.
Directs patients to complete a Questionnaire as a 'to do' item, with reference to an appointment or ServiceRequest.
Implements SDC Form Solicitation Workflow for pre-appointment form collection."""

* meta 1..1
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

* for only Reference(NzPatient)
* for ^short = "Patient who should complete the questionnaire"

* basedOn only Reference(OutpatientCommunicationCarePlan)
