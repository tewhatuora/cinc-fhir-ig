Instance: PatientMedicationAllergyQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Description: "Example payload demonstrating data collected about a patient's allergies to RF medication."
Usage: #example
* status = #completed
* authored = "2023-10-10T03:08:00.504Z"
* questionnaire = Canonical(PatientMedicationAllergyQuestionnaire)

* subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* author insert ReferencePractitioner(99ZAAA,[[Isabel Injecta]])
* basedOn = Reference(DraftCarePlan)

* item[0] insert answerItem(MedicationAllergies,[[Medication allergies? (Yes/No/Unknown)]])
* item[=].answer.valueString = "Yes"

* item[+] insert answerItem(AllergyDetails,[[If yes, select which substances apply]])
* item[=].answer[0].valueCoding = $sct#22005007 "Ethyl chloride"
//* item[=].answer[0].valueCoding.system = Canonical(RheumaticFeverMedicationAllergyCodeSystem)     // TODO: this will need to change to an NZHTS reference and add the termserver extension