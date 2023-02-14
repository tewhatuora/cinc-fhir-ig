Profile: ManaakiNgaTahiObservation
Parent: Observation
Id: ManaakiNgaTahiObservation
Description: "Observation FHIR resource for Manaaki Nga Tahi"
* ^version = "0.1.2"
// elements modified
* basedOn only Reference(ServiceRequest)
* category 1..1
* category from http://hl7.org/fhir/ValueSet/observation-category (required)
* code 1..1
* code from $sct (example)
* component.value[x] 0..1
* component.valueCodeableConcept only CodeableConcept
* component.valueQuantity 0..1
* component.valueQuantity only Quantity
* effectiveDateTime 1..1
* effectiveDateTime obeys fhir-hnz-dateTime-utc-1
* identifier 1..
* identifier.use 1..1
* identifier.value 1..1
* issued 1..1
* issued obeys fhir-hnz-instant-utc-1
* performer only Reference(Patient or Practitioner)
* status 1..1
* subject only Reference(Patient)
// elements prohibited
* bodySite ..0
* dataAbsentReason ..0
* derivedFrom ..0
* device ..0
* encounter ..0
* extension 0..0
* focus ..0
* hasMember ..0
* implicitRules 0..0
* interpretation ..0
* language 0..0
* method ..0
* modifierExtension 0..0
* note ..0
* partOf ..0
* referenceRange ..0
* specimen ..0
* value[x] ..0