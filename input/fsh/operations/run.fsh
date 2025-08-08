Instance: RunOperation
InstanceOf: OperationDefinition
Usage: #definition
Description: "Run a flat data view operation to aggregate data for a specific patient using a defined ViewDefinition."

* name = "run"
* code = #run

* status = #active
* kind = #operation
* system = true
* type = false
* instance = false

* parameter[+].name = #viewReference
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Reference
* parameter[=].documentation = "Reference to the ViewDefinition to be used for data aggregation."

* parameter[+].name = #patient
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Reference
* parameter[=].documentation = "The patient for whom the data is to be aggregated."


* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Binary
* parameter[=].documentation = "The output of the operation with a Content-Type of application/json."
