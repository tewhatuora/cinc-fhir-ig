Profile: ManaakiNgaTahiObservation
Parent: Observation
Id: ManaakiNgaTahiObservation
Description: "Observation FHIR resource for Manaaki Nga Tahi"
* ^version = "0.1.2"
* implicitRules 0..0
* language 0..0
* extension 0..0
* modifierExtension 0..0
* identifier 1..1
* identifier.use 1..1
* identifier.value 1..1
* basedOn only Reference(ServiceRequest)
* partOf ..0
* category 1..1
* subject only Reference(Patient)
* focus ..0
* encounter ..0
* issued 1..1
* performer only Reference(Patient or Practitioner)
* value[x] ..0
* dataAbsentReason ..0
* interpretation ..0
* note ..0
* bodySite ..0
* method ..0
* specimen ..0
* device ..0
* referenceRange ..0
* hasMember ..0
* derivedFrom ..0
* component.value[x] 0..1
* component.valueQuantity 0..1
* component.valueQuantity only Quantity
* component.valueCodeableConcept only CodeableConcept