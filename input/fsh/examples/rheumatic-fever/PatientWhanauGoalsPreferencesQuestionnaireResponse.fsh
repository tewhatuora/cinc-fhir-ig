Instance: PatientWhanauGoalsPreferencesQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Description: "Example payload demonstrating patient/whanau expressed preferences and goals for rheumatic fever care."
Usage: #example

* meta.profile = Canonical(QuestionnaireResponse)
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-24T03:00:00Z"

* status = #completed
* authored = "2023-06-19T03:08:00.504Z"
* questionnaire = Canonical(PatientWhanauGoalsPreferencesQuestionnaire|1.0.0)

* subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* author insert ReferenceOrganisation(G0M086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])
* basedOn = Reference(DraftCarePlan)

// NOTE: item numbering does not have to match the Questionnaire because answers relate to questions through link_id

* item[0] insert answerItemX(ImportantToMe,[[1)]],[[What things that are important to me and my family that support my health and wellbeing? (enter text)]])
* item[=].answer.valueString = "I want to avoid getting rheumatic heart disease so I can take over from Dad running our adventure tourism company, when he wants to retire."

* item[+] insert answerItemX(WhanauInvolvement,[[2)]],[[How would I like my whanau and support persons to be involved? (enter text)]])
* item[=].answer.valueString = "I want my sisters to be with me at the injection appointments to support and distract me."

* item[+] insert answerItemX(BestWayToCommunicate,[[3)]],[[The best way to communicate with me is…? (choose one)]])
* item[=].answer.valueString = "text message"

* item[+] insert answerItemX(AppointmentsContact,[[4)]],[[I know who to contact about my appointments? (choose one)]])
* item[=].answer.valueBoolean = true

* item[+] insert answerItemX(PreferredAppointmentsLocation,[[5)]],[[What location do I prefer to receive injected antibiotics at? (choose one)]])
* item[=].answer.valueString = "Home"

* item[+] insert answerItemX(InjectionLocationDetail,[[6)]],[[More detail about this location (eg. at school during term time, but at home with Dad if out of term time)? (enter text)]])
* item[=].answer.valueString = "We have an emu on our property which can be quite aggressive on Wednesdays and Thursdays in summer and doesn't like Audis so watch out for that!"

* item[+] insert answerItemX(ImportantDuringInjectionVisits,[[7)]],[[What things that are important to me during my injection visits eg. karakia, kaiawhina support? (enter text)]])
* item[=].answer.valueString = "I appreciate having chats with the district nurse at my appointments and I find this helps distract me from the injections"

* item[+] insert answerItemX(InjectionVisitsNoNos,[[8)]],[[What things don't work well for me during my injection visits? (enter text)]])
* item[=].answer.valueString = """I prefer not to know anything about the dose of medication in my injections.
Also I don't like having the injection in the same part of my thigh on each appointment.  It would be good if the nurse can mix it up a bit."""

* item[+] insert answerItemX(MakingInjectionsComfortable,[[9)]],[[What things do I like to have with my injections to make them more comfortable? (multiple choice)]])
* item[=].answer[0].valueString = "Lignocaine"
* item[=].answer[+].valueString = "Ice pack"
* item[=].answer[+].valueString = "Numbing spray"
* item[=].answer[+].valueString = "Distraction"

* item[+] insert answerItemX(InjectionOtherComfort,[[10)]],[[What other things make my injections more comfortable? (enter text)]])
* item[=].answer.valueString = "Ice cream always works well!"

* item[+] insert answerItemX(MedsPreferredSupplyMethod,[[11)]],[[I would prefer to get my oral antibiotic medicines from? (choose one)]])
* item[=].answer.valueString = "Other"

* item[+] insert answerItemX(MedsSupplyOtherDetail,[[11.1)]],[[If other, enter details]])
* item[=].answer.valueString = "Please can you supply my medications in two-month packs?"

* item[+] insert answerItemX(EasierToGetToAppointments,[[12)]],[[What things make it easier for me to get to hospital appointments? (multiple choice)]])
* item[=].answer.valueString = "Morning appointments"

* item[+] insert answerItemX(HospitalAppointmentsImportant,[[13)]],[[More detail about the things that are important to me about hospital appointments (enter text)]])
* item[=].answer.valueString = "I would like my hospital injections in a room with a view of the mountains."

* item[+] insert answerItemX(HospitalAppointmentsNoNos,[[14)]],[[Things that don't work well for me about hospital appointments (enter text)]])
* item[=].answer.valueString = "I prefer it if there are not heaps of trainee medics watching me get my injections."

* item[+] insert answerItemX(SupportGettingToHospitalAppointments,[[15)]],[[Do I need support getting to and from hospital appointment? (choose one)]])
* item[=].answer.valueString = "No"

* item[+] insert answerItemX(HospitalAppointmentsTransportSupport,[[question 16]],[[Which transport support option do I need? (choose one)]])
* item[=].answer.valueString = "Other"

* item[+] insert answerItemX(HospitalAppointmentsTransportOtherDetail,[[question 17]],[[What other details are there about getting to hospital appointments? (enter text)]])
* item[=].answer.valueString = "Please can I have a reserved park space to park Dad's '73 Hilux?  This will help me get to my appointments on time."
