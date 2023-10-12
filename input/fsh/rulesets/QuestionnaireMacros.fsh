// **** **** **** **** **** ****
// Pages and grouping
RuleSet: pageDisplayItem(link_id,prefix,display_text)
* linkId = "{link_id}"
* type = #display
* prefix = "{prefix}"
* text = "{display_text}"

// **** **** **** **** **** ****
// Questionnaire questions

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

// sets up a type #text Questionnaire item for a free text question
RuleSet: textQuestion(link_id,prefix,question_text)
* linkId = "{link_id}"
* text = "{question_text}"
* type = #text
* prefix = "{prefix}"
// * required = true

// **** **** **** **** **** ****
// answer macros

// creates an answer item
RuleSet: answerItem(link_id,item_text)
* linkId = "{link_id}"
* text = "{item_text}"


// creates an answer item using the same parameters used to create the question item
RuleSet: answerItemX(link_id,prefix,item_text)
* linkId = "{link_id}"
* text = "{item_text}"
// * NO-OP = "{prefix}"       
// It is a convenience to generate answers with the same ruleset parameters as those to create question items
// However, not using the parameter does cause sushi to generate an 'unused parameter' warning on this ruleset
// Maybe there will be a NO-OP command in future so unneeded params can be harmlessly consumed

// **** **** **** **** **** ****
// questionnaire help

// creates help text using a SUBSIDIARY item of the Questionnaire item
RuleSet: attachHelpText(link_id,help_text)
* item.text = "{help_text}"
* item.type = #display
* item.linkId = "{link_id}"
* item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.extension.valueCodeableConcept.text = "Help-Button"
* item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"
