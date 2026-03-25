Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

Instance: DunedinFormConditionAffectQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
* description = "Patient‑reported assessment of the impact of a health condition on daily life."
* meta.profile = "http://hl7.org/fhir/StructureDefinition/Questionnaire"
* title =  "How does condition affect your life"
* status = #draft
* item[0].type = #group
* item[=].linkId = "765911107151"
* item[=].text = "How does your condition affect your life?"
* item[=].item.linkId = "765911107151_helpText"
* item[=].item.type = #display
* item[=].item.text = "Please tell us about how much difficulty your condition causes in different areas of your life, which may limit the things you can do.  Each question below includes examples to illustrate some of the things this area of life covers. It is okay if some of these examples don't apply to you. Please just think about whatever this area of life means for you.  Please circle the number that most represents how much your condition affects each area of your life."
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[+].type = #choice
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].linkId = "624356696038"
* item[=].text = "How much does your condition affect your social interactions?"
* item[=].required = true
* item[=].readOnly = false
* item[=].answerOption[0].valueCoding = #1 "No difficulty"
* item[=].answerOption[+].valueCoding = #2 "Little difficulty"
* item[=].answerOption[+].valueCoding = #3 "Some difficulty"
* item[=].answerOption[+].valueCoding = #4 "Quite difficult"
* item[=].answerOption[+].valueCoding = #5 "Very difficult"
* item[=].answerOption[+].valueCoding = #6 "Extremely difficult"
* item[=].item.linkId = "624356696038_helpText"
* item[=].item.type = #display
* item[=].item.text = "(Examples: meeting friends, going out, joining in groups, going shopping, everyday activities outside the home)"
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[+].type = #choice
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].linkId = "601664488659"
* item[=].text = "How much does your condition affect your personal relationships?"
* item[=].required = true
* item[=].readOnly = false
* item[=].answerOption[0].valueCoding = #1 "No difficulty"
* item[=].answerOption[+].valueCoding = #2 "Little difficulty"
* item[=].answerOption[+].valueCoding = #3 "Some difficulty"
* item[=].answerOption[+].valueCoding = #4 "Quite difficult"
* item[=].answerOption[+].valueCoding = #5 "Very difficult"
* item[=].answerOption[+].valueCoding = #6 "Extremely difficult"
* item[=].item.linkId = "938604546200"
* item[=].item.type = #display
* item[=].item.text = "(Examples: personal relations with partner, family members, close personal friends)"
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[+].type = #choice
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].linkId = "863443735387"
* item[=].text = "How much does your condition affect your ability to meet your responsibilities to others?"
* item[=].required = true
* item[=].readOnly = false
* item[=].answerOption[0].valueCoding = #1 "No difficulty"
* item[=].answerOption[+].valueCoding = #2 "Little difficulty"
* item[=].answerOption[+].valueCoding = #3 "Some difficulty"
* item[=].answerOption[+].valueCoding = #4 "Quite difficult"
* item[=].answerOption[+].valueCoding = #5 "Very difficult"
* item[=].answerOption[+].valueCoding = #6 "Extremely difficult"
* item[=].item.linkId = "624618506381"
* item[=].item.type = #display
* item[=].item.text = "(Examples: doing meaningful things for yourself or others, including caring for children, grandchildren or partner, work (paid and unpaid), including how having to rely on others may have an impact on you))"
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[+].type = #choice
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].linkId = "161471334792"
* item[=].text = "How much does your condition affect your personal care?"
* item[=].required = true
* item[=].readOnly = false
* item[=].answerOption[0].valueCoding = #1 "No difficulty"
* item[=].answerOption[+].valueCoding = #2 "Little difficulty"
* item[=].answerOption[+].valueCoding = #3 "Some difficulty"
* item[=].answerOption[+].valueCoding = #4 "Quite difficult"
* item[=].answerOption[+].valueCoding = #5 "Very difficult"
* item[=].answerOption[+].valueCoding = #6 "Extremely difficult"
* item[=].item.linkId = "220304359852"
* item[=].item.type = #display
* item[=].item.text = "(Examples: looking after yourself, your health, personal hygiene, need for aids or special clothing)"
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[+].type = #choice
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].linkId = "159129288879"
* item[=].text = "How much does your condition affect your personal safety?"
* item[=].required = true
* item[=].readOnly = false
* item[=].answerOption[0].valueCoding = #1 "No difficulty"
* item[=].answerOption[+].valueCoding = #2 "Little difficulty"
* item[=].answerOption[+].valueCoding = #3 "Some difficulty"
* item[=].answerOption[+].valueCoding = #4 "Quite difficult"
* item[=].answerOption[+].valueCoding = #5 "Very difficult"
* item[=].answerOption[+].valueCoding = #6 "Extremely difficult"
* item[=].item.linkId = "324353862698"
* item[=].item.type = #display
* item[=].item.text = "(Examples: being safe from injury and harm, from yourself or others and in your surroundings)"
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[+].type = #choice
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].linkId = "104877718606"
* item[=].text = "How much does your condition affect your leisure activities?"
* item[=].required = true
* item[=].readOnly = false
* item[=].answerOption[0].valueCoding = #1 "No difficulty"
* item[=].answerOption[+].valueCoding = #2 "Little difficulty"
* item[=].answerOption[+].valueCoding = #3 "Some difficulty"
* item[=].answerOption[+].valueCoding = #4 "Quite difficult"
* item[=].answerOption[+].valueCoding = #5 "Very difficult"
* item[=].answerOption[+].valueCoding = #6 "Extremely difficult"
* item[=].item.linkId = "738991042018"
* item[=].item.type = #display
* item[=].item.text = "(Examples: getting exercise, hobbies, sporting activities, gardening, do-it-yourself activities, crafts and travel)"
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[+].type = #group
* item[=].linkId = "502868396322"
* item[=].text = "Patient details"
* item[=].item.linkId = "995364900981"
* item[=].item.type = #display
* item[=].item.text = "Stick patient label here (or fill in the details below if no label is available)"
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[+].type = #string
* item[=].linkId = "140426997110"
* item[=].text = "Preferred name"
* item[=].required = false
* item[+].type = #string
* item[=].linkId = "961244077884"
* item[=].text = "Full name"
* item[=].required = false
* item[+].type = #string
* item[=].linkId = "392686174684"
* item[=].text = "NHI number"
* item[=].required = false
* item[+].type = #date
* item[=].linkId = "220094605396"
* item[=].text = "DOB"
* item[=].required = false
* item[+].type = #string
* item[=].linkId = "348937414067"
* item[=].text = "Address"
* item[=].required = false
* item[+].type = #string
* item[=].linkId = "917247769414"
* item[=].text = "Telephone Number"
* item[=].required = false
* item[+].type = #date
* item[=].linkId = "717341772298"
* item[=].text = "Date"
* item[=].required = false