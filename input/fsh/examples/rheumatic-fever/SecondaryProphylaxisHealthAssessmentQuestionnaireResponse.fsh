Instance: RFPatientHealthAssessmentQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Description: "Example assessment of Madeleine's health at her August secondary prophylaxis appointment."
Usage: #example

* meta.profile = Canonical(QuestionnaireResponse)
* meta.versionId = "2"
* meta.lastUpdated = "2023-11-07T20:00:00Z"

* status = #completed
* authored = "2023-08-08T01:08:00.504Z"   // UTC, assumed to be the time of information collection during the appointment
* questionnaire = Canonical(SecondaryProphylaxisHealthAssessmentQuestionnaire|1.0.0)

* subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* author insert ReferenceOrganisation(G0M086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])
* basedOn = Reference(DraftCarePlan)
* encounter = Reference(Encounter-SecondaryProphylaxisAppointment)

// NOTE: item numbering does not have to match the Questionnaire because answers relate to questions through link_id

* item[+] insert answerItemX(ReasonsInjectionOverdue,[[2)]],[[Reason(s) injection was give late? (multiple choice)]])
* item[=].answer[0].valueString = "Patient Not Available on the Day"
* item[=].answer[+].valueString = "Other"

* item[+] insert answerItemX(OverdueInjectionOtherDetail,[[3)]],[[Other details for late injection (enter text)]])
* item[=].answer.valueString = "The patient couldn't find a park for the classic Hilux."

// * item[+] insert answerItemX(ConsentChecked,[[4)]],[[Pre-injection consent checked?]])
// * item[=].answer.valueBoolean = true

// * item[+] insert answerItemX(MedicationChecked,[[5)]],[[Pre-injection medication checked with a second person?]])
// * item[=].answer.valueBoolean = true

* item[+] insert answerItemX(OtherPainManagementToolsUsed,[[11)]],[[Pain management tools used? (multiple choice)]])
* item[=].answer[0].valueString = "Ice pack"
* item[=].answer[+].valueString = "Numbing spray"
* item[=].answer[+].valueString = "Distraction"
* item[=].answer[+].valueString = "Other"

* item[+] insert answerItemX(PainManagementOtherDetails,[[11.1)]],[[Details of other pain management (enter text)]])
* item[=].answer.valueString = "We discovered in this appointment that Chocolate Chip Cookie ice cream helps a lot!"

* item[+] insert answerItemX(PostInjectionConcern,[[12)]],[[Post injection concern or possible reaction identified?]])
* item[=].answer.valueBoolean = true

* item[+] insert answerItemX(PostInjectionConcernDetails,[[12.1)]],[[If Yes, Record Details, Symptoms, Actions Taken and Follow-Up Plan (enter text)]])
* item[=].answer.valueString = "Madeleine had a bit more than the usual sensitivity at the injection site so we dished out extra ice cream, which was nice."

* item[+] insert answerItemX(AnyOtherConcerns,[[13)]],[[Were There Any Other Concerns or Issues Identified During the Visit?]])
* item[=].answer.valueBoolean = true

* item[+] insert answerItemX(OtherConcernsDetail,[[13.1)]],[[If yes, describe details, actions taken, and follow-up planned (enter text)]])
* item[=].answer.valueString = "A shortage of ice cream in our freezer led to some unnecessary worries for Madeleine."


* item[+] insert answerItemX(HealthEducationTopicsDiscussed,[[14)]],[[Health education topics discussed? (multiple choice)]])
* item[=].answer[0].valueString = "Secondary prophylaxis"
* item[=].answer[+].valueString = "Nutrition"
* item[=].answer[+].valueString = "Other"

* item[+] insert answerItemX(HealthEducationOtherDetail,[[14.1)]],[[Enter details of other health education topic discussed (enter text)]])
* item[=].answer.valueString = "Madeleine and I discussed the importance of punctuality and the benefits of planning ahead."

* item[+] insert answerItemX(RecentOrUpcomingAppointments,[[15)]],[[Any recent or upcoming follow-up appointments?]])
* item[=].answer.valueBoolean = true

* item[+] insert answerItemX(RecentOrUpcomingAppointmentsDetails,[[15.1)]],[[Enter details and dates of any recent or upcoming follow-up appointments (enter text)]])
* item[=].answer.valueString = "Madeleine has an upcoming follow-up appointment covering iOS calendar basics"

* item[+] insert answerItemX(PlanForNextMedicationAppointment,[[16)]],[[Comments for the next appointment (enter text)]])
* item[=].answer.valueString = "The plan for the next medication appointment is to keep up the good work"