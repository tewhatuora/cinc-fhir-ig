Extension: RfCarePlanClosureReasonExtension
Id:  rf-careplan-closure-reason
Title: "Reason a rheumatic fever care plan was closed (#revoked status)"
Context: CarePlan
Description: "Captures why a rheumatic fever patient was removed from the register by completion of their care plan."
* value[x] only string

Extension: RfCarePlanOnHoldReasonExtension
Id:  rf-careplan-onhold-reason
Title: "Reason rheumatic fever care plan changed to on-hold status"
Description: "Captures why a rheumatic fever patient care has been placed on hold."
//Context: RheumaticFeverCarePlan
Context: CarePlan
* value[x] only string