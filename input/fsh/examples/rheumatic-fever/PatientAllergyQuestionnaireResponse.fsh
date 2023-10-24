Instance: PatientMedicationAllergyQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Description: "Example payload demonstrating data collected about a patient's allergies to RF medication."
Usage: #example

* meta.profile = Canonical(QuestionnaireResponse)
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-24T03:00:00Z"

* status = #completed
* authored = "2023-06-19T02:08:00.504Z"
* questionnaire = Canonical(PatientMedicationAllergyQuestionnaire)

* subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* author insert ReferenceOrganisation(GOM086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])
* basedOn = Reference(DraftCarePlan)

// NOTE: item numbering does not have to match the Questionnaire because answers relate to questions through link_id

* item[0] insert answerItem(MedicationAllergies,[[Medication allergies? (Yes/No/Not answered)]])
* item[=].answer.valueBoolean = true

* item[+] insert answerItem(AllergyDetails,[[If yes, select which substances apply]])
* item[=].answer.valueCoding = $sct#22005007 "Ethyl chloride"
