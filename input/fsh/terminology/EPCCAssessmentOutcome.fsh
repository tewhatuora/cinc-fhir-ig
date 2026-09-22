CodeSystem: EPCCAssessmentOutcomeCodeSystem
Id: epcc-assessment-outcome
Title: "Post-operative cataract assessment outcome codes"
Description: "Clinical and workflow outcomes recorded by the post-operative cataract assessment."
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #waiting-operation "Waiting Operation"
* #patient-discharged "Patient Discharged"
* #optometry-to-book "Optometry appointment to book"
* #patient-to-contact "Patient to Contact"
* #waiting-optometry-assessment "Waiting for Optometry Assessment"
* #patient-escalated "Patient Escalated"
* #urgent-patient-escalated "URGENT Patient Escalated"

ValueSet: EPCCAssessmentOutcomeValueSet
Id: epcc-assessment-outcome
Title: "Post-operative cataract assessment outcomes"
Description: "Permitted outcomes for the post-operative cataract assessment and CarePlan outcome extension."
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* include codes from system EPCCAssessmentOutcomeCodeSystem
