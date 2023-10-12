Instance: PatientMedicationAllergyQuestionnaire
InstanceOf: Questionnaire
Usage: #definition

Description: "Describes any known patient allergies to medications used in rheumatic fever secondary prophylaxis"

* url = Canonical(PatientMedicationAllergyQuestionnaire)

* identifier[0].use = #official
* identifier[=].value = "PatientMedicationAllergyQuestionnaire"
* identifier[=].period.start = "2023-10-10"

* date = "2023-10-10"
* status = #draft
* experimental = false

* name = "PatientMedicationAllergyQuestionnaire"
* title = "Secondary prophylaxis medication allergy questionnaire"
* purpose = "Gathers information which is specific to rheumatic fever secondary prophylaxis treatment in New Zealand"
* subjectType = #Patient
* publisher = "Te Whatu Ora"

* item[0] insert singleChoiceQuestion(MedicationAllergies,[[question 1]],[[Medication allergies? (Yes/No/Unknown)]])
* item[=].answerOption[0].valueString = "Yes"
* item[=].answerOption[+].valueString = "No"
* item[=].answerOption[+].valueString = "Unknown"

* item[+] insert multiChoiceQuestion(AllergyDetails,[[question 2]],[[If yes, select which substances apply]])
* item[=].enableWhen.question = "MedicationAllergies"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerString = "Yes"
* item[=].answerValueSet = "https://nzhts.digital.health.nz/fhir/ValueSet/Rheumatic-fever-medication-allergy"
* item[=].extension.url = $termServerExtension
* item[=].extension.valueUrl = $preferredTermServer