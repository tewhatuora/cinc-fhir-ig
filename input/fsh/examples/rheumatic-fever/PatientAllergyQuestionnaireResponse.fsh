Instance: PatientMedicationAllergyQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Description: "Example payload demonstrating data collected about a patient's allergies to RF medication."
Usage: #example

* meta.profile = Canonical(QuestionnaireResponse)
* meta.versionId = "2"
* meta.lastUpdated = "2023-11-10T00:00:00Z"

* status = #completed
* authored = "2023-06-19T02:08:00.504Z"
* questionnaire = Canonical(PatientMedicationAllergyQuestionnaire|1.0.0)

* subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* author insert ReferenceOrganisation(G0M086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])
* basedOn = Reference(DraftCarePlan)

// NOTE: item numbering does not have to match the Questionnaire because answers relate to questions through link_id

* item[0] insert answerItem(MedicationAllergies,[[Medication allergies? (Yes/No/Unknown)]])
* item[=].answer.valueCoding = $sct#373066001 "Yes (qualifier value)"

* item[+] insert answerItem(AllergyDetails,[[If yes, select which substances apply]])
* item[=].answer[0].valueCoding = $sct#91931000 "Allergy to erythromycin"
* item[=].answer[+].valueCoding = $sct#419511003 "Propensity to adverse reactions to drug (finding)"  // a.k.a "Other"

// * item[+] insert answerItemX(OtherAllergyDetail,[[2)]],[[Other Allergies (enter text)]])
// * item[=].answer.valueString = "Patient also has an allergy to paracetamol"
