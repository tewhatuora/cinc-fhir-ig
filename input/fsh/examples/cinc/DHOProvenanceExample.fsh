Instance: DHOProvenanceNhiMergeExample
InstanceOf: OutpatientProvenance
Description: "An example DHO Provenance resource recording an NHI merge cascade update to an Encounter"
Usage: #example
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)

* target = Reference(DHOEncounterExample) 
* recorded = "2026-06-25T16:55:00Z"

* activity.coding
  * system = "http://terminology.hl7.org/CodeSystem/v3-DataOperation"
  * code = #UPDATE
  * display = "revise"
* reason.coding
  * system = "https://fhir-ig.digital.health.nz/shared-care/CodeSystem/provenance-reason-type-cs"
  * code = #nhi-merge
  * display = "NHI Merge"

* agent
  * type.coding
    * system = "http://terminology.hl7.org/CodeSystem/provenance-participant-type"
    * code = #transmitter
  * who
    * display = "Dunedin Hospital"
    * identifier.value = "F04066-D"
    * identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"

* entity[+].role = #removal
* entity[=].what insert NHIPatientRef(ZAC7823,[[John Smith]])
* entity[+].role = #derivation
* entity[=].what insert NHIPatientRef(XYZ6789,[[John Smith]])
