Instance: MedicationsAndFollowUpGuidanceQuestionnaire
InstanceOf: Questionnaire
Usage: #definition

Description: "Describes any known patient allergies to medications used in rheumatic fever secondary prophylaxis"

* url = Canonical(MedicationsAndFollowUpGuidanceQuestionnaire)

* identifier[0].use = #official
* identifier[=].value = "MedicationsAndFollowUpGuidanceQuestionnaire"
* identifier[=].period.start = "2023-10-10"

* date = "2023-10-10"
* status = #draft
* experimental = false

* name = "MedicationsAndFollowUpGuidanceQuestionnaire"
* title = "Medications and Follow-up Guidance Questionnaire"
* purpose = "Gathers information in secondary prophylaxis planning which guides subsequent medication appointments and follow-up"
* subjectType = #Patient
* publisher = "Te Whatu Ora"

* item[0] insert singleChoiceQuestion(SourceOfOralMedications,[[question 1]],[[Source of oral medications? (choose one)]])
* item[=].answerOption[0].valueString = "GP prescription"
* item[=].answerOption[+].valueString = "3 monthly visit from a nurse"
* item[=].answerOption[+].valueString = "Monthly visit from a nurse"
* item[=].answerOption[+].valueString = "Pick-up from a pharmacy"
* item[=].answerOption[+].valueString = "Other"

* item[+] insert booleanQuestion(CaseOnWarfarin,[[question 2]],[[Case on warfarin?]])
* item[=].initial.valueBoolean = false

* item[+] insert singleChoiceQuestion(WarfarinSupervisionService,[[question 3]],[[Warfarin supervision service (choose one)]])
* item[=].enableWhen.question = "CaseOnWarfarin"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[=].answerOption[0].valueString = "GP"
* item[=].answerOption[+].valueString = "Pharmacy"
* item[=].answerOption[+].valueString = "Hospital service"
* item[=].answerOption[+].valueString = "Patient"
* item[=].answerOption[+].valueString = "Whanau"

* item[+] insert singleChoiceQuestion(MonitoringResultSource,[[question 4]],[[International normalised ratio (INR) monitoring result source (choose one)]])
* item[=].answerOption[0].valueString = "Patient"
* item[=].answerOption[+].valueString = "Parent"
* item[=].answerOption[+].valueString = "Éclair"
* item[=].answerOption[+].valueString = "GP"
* item[=].answerOption[+].valueString = "Pharmacy"
* item[=].answerOption[+].valueString = "INROnline"
* item[=].answerOption[+].valueString = "Other"

* item[+] insert singleChoiceQuestion(FollowUpClinicalService,[[question 5]],[[Follow-up clinical service? (choose one)]])
* item[=].answerOption[0].valueString = "Specialist"
* item[=].answerOption[+].valueString = "GP"
* item[=].answerOption[+].valueString = "To be determined"