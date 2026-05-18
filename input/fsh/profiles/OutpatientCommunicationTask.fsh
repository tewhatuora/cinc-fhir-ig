Profile: OutpatientCommunicationTask
Parent: http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-task
Id: OutpatientCommunicationTask
Title: "Outpatient Communication Task"
Description: """Task-based solicitation for collecting patient information via questionnaire before hospital appointment.
Directs patients to complete a Questionnaire as a 'to do' item, with optional reference to an appointment or ServiceRequest.
Supports pre-appointment form collection workflow."""

* for 1..1 MS
* for only Reference(NzPatient)
* for ^short = "Patient who should complete the questionnaire"

* basedOn 1..1
* basedOn ^short = "Encounter or Referral Reference (logical reference)"

* reasonCode 0..1 MS
// * reasonCode from AppointmentSpecialtyVS (preferred)
* reasonCode ^short = "Clinical specialty or reason for the appointment"

* input 1..* MS
* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open

// * input contains communicationRequest 0..1 MS
// * input[communicationRequest].type = http://hl7.org/fhir/uv/sdc/CodeSystem/temp#questionnaire
// * input[communicationRequest].valueReference only Reference(CommunicationRequest)
// * input[communicationRequest].valueReference 1..1 MS
// * input[communicationRequest].valueReference ^short = "CommunicationRequest to CMS for sending form link via email/SMS"

* output 0..* MS
* output ^slicing.discriminator.type = #pattern
* output ^slicing.discriminator.path = "type"
* output ^slicing.rules = #open

// * output contains communication 0..1 MS
// * output[communication].type = http://hl7.org/fhir/uv/sdc/CodeSystem/temp#questionnaire-response
// * output[communication].valueReference only Reference(Communication)
// * output[communication].valueReference ^short = "Communication tracking email/SMS delivery status"

// Unused elements set to 0..0

* instantiatesCanonical 0..0
* instantiatesUri 0..0
* groupIdentifier 0..0
* partOf 0..0
* priority 0..0
* executionPeriod 0..0
* performerType 0..0
* reasonReference 0..0
* insurance 0..0
* note 0..0
* relevantHistory 0..0
* restriction 0..0

// Unused SDC Task extensions set to 0..0


// ValueSet: AppointmentSpecialtyVS
// Id: appointment-specialty
// Title: "Appointment Specialty"
// Description: "SNOMED CT codes for clinical specialties"
// * include codes from system $sct where concept is-a 71388002

