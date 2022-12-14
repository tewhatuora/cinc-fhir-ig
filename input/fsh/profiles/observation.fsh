Profile: ManaakiNgaTahiObservation
Parent: Observation
Id: ManaakiNgaTahiObservation
Description: "Observation FHIR resource for Manaaki Nga Tahi"
* ^version = "0.1.2"
* identifier 1..
* identifier.use 1..1
* identifier.value 1..1
* basedOn only Reference(ServiceRequest)
* category 1..1
* category from http://hl7.org/fhir/ValueSet/observation-category (required)
* code 1..1
* code from http://snomed.info/sct/122869004 (required)
* issued 1..1
* performer only Reference(Patient or Practitioner)
* status 1..1
* subject only Reference(Patient)
* component.value[x] 0..1
* component.valueQuantity 0..1
* component.valueQuantity only Quantity
* component.valueCodeableConcept only CodeableConcept
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