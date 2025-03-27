Profile: OutreachTask
Parent: Task
Id: OutreachTask
Description: "Task FHIR resource for the outreach referral service"
* ^version = "0.1.3"
// * meta.tag ^slicing.discriminator.type = #pattern
// * meta.tag ^slicing.discriminator.path = "$this"
// * meta.tag ^slicing.rules = #open
// * meta.tag contains LastUpdatedBy 1..1
// * meta.tag[LastUpdatedBy] from https://fhir-ig.digital.health.nz/shared-care/ValueSet/hnz-task-last-updated-by-valueset (required)
* basedOn 1..1 
* basedOn only Reference(ServiceRequest)
* status 1..1
* description 0..1
* for 1..1
* for only Reference(Patient)

// excluded elements
* businessStatus 0..0
* code 0..0
* contained 0..0
* encounter 0..0
* focus 0..0
* groupIdentifier 0..0
* implicitRules 0..0   
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* insurance 0..0
* language 0..0
* location 0..0
* owner 0..1
* partOf 0..0
* performerType 0..0
* reasonCode 0..0
* reasonReference 0..0
* relevantHistory 0..0
* requester 0..1
* restriction 0..0
* statusReason 0..0
