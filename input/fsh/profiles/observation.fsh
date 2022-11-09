Profile: CovidObservation
Parent: Observation
Description: "The Care in the Community profile of the Observation resource"
* identifier 0..0
* basedOn only Reference(ServiceRequest)
* partOf 0..0
* status 1..1
* category 0..0
* code only CodeableConcept
* subject only Reference(Patient)
* focus 0..0
* encounter 0..0
* effective[x] 0..1
* issued 0..0
* performer only Reference(Patient)
* value[x] 0..0
* dataAbsentReason 0..0
* interpretation 0..0
* note 0..0
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
* component 0..*
* component.code only CodeableConcept
* component.valueString 1..1
