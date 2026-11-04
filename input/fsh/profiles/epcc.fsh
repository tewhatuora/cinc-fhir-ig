Extension: EPCCAssessmentOutcomeExtension
Id: epcc-assessment-outcome
Title: "Post-operative cataract assessment outcome"
Description: "The latest coded assessment outcome copied from the post-operative cataract QuestionnaireResponse."
* ^version = "0.1.0"
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "CarePlan"
* extension 0..0
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from EPCCAssessmentOutcomeValueSet (required)

Profile: EPCCCarePlan
Parent: CarePlan
Id: EPCCCarePlan
Title: "Post-operative cataract pathway CarePlan"
Description: "A CarePlan used to coordinate the post-operative cataract follow-up pathway."
* ^version = "0.1.0"
* ^status = #draft
* extension contains EPCCAssessmentOutcomeExtension named assessmentOutcome 0..1
* subject 1..1
* subject only Reference(Patient)
