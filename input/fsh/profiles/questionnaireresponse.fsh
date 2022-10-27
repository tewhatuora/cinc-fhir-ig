Profile: CovidQuestionnaireResponse
Parent: QuestionnaireResponse
Description: "The Care in the Community profile of the QuestionnaireResponse resource"
* implicitRules 0..0
* language 0..0
* contained 0..0
* extension 0..0
* modifierExtension 0..0
* identifier 0..0
* partOf 0..0
* item.id 0..0
* item.extension 0..0
* item.modifierExtension 0..0
* item.definition 0..0
* item.answer.id 0..0
* item.answer.extension 0..0
* item.answer.modifierExtension 0..0
* item.answer.item 0..0
* basedOn only Reference(CarePlan)
* subject only Reference(Patient)
* author only Reference(Practitioner)
* source only Reference(Patient)
* item.answer.value[x] only boolean or decimal or integer or string