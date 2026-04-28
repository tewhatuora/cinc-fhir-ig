Instance: DHOCataractPatientQuestionnaire
InstanceOf: Questionnaire
Usage: #definition

* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOCataractPatientQuestionnaire"
* version = "1.0"
* identifier.use = #official
* identifier.value = "DHOCataractPatientQuestionnaire"
* name = "DHOCataractPatientQuestionnaire"
* title = "How does your cataract affect your life?"
* status = #active
* experimental = false
* subjectType = #Patient
* date = "2026-02-10"
* publisher = "Health New Zealand | Te Whatu Ora"
* description = "Patient-reported impact of cataract on daily life."

// Parent group
* item[0].type = #group
* item[=].linkId = "PatientQuestionnaire_02"
* item[=].text = "Patient Questionnaire Ophthalmology"

// Intro text
* item[=].item[0].type = #display
* item[=].item[=].linkId = "cataractcauses_03"
* item[=].item[=].text = "Please tell us about how much difficulty your cataract causes in different areas of your life, which may limit the things you can do."

* item[=].item[+].type = #display
* item[=].item[=].linkId = "cataractcauses_04"
* item[=].item[=].text = "Each question below includes examples to illustrate some of the things this area of life covers. It is okay if some of these examples don’t apply to you. Please just think about whatever this area of life means for you."

* item[=].item[+].type = #display
* item[=].item[=].linkId = "conditionaffects_05"
* item[=].item[=].text = "Please select the option that best represents how much your condition affects each area of life."

// ================= QUESTIONS =================

// Q1
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].linkId = "social-interactions"
* item[=].item[=].text = "How much does your condition affect your social interactions?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $caq#1 "1 -- No difficulty"
* item[=].item[=].answerOption[+].valueCoding = $caq#2 "2 -- Little difficulty"
* item[=].item[=].answerOption[+].valueCoding = $caq#3 "3 -- Some difficulty"
* item[=].item[=].answerOption[+].valueCoding = $caq#4 "4 -- Quite difficult"
* item[=].item[=].answerOption[+].valueCoding = $caq#5 "5 -- Very difficult"
* item[=].item[=].answerOption[+].valueCoding = $caq#6 "6 -- Extremely difficult"

// Q2
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].linkId = "personalrelationships"
* item[=].item[=].text = "How much does your condition affect your personal relationships?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $caq#1 "1 -- No difficulty"
* item[=].item[=].answerOption[+].valueCoding = $caq#2 "2 -- Little difficulty"
* item[=].item[=].answerOption[+].valueCoding = $caq#3 "3 -- Some difficulty"
* item[=].item[=].answerOption[+].valueCoding = $caq#4 "4 -- Quite difficult"
* item[=].item[=].answerOption[+].valueCoding = $caq#5 "5 -- Very difficult"
* item[=].item[=].answerOption[+].valueCoding = $caq#6 "6 -- Extremely difficult"

// Q3
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].linkId = "abilitytomeet"
* item[=].item[=].text = "How much does your condition affect your ability to meet your responsibilities to others?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $caq#1 "1 -- No difficulty"
* item[=].item[=].answerOption[+].valueCoding = $caq#2 "2 -- Little difficulty"
* item[=].item[=].answerOption[+].valueCoding = $caq#3 "3 -- Some difficulty"
* item[=].item[=].answerOption[+].valueCoding = $caq#4 "4 -- Quite difficult"
* item[=].item[=].answerOption[+].valueCoding = $caq#5 "5 -- Very difficult"
* item[=].item[=].answerOption[+].valueCoding = $caq#6 "6 -- Extremely difficult"

// Q4
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].linkId = "personalcare"
* item[=].item[=].text = "How much does your condition affect your personal care?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $caq#1 "1 -- No difficulty"
* item[=].item[=].answerOption[+].valueCoding = $caq#2 "2 -- Little difficulty"
* item[=].item[=].answerOption[+].valueCoding = $caq#3 "3 -- Some difficulty"
* item[=].item[=].answerOption[+].valueCoding = $caq#4 "4 -- Quite difficult"
* item[=].item[=].answerOption[+].valueCoding = $caq#5 "5 -- Very difficult"
* item[=].item[=].answerOption[+].valueCoding = $caq#6 "6 -- Extremely difficult"

// Q5
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].linkId = "personalsafety"
* item[=].item[=].text = "How much does your condition affect your personal safety?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $caq#1 "1 -- No difficulty"
* item[=].item[=].answerOption[+].valueCoding = $caq#2 "2 -- Little difficulty"
* item[=].item[=].answerOption[+].valueCoding = $caq#3 "3 -- Some difficulty"
* item[=].item[=].answerOption[+].valueCoding = $caq#4 "4 -- Quite difficult"
* item[=].item[=].answerOption[+].valueCoding = $caq#5 "5 -- Very difficult"
* item[=].item[=].answerOption[+].valueCoding = $caq#6 "6 -- Extremely difficult"

// Q6
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].linkId = "leisureactivities"
* item[=].item[=].text = "How much does your condition affect your leisure activities?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $caq#1 "1 -- No difficulty"
* item[=].item[=].answerOption[+].valueCoding = $caq#2 "2 -- Little difficulty"
* item[=].item[=].answerOption[+].valueCoding = $caq#3 "3 -- Some difficulty"
* item[=].item[=].answerOption[+].valueCoding = $caq#4 "4 -- Quite difficult"
* item[=].item[=].answerOption[+].valueCoding = $caq#5 "5 -- Very difficult"
* item[=].item[=].answerOption[+].valueCoding = $caq#6 "6 -- Extremely difficult"