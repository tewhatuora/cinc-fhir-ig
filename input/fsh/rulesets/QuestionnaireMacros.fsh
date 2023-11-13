// **** **** **** **** **** ****
// Pages and grouping
RuleSet: pageDisplayItem(link_id,prefix,display_text)
* linkId = "{link_id}"
* type = #display
* prefix = "{prefix}"
* text = "{display_text}"

// **** **** **** **** **** ****
// Set up Questionnaire questions of various datatypes

RuleSet: singleChoiceQuestion(link_id,prefix,item_text)
* linkId = "{link_id}"
* text = "{item_text}"
* type = #choice
* prefix = "{prefix}"
* repeats = false
* required = true

RuleSet: multiChoiceQuestion(link_id,prefix,item_text)
* linkId = "{link_id}"
* text = "{item_text}"
* type = #choice
* prefix = "{prefix}"
* repeats = true
* required = true

RuleSet: optionalBooleanQuestion(link_id,prefix,item_text)
* linkId = "{link_id}"
* text = "{item_text}"
* type = #boolean
* prefix = "{prefix}"
* required = false


RuleSet: booleanQuestion(link_id,prefix,item_text)
* linkId = "{link_id}"
* text = "{item_text}"
* type = #boolean
* prefix = "{prefix}"
* required = true

RuleSet: dateQuestion(link_id,prefix,question_text)
* linkId = "{link_id}"
* text = "{question_text}"
* type = #date
* prefix = "{prefix}"
* required = true

RuleSet: integerQuestion(link_id,prefix,question_text)
* linkId = "{link_id}"
* text = "{question_text}"
* type = #integer
* prefix = "{prefix}"
* required = true

RuleSet: stringQuestion(link_id,prefix,question_text)
* linkId = "{link_id}"
* text = "{question_text}"
* type = #string
* prefix = "{prefix}"
* required = true


RuleSet: textQuestion(link_id,prefix,question_text)
* linkId = "{link_id}"
* text = "{question_text}"
* type = #text
* prefix = "{prefix}"
* required = true

// **** **** **** **** **** ****
// answer macros

// creates an answer item
RuleSet: answerItem(link_id,item_text)
* linkId = "{link_id}"
* text = "{item_text}"


// Creates an answer item using the same method signature as the question item 
// This lets QR examples be quickly created from Questionnaires.  For example, in VS Code: 
// 1) Find the text "Question"
// 2) (Cmd shift P) select all occurrences of find match
// 3) (Cmd shift P) expand line selection
// 4) copy
// 5) create a new fsh file for the QR and paste in the lines
// 6) replace instances of QuestionXXXXXItem(...) with AnswerItemX(....) leaving the args unchanged.
// Inclusion of an unused parameter (prefix) does cause sushi to generate a harmless warning on this ruleset
// If someone can think of a useless way of using prefix in the QR that will prevent these warnings...

RuleSet: answerItemX(link_id,prefix,item_text)
* linkId = "{link_id}"
* text = "{item_text}"
// *  "{prefix}" >> /dev/null        // oh for a NOP instruction in FSH!

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
