Instance: MedicationsAndFollowUpGuidanceQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Description: "Example payload demonstrating guidance defined for secondary prophylaxis patient medication and follow-up."
Usage: #example

* meta.profile = Canonical(QuestionnaireResponse)
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-24T03:00:00Z"

* status = #completed
* authored = "2023-06-26T02:08:00.504Z"
* questionnaire = Canonical(MedicationsAndFollowUpGuidanceQuestionnaire)
* subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* author insert ReferenceOrganisation(GOM086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])
* basedOn = Reference(DraftCarePlan)

// NOTE: item numbering does not have to match the Questionnaire because answers relate to questions through link_id

* item[0] insert answerItem(SourceOfOralMedications,[[Source of oral medications? (choose one)]])
* item[=].answer.valueString = "Monthly visit from a nurse"

* item[+] insert answerItem(CaseOnWarfarin,[[Case on warfarin?]])
* item[=].answer.valueBoolean = true

* item[+] insert answerItem(WarfarinSupervisionService,[[Warfarin supervision service (choose one)]])
* item[=].answer.valueString = "Pharmacy"

* item[+] insert answerItem(MonitoringResultSource,[[International normalised ratio (INR) monitoring result source (choose one)]])
* item[=].answer.valueString = "Éclair"

* item[+] insert answerItem(FollowUpClinicalService,[[Follow-up clinical service? (choose one)]])
* item[=].answer.valueString = "GP"
