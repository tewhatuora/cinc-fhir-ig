Instance: ObservationFlatExportRequest
InstanceOf: Parameters
Usage: #example
Description: "Example request for invoking the Observation $flat-export operation."

* parameter[+].name = "observationProfile"
* parameter[=].valueString = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/ManaakiNgaTahiObservation"

* parameter[+].name = "subject"
* parameter[=].valueString = "ZZZ1234"

* parameter[+].name = "period"
* parameter[=].valuePeriod.start = "2025-08-01"
* parameter[=].valuePeriod.end = "2025-08-20"
