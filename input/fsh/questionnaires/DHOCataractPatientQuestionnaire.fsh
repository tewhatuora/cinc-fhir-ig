Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

Instance: DHOCataractPatientQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOCataractPatientQuestionnaire"
* version = "1.0"
* name = "DHOCataractPatientQuestionnaire"
* title = "How does your cataract affect your life?"
* status = #active
* experimental = false
* subjectType = #Patient
* date = "2026-02-10"
* publisher = "Health New Zealand | Te Whatu Ora"
* description = "Patient-reported impact of cataract on daily life."
* contained = difficulty-scale
* item[0].type = #text
* item[=].linkId = "difficultyscale_01"
* item[=].text = "Name"
* item[+].type = #display
* item[=].linkId = "PatientQuestionnaire_02"
* item[=].text = "Patient Questionnaire Ophthalmology"
* item[+].type = #display
* item[=].linkId = "cataractcauses_03"
* item[=].text = "Please tell us about how much difficulty your cataract causes in different areas of your life, which may limit the things you can do.    Each question below includes examples to illustrate some of the things this area    of life covers. It is okay if some of these examples don’t apply to you. Please just    think about whatever this area of life means for you."
* item[+].type = #display
* item[=].linkId = "conditionaffects_04"
* item[=].text = "Please select that most represents how much your condition affects each area of life.   "
* item[+].type = #choice
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].linkId = "social-interactions"
* item[=].text = "How much does your condition affect your social interactions? Examples include meeting friends, going out, joining groups, going shopping, and other everyday activities outside the home."
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = "#difficulty-scale"
* item[+].type = #choice
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].linkId = "personalrelationships"
* item[=].text = "How much does your condition affect your personal relationships? Examples include personal relationships with a partner, family members, and close personal friends."
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = "#difficulty-scale"
* item[+].type = #choice
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].linkId = "abilitytomeet"
* item[=].text = "How much does your condition affect your ability to meet your responsibilities to others? Examples include doing meaningful things for yourself or others, such as caring for children, grandchildren or a partner, and work (both paid and unpaid), including how having to rely on others may affect you."
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = "#difficulty-scale"
* item[+].type = #choice
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].linkId = "personalcare"
* item[=].text = "How much does your condition affect your personal care? Examples include looking after yourself and your health, personal hygiene, and any need for aids or special clothing."
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = "#difficulty-scale"
* item[+].type = #choice
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].linkId = "personalsafety"
* item[=].text = "How much does your condition affect your personal safety? Examples include being safe from injury or harm, from yourself or others, and in your surroundings."
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = "#difficulty-scale"
* item[+].type = #choice
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].linkId = "leisureactivities"
* item[=].text = "How much does your condition affect your leisure activities? Examples include getting exercise, hobbies, sporting activities, gardening, do-it-yourself activities, crafts, and travel."
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = "#difficulty-scale"

Instance: difficulty-scale
InstanceOf: ValueSet
Usage: #inline
* status = #active
* date = "2026-04-13T23:10:03.370Z"
* expansion.timestamp = "2026-04-13T23:10:01.648Z"
* expansion.contains[0].system = "1"
* expansion.contains[=].code = #1
* expansion.contains[=].display = "1 -- No difficulty"
* expansion.contains[+].system = "2"
* expansion.contains[=].code = #2
* expansion.contains[=].display = "2 -- Little difficulty"
* expansion.contains[+].system = "3"
* expansion.contains[=].code = #3
* expansion.contains[=].display = "3 -- Some difficulty"
* expansion.contains[+].system = "4"
* expansion.contains[=].code = #4
* expansion.contains[=].display = "4 -- Quite difficulty"
* expansion.contains[+].system = "5"
* expansion.contains[=].code = #5
* expansion.contains[=].display = "5 -- Very difficulty"
* expansion.contains[+].system = "6"
* expansion.contains[=].code = #6
* expansion.contains[=].display = "6 -- Extremely difficulty"