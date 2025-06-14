Profile: OutreachServiceRequest
Parent: ServiceRequest
Id: OutreachServiceRequest
Description: "Service request FHIR resource for outreach referral service"
* ^version = "0.1.3"

// elements modified
* status 1..1
* intent 1..1
* code 1..1
* code from hnz-task-code-valueset (required)
* subject 1..1
* subject only Reference(Patient)
* requester 1..1
* performer 0..1
* performer ^short = "The filler of the request"
* locationReference 0..1
* locationReference ^short = "The facility the the procedure is performed at"
* supportingInfo 0..*
* identifier 0..*

* extension contains request-statusReason named statusReason 1..1
* extension[statusReason].valueCodeableConcept from hnz-service-request-status-reason-valueset (required)

// excluded elements
* asNeeded[x] 0..0
* doNotPerform 0..0
* bodySite 0..0
* category 0..0
* contained 0..0 
* encounter 0..0
* implicitRules 0..0
* instantiatesCanonical 0..0	
* instantiatesUri 0..0
* insurance 0..0
* language 0..0
* locationCode 0..0
* modifierExtension 0..0
* orderDetail 0..0
* patientInstruction 0..0
* performerType 0..0
* quantity[x] 0..0
* reasonCode 0..0
* reasonReference 0..0
* relevantHistory 0..0
* replaces 0..0
* requisition 0..0
* specimen 0..0
