Profile: ManaakiNgaTahiServiceRequest
Parent: ServiceRequest
Id: ManaakiNgaTahiServiceRequest
Description: "Service request FHIR resource for Manaaki Nga Tahi"
* ^version = "0.1.3"
// elements modified
* basedOn only Reference(CarePlan)
* code 0..1
* instantiatesCanonical only Canonical(ActivityDefinition)
* intent 1..1
* occurrence[x] 1..1
* occurrence[x] only dateTime or Period or Timing
* occurrenceDateTime ^short = "Must be in UTC timezone on the FHIR server"
* occurrencePeriod ^short = "Start | end value must be in UTC timezone on the FHIR server"
* performer 0..1
* performerType 0..1
* performerType from http://hl7.org/fhir/ValueSet/participant-role (required)     // Note this profile does not REQUIRE a performer element
* requester 0..1
* status 1..1
* subject only Reference(Patient)
// * performerType from $sct (required)     // Note this profile does not REQUIRE a performer element
//* occurrenceTiming 1..1
// elements prohibited
* asNeeded[x] 0..0
* bodySite 0..0
* category 0..0
* encounter 0..0
// * extension 0..0  v0.1.3 relief from prohibition of CarePlan extension
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
* supportingInfo 0..0