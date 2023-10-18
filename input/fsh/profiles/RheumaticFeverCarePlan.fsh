Alias: $nhi-use-code = https://nzhts.digital.health.nz/fhir/ValueSet/nhi-use-code
Profile: RheumaticFeverCarePlan
Parent: CarePlan
Title: "Rheumatic Fever CarePlan"
Description: "Profiles shared care plans used in NZ for provision of rheumatic fever secondary prevention"
Id: cinc-rheumaticfever-careplan

* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^purpose = "Profiles a secondary prevention care plan for a NZ rheumatic fever patient"

// elements modified from base profile

* author 1..1
* author only Reference(Practitioner or Organization)

* activity.reference only Reference(MedicationRequest or Appointment)

* addresses 1..*
* addresses only Reference(RheumaticFeverCondition)

* category 1..1

// * category from https://nzhts.digital.health.nz/fhir/ValueSet/rheumatic-fever-care-plan-category
// The category code is defined in a ValueSet on NZHTS but there are problems relating to the 
// fact that the code is in a temporary codesystem while we wait for SNOMED NZ edition April 2024 to roll around
// So for now, this profile requires that the canonical ValueSet will be the one defined in this IG
* category from rf-careplan-category-code (required)

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
* identifier[case].system = "https://standards.digital.health.nz/rheumatic-fever-identifiers"

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
