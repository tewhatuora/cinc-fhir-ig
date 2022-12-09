Profile: ManaakiNgaTahiServiceRequest
Parent: ServiceRequest
Id: ManaakiNgaTahiServiceRequest
Description: "Service request FHIR resource for Manaaki Nga Tahi"
* ^version = "0.1.2"
* implicitRules 0..0
* language 0..0
* extension 0..0
* modifierExtension 0..0
* identifier 0..0
* instantiatesCanonical only Canonical(ActivityDefinition)
* instantiatesUri 0..0
* basedOn only Reference(CarePlan)
* replaces 0..0
* requisition 0..0
* status 1..1
* intent 1..1
* category 0..0
* code 0..1
* orderDetail 0..0
* quantity[x] 0..0
* subject only Reference(Patient)
* encounter 0..0
* occurrence[x] 0..1
* occurrenceTiming 1..1
* asNeeded[x] 0..0
* requester 0..1
* performerType from $sct (required)
* performer 0..0
* locationCode 0..0
* locationReference 0..0
* reasonCode 0..0
* reasonReference 0..0
* insurance 0..0
* supportingInfo 0..0
* specimen 0..0
* bodySite 0..0
* note 0..0
* patientInstruction 0..0
* relevantHistory 0..0