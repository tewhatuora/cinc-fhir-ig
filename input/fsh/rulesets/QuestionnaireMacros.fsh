// sets up a type #choice Questionnaire item
RuleSet: singleChoiceQuestion(link_id,prefix,item_text)
* linkId = "{link_id}"
* text = "{item_text}"
* type = #choice
* prefix = "{prefix}"
* repeats = false
* required = true

// sets up a type #choice Questionnaire item
RuleSet: multiChoiceQuestion(link_id,prefix,item_text)
* linkId = "{link_id}"
* text = "{item_text}"
* type = #choice
* prefix = "{prefix}"
* repeats = true
* required = true


// sets up a type #boolean Questionnaire item
RuleSet: booleanQuestion(link_id,prefix,item_text)
* linkId = "{link_id}"
* text = "{item_text}"
* type = #boolean
* prefix = "{prefix}"
* required = true

// answer macros

RuleSet: answerItem(link_id,item_text)
* linkId = "{link_id}"
* text = "{item_text}"
