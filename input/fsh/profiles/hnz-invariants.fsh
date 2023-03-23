Invariant: fhir-hnz-period-utc-1
Description: "period start and end must be dateTime values in UTC Coordinated Universal Time (not New Zealand time)"
Expression: "period.start.is(FHIR.dateTime) and period.end.is(FHIR.dateTime)"
Severity: #warning

Invariant: fhir-hnz-dateTime-utc-1
Description: "Value of dateTime must be UTC Coordinated Universal Time (not New Zealand time)"
Severity: #warning

Invariant: fhir-hnz-instant-utc-1
Description: "Value of instant must be UTC Coordinated Universal Time (not New Zealand time)"
Severity: #warning

Invariant: fhir-hnz-careplan-activity-mixture-1
Description: "Activities in an HNZ CarePlan may be a mixture of activity.detail and activity.reference representations.  Some activity.detail elements from the base specification are profiled out."
Severity: #error