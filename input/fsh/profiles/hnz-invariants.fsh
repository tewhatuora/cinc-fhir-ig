Invariant: fhir-hnz-period-utc-1
Description: "period start and end must be dateTime values in UTC Coordinated Universal Time (not New Zealand time)"
Severity: #warning
Expression: "true"

Invariant: fhir-hnz-dateTime-utc-1
Description: "Value of dateTime must be UTC Coordinated Universal Time (not New Zealand time)"
Severity: #warning
Expression: "true"

Invariant: fhir-hnz-instant-utc-1
Description: "Value of instant must be UTC Coordinated Universal Time (not New Zealand time)"
Severity: #warning
Expression: "true"

Invariant: fhir-hnz-rheumaticfever-careplan-category-1
Description: "Rheumatic fever care plans must be categorised by SNOMED code  #737427001 'Clinical management plan'"
Severity: #warning
Expression: "RheumaticFeverCarePlan.category.code = '737427001'"