Profile: ManaakiNgaTahiQuestionnaireResponse
Parent: QuestionnaireResponse
Description: "The Care in the Community profile of the QuestionnaireResponse resource"
* ^version = "0.1.2"
// elements struck out
* contained 0..0
* extension 0..0
* identifier 0..0
* implicitRules 0..0
* item.answer.extension 0..0
* item.answer.id 0..0
* item.answer.item 0..0
* item.answer.modifierExtension 0..0
* item.definition 0..0
* item.extension 0..0
* item.id 0..0
* item.modifierExtension 0..0
* language 0..0
* modifierExtension 0..0
* partOf 0..0
// elements modified
* author only Reference(Practitioner)
* authored obeys fhir-hnz-dateTime-utc-1
* basedOn only Reference(CarePlan)
* item.answer.value[x] only boolean or decimal or integer or string
* source only Reference(Patient)
* subject only Reference(Patient)