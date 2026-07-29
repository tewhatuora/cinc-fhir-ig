CodeSystem: POCTAssessmentOutcomeCodeSystem
Id: poct-assessment-outcome
Title: "Post-operative cataract assessment outcome codes"
Description: "Clinical and workflow outcomes recorded by the post-operative cataract assessment."
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #patient-rejected "Patient rejected assessment" "The patient declined the post-operative cataract assessment."
* #dna "Did not attend" "The patient did not attend the post-operative cataract assessment."
* #good "Good outcome" "The assessment found a good post-operative outcome."
* #bad-can-fix "Bad outcome - optometrist can resolve" "The assessment found an issue that the optometrist can resolve."
* #bad-cannot-fix "Bad outcome - requires escalation" "The assessment found an issue that requires escalation beyond the optometrist."

ValueSet: POCTAssessmentOutcomeValueSet
Id: poct-assessment-outcome
Title: "Post-operative cataract assessment outcomes"
Description: "Permitted outcomes for the post-operative cataract assessment and CarePlan outcome extension."
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* include codes from system POCTAssessmentOutcomeCodeSystem
