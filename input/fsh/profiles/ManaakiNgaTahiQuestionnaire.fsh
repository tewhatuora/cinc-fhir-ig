Profile: ManaakiNgaTahiQuestionnaire
Parent: Questionnaire
Description: "The Care in the Community profile of the Questionnaire resource"
* ^version = "0.1.7"
// elements modified
* identifier 1..
* identifier.use 1..1
* identifier.value 1..1
* identifier.value from QuestionTemplatesVS (preferred)
* item.answerOption.value[x] only integer or string
* item.enableWhen.answer[x] only boolean or decimal or integer or string
* item.initial.value[x] only boolean or decimal or integer or string
// elements prohibited
* approvalDate 0..0
* contained 0..0
* copyright 0..0
* derivedFrom 0..0
* effectivePeriod 0..0
// * extension 0..0   v0.1.3 relief from prohibition of CarePlan extension
* implicitRules 0..0
* item.answerOption.extension 0..0
* item.answerOption.id 0..0
* item.answerOption.initialSelected 0..0
* item.answerOption.modifierExtension 0..0
* item.answerValueSet 0..0
* item.code 0..0
* item.definition 0..0
* item.enableBehavior 0..0
* item.enableWhen.extension 0..0
* item.enableWhen.id 0..0
* item.enableWhen.modifierExtension 0..0
* item.id 0..0
* item.initial.extension 0..0
* item.initial.id 0..0
* item.initial.modifierExtension 0..0
* item.maxLength 0..0
* item.modifierExtension 0..0
* item.readOnly 0..0
* lastReviewDate 0..0
* modifierExtension 0..0
