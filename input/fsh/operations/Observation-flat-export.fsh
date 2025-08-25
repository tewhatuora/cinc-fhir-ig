Instance: Observation-flat-export
InstanceOf: OperationDefinition
Usage: #definition

* status = #draft
* kind = #operation
* name = "flat-export"
* description = """
  The Observation $flat-export operation exports Observation resources in a flat format.
  See [request example](./Parameters-ObservationFlatExportRequest.html).
"""
* code = #flat-export
* resource = #Observation
* system = false
* type = true
* instance = false

* parameter[0].name = #observationProfile
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The Observation FHIR profile to query."
* parameter[=].type = #string

* parameter[+].name = #subject
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The Patient NHI that is the target of the query."
* parameter[=].type = #string


* parameter[+].name = #period
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The period for the query, where start and end are mandatory"
* parameter[=].type = #Period

* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = """
  A FHIR Binary resource containing the flat file as base64 encoded data. When decoded, it will contain the patient data in a flat format with the following structure.
  [See response example](./Binary-ObservationFlatExportResponse.html).

  ```json
  [{
    "id": "1234",
    "effectiveDateTime": "2025-04-22",
    "value[x]": {
      "value": 6.3,
      "unit": "mmol/l",
      "system": "http://unitsofmeasure.org",
      "code": "mmol/L"
    }
  },
  {
    "id": "5678",
    "effectiveDateTime": "2025-04-23",
    "value[x]": {
      "value": 2.3,
      "unit": "mmol/l",
      "system": "http://unitsofmeasure.org",
      "code": "mmol/L"
    }
  }]
  ```

  The response structure will contain an array of Observation resources, each represented in a flat format with the FHIR resource id, effective date, and value information.
  """

* parameter[=].type = #Binary
