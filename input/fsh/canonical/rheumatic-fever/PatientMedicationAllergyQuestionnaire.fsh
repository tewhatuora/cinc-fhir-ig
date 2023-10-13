Instance: PatientMedicationAllergyQuestionnaire
InstanceOf: Questionnaire
Usage: #definition

Description: "Describes any known patient allergies to medications used in rheumatic fever secondary prophylaxis"

* url = Canonical(PatientMedicationAllergyQuestionnaire)

* identifier[0].use = #official
* identifier[=].value = "PatientMedicationAllergyQuestionnaire"
* identifier[=].period.start = "2023-10-16"

* date = "2023-10-16"
* status = #draft
* experimental = false

* name = "PatientMedicationAllergyQuestionnaire"
* title = "Secondary prophylaxis medication allergy questionnaire"
* purpose = "Gathers information which is specific to rheumatic fever secondary prophylaxis treatment in New Zealand"
* subjectType = #Patient
* publisher = "Te Whatu Ora"

* item[0] insert pageDisplayItem(page1,[[page1]],[[Please complete this questionnaire to record a patient's allergies to secondary prophylaxis medication.]])

* item[+] insert optionalBooleanQuestion(MedicationAllergies,[[1)]],[[Medication allergies? (Yes/No/Not answered)]])

* item[+] insert multiChoiceQuestion(AllergyDetails,[[1.1]],[[If yes, select which substances apply]])
* item[=].enableWhen.question = "MedicationAllergies"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[=].answerValueSet = "https://nzhts.digital.health.nz/fhir/ValueSet/Rheumatic-fever-medication-allergy"
* item[=].extension.url = $termServerExtension
* item[=].extension.valueUrl = $preferredTermServer