Instance: DHOHowDoesYourConditionAffectYourLife
InstanceOf: Questionnaire
Usage: #definition

* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOHowDoesYourConditionAffectYourLife"
* version = "1.0"
* identifier.use = #official
* identifier.value = "DHOHowDoesYourConditionAffectYourLife"
* name = "DHOHowDoesYourConditionAffectYourLife"
* title = "How does your condition affect your life?"
* status = #active
* description = "This form collects information about how a health condition affects different aspects of a person’s sleep, daily functioning, and overall quality of life."

* item.type = #group
* item.linkId = "formheading"
* item.text = "Please tell us about how much difficulty your condition causes in different areas of your life, which may limit the things you can do."
* item.item[0].type = #display
* item.item[=].linkId = "display1"
* item.item[=].text = "Each question below includes examples to illustrate some of the things this area of life covers. It is okay if some of these examples don’t apply to you. Please just think about whatever this area of life means for you.  Please select the number that most represents how much your condition affects each area of your life."
* item.item[+].type = #choice
* item.item[=].linkId = "socialinteractions"
* item.item[=].text = "How much does your condition affect your social interactions? (Examples: meeting friends, going out, joining in groups, going shopping, everyday activities outside the home)"
* item.item[=].required = true
* item.item[=].readOnly = false
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].answerOption[0].valueCoding = $difficulty-scale#1 "1 -- No difficulty"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 1
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#2 "2 -- Little difficulty"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 2
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#3 "3 -- Some difficulty"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 3
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#4 "4 -- Quite difficult"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 4
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#5 "5 -- Very difficult"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 5
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#6 "6 -- Extremely difficult"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 6
* item.item[+].type = #choice
* item.item[=].linkId = "personalrelationships"
* item.item[=].text = "How much does your condition affect your personal relationships? (Examples: personal relations with partner, family members, close personal friends)"
* item.item[=].required = true
* item.item[=].readOnly = false
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].answerOption[0].valueCoding = $difficulty-scale#1 "1 -- No difficulty"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 1
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#2 "2 -- Little difficulty"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 2
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#3 "3 -- Some difficulty"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 3
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#4 "4 -- Quite difficult"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 4
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#5 "5 -- Very difficult"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 5
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#6 "6 -- Extremely difficult"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 6
* item.item[+].type = #choice
* item.item[=].linkId = "responsibilitiestoothers_05"
* item.item[=].text = "How much does your condition affect your ability to meet your responsibilities to others? (Examples: doing meaningful things for yourself or others, including caring for children, grandchildren or partner, work (paid and unpaid), including how having to rely on others may have an impact on you)"
* item.item[=].required = true
* item.item[=].readOnly = false
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].answerOption[0].valueCoding = $difficulty-scale#1 "1 -- No difficulty"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 1
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#2 "2 -- Little difficulty"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 2
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#3 "3 -- Some difficulty"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 3
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#4 "4 -- Quite difficult"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 4
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#5 "5 -- Very difficult"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 5
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#6 "6 -- Extremely difficult"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 6
* item.item[+].type = #choice
* item.item[=].linkId = "personalcare_07"
* item.item[=].text = "How much does your condition affect your personal care? (Examples: looking after yourself, your health, personal hygiene, need for aids or special clothing)"
* item.item[=].required = true
* item.item[=].readOnly = false
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].answerOption[0].valueCoding = $difficulty-scale#1 "1 -- No difficulty"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 1
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#2 "2 -- Little difficulty"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 2
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#3 "3 -- Some difficulty"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 3
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#4 "4 -- Quite difficult"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 4
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#5 "5 -- Very difficult"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 5
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#6 "6 -- Extremely difficult"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 6
* item.item[+].type = #choice
* item.item[=].linkId = "personalsafety_08"
* item.item[=].text = "How much does your condition affect your personal safety? (Examples: being safe from injury and harm, from yourself or others and in your surroundings)"
* item.item[=].required = true
* item.item[=].readOnly = false
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].answerOption[0].valueCoding = $difficulty-scale#1 "1 -- No difficulty"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 1
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#2 "2 -- Little difficulty"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 2
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#3 "3 -- Some difficulty"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 3
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#4 "4 -- Quite difficult"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 4
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#5 "5 -- Very difficult"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 5
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#6 "6 -- Extremely difficult"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 6
* item.item[+].type = #choice
* item.item[=].linkId = "leisure"
* item.item[=].text = "How much does your condition affect your leisure activities? (Examples: getting exercise, hobbies, sporting activities, gardening, do-it-yourself activities, crafts and travel)"
* item.item[=].required = true
* item.item[=].readOnly = false
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].answerOption[0].valueCoding = $difficulty-scale#1 "1 -- No difficulty"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 1
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#2 "2 -- Little difficulty"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 2
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#3 "3 -- Some difficulty"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 3
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#4 "4 -- Quite difficult"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 4
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#5 "5 -- Very difficult"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 5
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#6 "6 -- Extremely difficult"
* item.item[=].answerOption[=].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 6
* item.item[+].type = #integer
* item.item[=].linkId = "totalScore"
* item.item[=].text = "Total score"
* item.item[=].required = false
* item.item[=].readOnly = true
* item.item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].extension[=].valueBoolean = true
* item.item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item.item[=].extension[=].valueExpression.language = #text/fhirpath
* item.item[=].extension[=].valueExpression.expression = "iif(%resource.item.descendants().where(linkId='socialinteractions').answer.value.exists(), %resource.item.descendants().where(linkId='socialinteractions').answer.value.ordinal(), 0) + iif(%resource.item.descendants().where(linkId='personalrelationships').answer.value.exists(), %resource.item.descendants().where(linkId='personalrelationships').answer.value.ordinal(), 0) + iif(%resource.item.descendants().where(linkId='responsibilitiestoothers_05').answer.value.exists(), %resource.item.descendants().where(linkId='responsibilitiestoothers_05').answer.value.ordinal(), 0) + iif(%resource.item.descendants().where(linkId='personalcare_07').answer.value.exists(), %resource.item.descendants().where(linkId='personalcare_07').answer.value.ordinal(), 0) + iif(%resource.item.descendants().where(linkId='personalsafety_08').answer.value.exists(), %resource.item.descendants().where(linkId='personalsafety_08').answer.value.ordinal(), 0) + iif(%resource.item.descendants().where(linkId='leisure').answer.value.exists(), %resource.item.descendants().where(linkId='leisure').answer.value.ordinal(), 0)"