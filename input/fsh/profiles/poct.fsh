Extension: POCTAssessmentOutcomeExtension
Id: poct-assessment-outcome
Title: "Post-operative cataract assessment outcome"
Description: "The latest coded assessment outcome copied from the post-operative cataract QuestionnaireResponse."
* ^version = "0.1.0"
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "CarePlan"
* extension 0..0
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from POCTAssessmentOutcomeValueSet (required)

Extension: POCTCMSAcceptedAtExtension
Id: poct-cms-accepted-at
Title: "POCT CMS accepted at"
Description: "The UTC instant at which CMS returned 200 OK or 202 Accepted for the initial post-operative cataract notification."
* ^version = "0.1.0"
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "CommunicationRequest"
* extension 0..0
* value[x] 1..1
* value[x] only instant

Profile: POCTCarePlan
Parent: CarePlan
Id: POCTCarePlan
Title: "Post-operative cataract pathway CarePlan"
Description: "A CarePlan used to coordinate the post-operative cataract follow-up pathway."
* ^version = "0.1.0"
* ^status = #draft
* extension contains POCTAssessmentOutcomeExtension named assessmentOutcome 0..1
* subject 1..1
* subject only Reference(Patient)

Profile: POCTCommunicationRequest
Parent: CMSCommunicationRequest
Id: POCTCommunicationRequest
Title: "Post-operative cataract CMS CommunicationRequest"
Description: "A CommunicationRequest that initiates the post-operative cataract follow-up notification."
* ^version = "0.1.0"
* ^status = #draft
* extension contains POCTCMSAcceptedAtExtension named cmsAcceptedAt 0..1
* subject 1..1
* subject only Reference(Patient)
* about 1..1
* about only Reference(POCTCarePlan)
* recipient 1..*
* payload 1..*

Profile: POCTAssessmentQuestionnaireResponse
Parent: QuestionnaireResponse
Id: POCTAssessmentQuestionnaireResponse
Title: "Post-operative cataract assessment QuestionnaireResponse"
Description: "The completed assessment returned by the optometrist for a post-operative cataract pathway."
* ^version = "0.1.0"
* ^status = #draft
* questionnaire 1..1
* questionnaire = "https://fhir-ig.digital.health.nz/shared-care/Questionnaire/PostCataractAssessmentQuestionnaire|0.1.1" (exactly)
* subject 1..1
* subject only Reference(Patient)
* basedOn 1..1
* basedOn only Reference(POCTCarePlan)
* author 1..1
* authored 1..1
