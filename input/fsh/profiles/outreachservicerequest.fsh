Profile: OutreachReferralServiceRequest
Parent: ServiceRequest
Id: OutreachReferralServiceRequest
Description: "Service request FHIR resource for outreach referral service"
* ^version = "0.1.3"
// elements modified

* status 1..1
* intent 1..1
* code 1..1
* subject 1..1
* subject only Reference(Patient)
* requester 1..1
* requester only Reference(Device)
* performer 0..1
* performer only Reference(Device)
* supportingInfo 0..*


* asNeeded[x] 0..0
* bodySite 0..0
* category 0..0
* encounter 0..0
* identifier 0..0
* implicitRules 0..0
* instantiatesUri 0..0
* insurance 0..0
* language 0..0
* locationCode 0..0
* locationReference 0..0
* modifierExtension 0..0
* note 0..0
* orderDetail 0..0
* patientInstruction 0..0
* quantity[x] 0..0
* reasonCode 0..0
* reasonReference 0..0
* relevantHistory 0..0
* replaces 0..0
* requisition 0..0
* specimen 0..0