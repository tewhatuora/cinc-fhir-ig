ValueSet: OutpatientCategoriesVS
Id: outpatient-categories-vs
Title: "Outpatient Service Codes"
Description: "Healthcare service codes for outpatient services"
* ^url = "https://fhir-ig.digital.health.nz/shared-care/ValueSet/outpatient-codes"
* ^status = #active
* include codes from system https://fhir-ig.digital.health.nz/shared-care/CodeSystem/outpatient-codes

ValueSet: OutpatientActivityStatusReasonVS
Id: outpatient-activity-status-reason
Title: "Outpatient Activity Status Reason"
Description: "Status reasons for outpatient activity workflow tracking"
* ^url = "https://fhir-ig.digital.health.nz/shared-care/ValueSet/outpatient-activity-status-reason"
* ^status = #active
* include codes from system OutpatientActivityStatusReasonCS
