RuleSet: choiceQuestion(link_id,prefix,item_text)
// sets up a #choice Questionnaire item

* linkId = "{link_id}"
* text = "{item_text}"
* type = #choice
* prefix = "{prefix}"
* repeats = false
* required = true


RuleSet: answerItem(link_id,item_text)
// sets up a Questionnaire response item

* linkId = "{link_id}"
* text = "{item_text}"
