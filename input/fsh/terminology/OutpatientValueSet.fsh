ValueSet: OutpatientCategoriesVS
Id: outpatient-categories-vs
Title: "Outpatient Service Codes"
Description: "Healthcare service codes for outpatient services"
* ^status = #active
* include codes from system outpatient-categories-cs

ValueSet: OutpatientActivityStatusReasonVS
Id: outpatient-activity-status-reason-vs
Title: "Outpatient Activity Status Reason"
Description: "Status reasons for outpatient activity workflow tracking"
* ^status = #active
* include codes from system outpatient-activity-status-reason-cs
