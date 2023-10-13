Instance: SecondaryProphylaxisHealthAssessmentQuestionnaire
InstanceOf: Questionnaire
Usage: #definition

Description: "Gathers information about patient health at a secondary prophylaxis medication appointment"

* url = Canonical(SecondaryProphylaxisHealthAssessmentQuestionnaire)

* identifier[0].use = #official
* identifier[=].value = "SecondaryProphylaxisHealthAssessmentQuestionnaire"
* identifier[=].period.start = "2023-10-16"

* date = "2023-10-16"
* status = #draft
* experimental = false

* name = "SecondaryProphylaxisHealthAssessmentQuestionnaire"
* title = "Secondary Prophylaxis Health Assessment Questionnaire"
* purpose = "Gathers information about patient health at a secondary prophylaxis medication appointment"
* subjectType = #Patient
* publisher = "Te Whatu Ora"

* item[0] insert pageDisplayItem(page1,[[page1]],[[Please complete this questionnaire at the secondary prophylaxis appointment to assess a rheumatic fever patient's health.]])

* item[+] insert stringQuestion(AppointmentIncompleteReason,[[1)]],[[Reason appointment was not completed? (if applicable)]])

* item[+] insert multiChoiceQuestion(ReasonsInjectionOverdue,[[2)]],[[Reason(s) injection overdue? (multiple choice)]])
* item[=].answerOption[0].valueString = "Previously Care On-Hold"
* item[=].answerOption[+].valueString = "Unable to Contact Patient"
* item[=].answerOption[+].valueString = "Patient Not Available"
* item[=].answerOption[+].valueString = "INR too high"
* item[=].answerOption[+].valueString = "Other"

* item[+] insert textQuestion(OverdueInjectionOtherDetail,[[3)]],[[Details for overdue injections? (enter text)]])

* item[+] insert singleChoiceQuestion(DentalIssues,[[4)]],[[Any dental issues? sore teeth etc. (choose one)]])
* item[=].answerOption[0].valueString = "Yes"
* item[=].answerOption[+].valueString = "No"
* item[=].answerOption[+].valueString = "Unknown"

* item[+] insert singleChoiceQuestion(OngoingHealthConcerns,[[5)]],[[Are there other ongoing health concerns? (choose one)]])
* item[=].answerOption[0].valueString = "Yes"
* item[=].answerOption[+].valueString = "No"
* item[=].answerOption[+].valueString = "Unknown"

* item[+] insert booleanQuestion(NewlyPregnant,[[6)]],[[Newly pregnant?]])
* item[=].initial.valueBoolean = false

* item[+] insert dateQuestion(EstDueDate,[[6.1)]],[[Estimated Due Date?]])
* item[=].enableWhen.question = "NewlyPregnant"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true

* item[+] insert integerQuestion(Weight,[[7)]],[[Weight (kg)?]])

* item[+] insert booleanQuestion(ConsentChecked,[[8)]],[[Pre-injection consent checked?]])
* item[=].initial.valueBoolean = false

* item[+] insert booleanQuestion(MedicationChecked,[[9)]],[[Pre-injection medication checked with a second person?]])
* item[=].initial.valueBoolean = false

* item[+] insert textQuestion(BenzathineBrandOtherDetails,[[10)]],[[Details of other Benzathine brand, if used (enter text)]])

* item[+] insert multiChoiceQuestion(OtherPainManagementToolsUsed,[[11)]],[[Pain management tools used? (multiple choice)]])
* item[=].answerOption[0].valueString = "Ice pack"
* item[=].answerOption[+].valueString = "Buzzy bee"
* item[=].answerOption[+].valueString = "Numbing cream (Emla)"
* item[=].answerOption[+].valueString = "Numbing spray"
* item[=].answerOption[+].valueString = "Distraction"
* item[=].answerOption[+].valueString = "Very slow injection"
* item[=].answerOption[+].valueString = "Other"

* item[+] insert textQuestion(PainManagementOtherDetails,[[11.1)]],[[Details of other pain management (enter text)]])
* item[=].enableWhen.question = "OtherPainManagementToolsUsed"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerString = "Other"

* item[+] insert booleanQuestion(PostInjectionConcern,[[12)]],[[Post injection concern or possible reaction identified?]])
* item[=].initial.valueBoolean = false

* item[+] insert textQuestion(PostInjectionConcernDetails,[[12.1)]],[[Enter details of concern / reaction / actions taken (enter text)]])
* item[=].enableWhen.question = "PostInjectionConcern"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true

* item[+] insert booleanQuestion(PostInjectionMedsGiven,[[13)]],[[Post-injection medications given?]])
* item[=].initial.valueBoolean = false

* item[+] insert textQuestion(PostInjectionMedsDetails,[[13.1)]],[[Enter details of post-injection medications and reason (enter text)]])
* item[=].enableWhen.question = "PostInjectionMedsGiven"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true

* item[+] insert textQuestion(Comments,[[14)]],[[Enter any further comments about the secondary prophylaxis appointment here (enter text)]])

* item[+] insert multiChoiceQuestion(HealthEducationTopicsDiscussed,[[15)]],[[Health education topics discussed? (multiple choice)]])
* item[=].answerOption[0].valueString = "Secondary prophylaxis"
* item[=].answerOption[+].valueString = "Sore Throat Management"
* item[=].answerOption[+].valueString = "Skin Infection Management"
* item[=].answerOption[+].valueString = "Dental Health"
* item[=].answerOption[+].valueString = "Endocarditis Prophylaxis"
* item[=].answerOption[+].valueString = "Nutrition"
* item[=].answerOption[+].valueString = "Physical Activity"
* item[=].answerOption[+].valueString = "Healthy Home Environments"
* item[=].answerOption[+].valueString = "Sexual Health"
* item[=].answerOption[+].valueString = "Other"

* item[+] insert textQuestion(HealthEducationOtherDetail,[[15.1)]],[[Enter details of other health education topic discussed (enter text)]])
* item[=].enableWhen.question = "HealthEducationTopicsDiscussed"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerString = "Other"

* item[+] insert booleanQuestion(RecentOrUpcomingAppointments,[[16)]],[[Any recent or upcoming follow-up appointments?]])
* item[=].initial.valueBoolean = false

* item[+] insert textQuestion(RecentOrUpcomingAppointmentsDetails,[[16.1)]],[[Enter details and dates of any recent or upcoming follow-up appointments (enter text)]])
* item[=].enableWhen.question = "RecentOrUpcomingAppointments"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true

