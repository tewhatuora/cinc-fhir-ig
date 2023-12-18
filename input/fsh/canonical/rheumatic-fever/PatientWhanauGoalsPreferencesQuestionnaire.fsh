Instance: PatientWhanauGoalsPreferencesQuestionnaire
InstanceOf: Questionnaire
Usage: #definition

Description: "Gathers patient and whanau preferences and goals for rheumatic fever care"

* url = Canonical(PatientWhanauGoalsPreferencesQuestionnaire)

* identifier[0].use = #official
* identifier[=].value = "PatientWhanauGoalsPreferencesQuestionnaire"
* identifier[=].period.start = "2023-10-16"

* version = "1.0.0"
* date = "2023-10-16"
* status = #draft
* experimental = false

* name = "PatientWhanauGoalsPreferencesQuestionnaire"
* title = "Patient & whanau goals and preferences questionnaire"
* purpose = "Gathers patient and whanau preferences and goals for rheumatic fever care"
* subjectType = #Patient
* publisher = "Te Whatu Ora"

* item[0] insert pageDisplayItem(page1,[[page1]],[[Please complete this questionnaire to record goals and preferences of a patient or their whanau in relation to rheumatic fever prevention treatment.]])

* item[+] insert textQuestion(ImportantToMe,[[1)]],[[What things that are important to me and my family that support my health and wellbeing? (enter text)]])

* item[+] insert textQuestion(WhanauInvolvement,[[2)]],[[How would I like my whanau and support persons to be involved? (enter text)]])

* item[+] insert singleChoiceQuestion(BestWayToCommunicate,[[3)]],[[The best way to communicate with me is…? (choose one)]])
* item[=].answerOption[0].valueString = "phone call"
* item[=].answerOption[+].valueString = "text message"
* item[=].answerOption[+].valueString = "email"

* item[+] insert optionalBooleanQuestion(AppointmentsContact,[[4)]],[[I know who to contact about my appointments? (choose one)]])
* item[=] insert attachHelpText(AppointmentsContactHelp,[[I understand who I should phone or text if I need to change my appointments, OR if I am going to be away, OR if I have questions.]])

* item[+] insert singleChoiceQuestion(PreferredAppointmentsLocation,[[5)]],[[What location do I prefer to receive injected antibiotics at? (choose one)]])
* item[=].answerOption[0].valueString = "School"
* item[=].answerOption[+].valueString = "Home"
* item[=].answerOption[+].valueString = "Work"
* item[=].answerOption[+].valueString = "Clinic"
* item[=].answerOption[+].valueString = "Other"

* item[+] insert textQuestion(InjectionLocationDetail,[[6)]],[[More detail about this location (eg. at school during term time, but at home with Dad if out of term time)? (enter text)]])

* item[+] insert textQuestion(ImportantDuringInjectionVisits,[[7)]],[[What things that are important to me during my injection visits eg. karakia, kaiawhina support? (enter text)]])

* item[+] insert textQuestion(InjectionVisitsNoNos,[[8)]],[[What things don't work well for me during my injection visits? (enter text)]])

* item[+] insert multiChoiceQuestion(MakingInjectionsComfortable,[[9)]],[[What things do I like to have with my injections to make them more comfortable? (multiple choice)]])
* item[=].answerOption[0].valueString = "Lignocaine"
* item[=].answerOption[+].valueString = "Ice pack"
* item[=].answerOption[+].valueString = "Buzzy bee"
* item[=].answerOption[+].valueString = "Numbing cream (Emla)"
* item[=].answerOption[+].valueString = "Numbing spray"
* item[=].answerOption[+].valueString = "Distraction"
* item[=].answerOption[+].valueString = "Very slow injection"

* item[+] insert textQuestion(InjectionOtherComfort,[[10)]],[[What other things make my injections more comfortable? (enter text)]])

* item[+] insert singleChoiceQuestion(MedsPreferredSupplyMethod,[[11)]],[[I would prefer to get my oral antibiotic medicines from? (choose one)]])
* item[=].answerOption[0].valueString = "GP prescription"
* item[=].answerOption[+].valueString = "Monthly visit from a nurse"
* item[=].answerOption[+].valueString = "3 monthly visit from a nurse"
* item[=].answerOption[+].valueString = "Pick-up from a pharmacy"
* item[=].answerOption[+].valueString = "Other"

* item[+] insert textQuestion(MedsSupplyOtherDetail,[[11.1)]],[[If other, enter details]])
* item[=].enableWhen.question = "MedsPreferredSupplyMethod"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerString = "Other"

* item[+] insert multiChoiceQuestion(EasierToGetToAppointments,[[12)]],[[What things make it easier for me to get to hospital appointments? (multiple choice)]])
* item[=].answerOption[0].valueString = "Support with transport"
* item[=].answerOption[+].valueString = "Morning appointments"
* item[=].answerOption[+].valueString = "Afternoon appointments"
* item[=].answerOption[+].valueString = "Choice of clinic days"
* item[=].answerOption[+].valueString = "Cultural support"
* item[=].answerOption[+].valueString = "Other"

* item[+] insert textQuestion(HospitalAppointmentsImportant,[[13)]],[[More detail about the things that are important to me about hospital appointments (enter text)]])

* item[+] insert textQuestion(HospitalAppointmentsNoNos,[[14)]],[[Things that don't work well for me about hospital appointments (enter text)]])

* item[+] insert singleChoiceQuestion(SupportGettingToHospitalAppointments,[[15)]],[[Do I need support getting to and from hospital appointment? (choose one)]])
* item[=].answerOption[0].valueString = "Yes - always"
* item[=].answerOption[+].valueString = "Yes - sometimes, please check each time"
* item[=].answerOption[+].valueString = "No"
* item[=].answerOption[+].valueString = "Not sure"
* item[=].answerOption[+].valueString = "Other"

* item[+] insert singleChoiceQuestion(HospitalAppointmentsTransportSupport,[[question 16]],[[Which transport support option do I need? (choose one)]])
* item[=].answerOption[0].valueString = "Taxi vouchers"
* item[=].answerOption[+].valueString = "Top up on public transport card"
* item[=].answerOption[+].valueString = "Hospital to provide transport"
* item[=].answerOption[+].valueString = "Other"

* item[+] insert textQuestion(HospitalAppointmentsTransportOtherDetail,[[question 17]],[[What other details are there about getting to hospital appointments? (enter text)]])
