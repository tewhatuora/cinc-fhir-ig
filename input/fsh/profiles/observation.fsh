Profile: CovidObservation
Parent: Observation
Id: CovidObservation
Description: "The Care in the Community profile of the Observation resource"
* ^version = "0.1.1"
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
* component.value[x] 1..
* component.valueQuantity 1..1
* component.valueQuantity only Quantity