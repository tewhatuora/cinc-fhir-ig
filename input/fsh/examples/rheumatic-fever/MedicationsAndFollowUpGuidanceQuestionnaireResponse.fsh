Instance: MedicationsAndFollowUpGuidanceQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Description: "Example payload demonstrating guidance defined for secondary prophylaxis patient medication and follow-up."
Usage: #example

* meta.profile = Canonical(QuestionnaireResponse)
* meta.versionId = "2"
* meta.lastUpdated = "2023-11-10T00:00:00Z"

* status = #completed
* authored = "2023-06-26T02:08:00.504Z"
* questionnaire = Canonical(MedicationsAndFollowUpGuidanceQuestionnaire|1.0.0)
* subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* author insert ReferenceOrganisation(G0M086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])
* basedOn = Reference(DraftCarePlan)

// NOTE: item numbering does not have to match the Questionnaire because answers relate to questions through link_id

* item[0] insert answerItemX(SourceOfOralMedications,[[1)]],[[Source of oral medications? (choose one)]])
* item[=].answer.valueString = "Monthly visit from a nurse"

* item[+] insert answerItemX(CaseOnWarfarin,[[2)]],[[Case on warfarin? (Yes/No/Unknown)]])
* item[=].answer.valueCoding = $sct#373066001 "Yes (qualifier value)"

* item[+] insert answerItemX(WarfarinSupervisionService,[[2.1)]],[[Warfarin supervision service (choose one)]])
* item[=].answer.valueString = "Pharmacy"

* item[+] insert answerItemX(MonitoringResultSource,[[3)]],[[International normalised ratio (INR) monitoring result source (choose one)]])
* item[=].answer.valueString = "Éclair"

* item[+] insert answerItemX(FollowUpClinicalService,[[4)]],[[Follow-up clinical service? (choose one)]])
* item[=].answer.valueString = "GP"
