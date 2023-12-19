Instance: SecondaryProphylaxisHealthAssessmentQuestionnaire
InstanceOf: Questionnaire
Usage: #definition

Description: "Gathers information about patient health at a secondary prophylaxis medication appointment"

* url = Canonical(SecondaryProphylaxisHealthAssessmentQuestionnaire)

* identifier[0].use = #official
* identifier[=].value = "SecondaryProphylaxisHealthAssessmentQuestionnaire"
* identifier[=].period.start = "2023-10-16"

* version = "1.0.0"
* date = "2023-11-10"
* status = #draft
* experimental = false

* name = "SecondaryProphylaxisHealthAssessmentQuestionnaire"
* title = "Secondary Prophylaxis Health Assessment Questionnaire"
* purpose = "Gathers information about patient health at a secondary prophylaxis medication appointment"
* subjectType = #Patient
* publisher = "Te Whatu Ora"

* item[0] insert pageDisplayItem(page1,[[page1]],[[Please complete this questionnaire at the secondary prophylaxis appointment to assess a rheumatic fever patient's health.]])

* item[+] insert multiChoiceQuestion(ReasonsInjectionOverdue,[[2)]],[[Reason(s) injection was give late? (multiple choice)]])

* item[=].answerOption[0].valueString = "Previously Care On-Hold"
* item[=].answerOption[+].valueString = "Unable to Contact Patient"
* item[=].answerOption[+].valueString = "Patient Not Available on the Day"
* item[=].answerOption[+].valueString = "Patient Declined Treatment"
* item[=].answerOption[+].valueString = "INR Too High"
* item[=].answerOption[+].valueString = "Patient Lost to Follow-Up"
* item[=].answerOption[+].valueString = "Service Delayed To Follow-Up" 
* item[=].answerOption[+].valueString = "Service Unavailable on the Day" 
* item[=].answerOption[+].valueString = "Service Error"
* item[=].answerOption[+].valueString = "Other"


* item[+] insert textQuestion(OverdueInjectionOtherDetail,[[3)]],[[Other details for late injection (enter text)]])

// * item[+] insert booleanQuestion(ConsentChecked,[[4)]],[[Pre-injection consent checked?]])
// * item[=].initial.valueBoolean = false

// * item[+] insert booleanQuestion(MedicationChecked,[[5)]],[[Pre-injection medication checked with a second person?]])
// * item[=].initial.valueBoolean = false

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

* item[+] insert textQuestion(PostInjectionConcernDetails,[[12.1)]],[[If Yes, Record Details, Symptoms, Actions Taken and Follow-Up Plan (enter text)]])
* item[=].enableWhen.question = "PostInjectionConcern"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true

* item[+] insert booleanQuestion(AnyOtherConcerns,[[13)]],[[Were There Any Other Concerns or Issues Identified During the Visit?]])
* item[=].initial.valueBoolean = false

* item[+] insert textQuestion(OtherConcernsDetail,[[13.1)]],[[If yes, describe details, actions taken, and follow-up planned (enter text)]])
* item[=].enableWhen.question = "AnyOtherConcerns"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true


* item[+] insert multiChoiceQuestion(HealthEducationTopicsDiscussed,[[14)]],[[Health education topics discussed? (multiple choice)]])
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

* item[+] insert textQuestion(HealthEducationOtherDetail,[[14.1)]],[[Enter details of other health education topic discussed (enter text)]])
* item[=].enableWhen.question = "HealthEducationTopicsDiscussed"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerString = "Other"

* item[+] insert booleanQuestion(RecentOrUpcomingAppointments,[[15)]],[[Any recent or upcoming follow-up appointments?]])

* item[+] insert textQuestion(RecentOrUpcomingAppointmentsDetails,[[15.1)]],[[Enter details and dates of any recent or upcoming follow-up appointments (enter text)]])
* item[=].enableWhen.question = "RecentOrUpcomingAppointments"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true

* item[+] insert textQuestion(PlanForNextMedicationAppointment,[[16)]],[[Comments for the next appointment (enter text)]])
