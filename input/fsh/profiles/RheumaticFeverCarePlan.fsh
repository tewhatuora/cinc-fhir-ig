Alias: $nhi-use-code = https://nzhts.digital.health.nz/fhir/ValueSet/nhi-use-code

Profile: RheumaticFeverCarePlan
Parent: CarePlan
Description: "Profiles shared care plans used in NZ for provision of rheumatic fever secondary prevention"
Id: cinc-rheumaticfever-careplan

* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^purpose = "Profiles a secondary prevention care plan for a NZ rheumatic fever patient"
* ^meta.tag.code = #rheumatic-fever

// elements modified from base profile

* author 1..1
* author only Reference(Practitioner or Organization)

* activity.reference only Reference(MedicationRequest or Appointment)

* addresses 1..*
* addresses only Reference(RheumaticFeverCondition)

* category 1..1
// * category = $sct#xxx  TODO: correct and apply the invariant when the new code has been assigned

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains 
  NHI 1..1 and
  case 0..1

* identifier[NHI].use from $nhi-use-code (required)
* identifier[NHI].system 1..
* identifier[NHI].system = "https://standards.digital.health.nz/ns/nhi-id" (exactly)

* identifier[case].use = #usual
* identifier[case].system 1..
* identifier[case].system = "https://salesforce.digital.health.nz/ns/rheumatic-fever-case-management" (exactly)

* instantiatesCanonical only Canonical(PlanDefinition)

* period 1..1
* period obeys fhir-hnz-period-utc-1

* subject only Reference(NzPatient)

* title 1..1

// extensions
* extension contains
  RfCarePlanOnHoldReasonExtension named onHoldReason 0..1 and
  RfCarePlanClosureReasonExtension named closureReason 0..1

// elements prohibited
* activity.detail 0..0
* activity.modifierExtension 0..0
* contained 0..0

* partOf 0..0

* implicitRules 0..0
* instantiatesUri 0..0
* language 0..0
* modifierExtension 0..0
