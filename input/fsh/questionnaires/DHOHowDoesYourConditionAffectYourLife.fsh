Instance: DHOHowDoesYourConditionAffectYourLife
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOHowDoesYourConditionAffectYourLife"
* identifier.use = #official
* identifier.value = "DHOHowDoesYourConditionAffectYourLife"
* version = "1.0"
* name = "DHOHowDoesYourConditionAffectYourLife"
* title = "How does your condition affect your life?"
* status = #active
* description = "This form collects information about how a health condition affects different aspects of a person’s sleep, daily functioning, and overall quality of life."
* item.type = #group
* item.linkId = "formheading"
* item.text = "Please tell us about how much difficulty your condition causes in different areas of your life, which may limit the things you can do."
* item.item[0].type = #display
* item.item[=].linkId = "display1"
* item.item[=].text = " Each question below includes examples to illustrate some of the things this area of life covers. It is okay if some of these examples don’t apply to you. Please just think about whatever this area of life means for you.  Please select the number that most represents how much your condition affects each area of your life."
* item.item[+].type = #choice
* item.item[=].linkId = "socialinteractions"
* item.item[=].text = "How much does your condition affect your social interactions? (Examples: meeting friends, going out, joining in groups, going shopping, everyday activities outside the home)"
* item.item[=].required = true
* item.item[=].readOnly = false
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].answerOption[0].valueCoding = $difficulty-scale#1 "1 -- No difficulty"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#2 "2 -- Little difficulty"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#3 "3 -- Some difficulty"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#4 "4 -- Quite difficult"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#5 "5 -- Very difficult"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#6 "6 -- Extremely difficult"
* item.item[+].type = #choice
* item.item[=].linkId = "personalrelationships"
* item.item[=].text = "How much does your condition affect your personal relationships? (Examples: personal relations with partner, family members, close personal friends)"
* item.item[=].required = true
* item.item[=].readOnly = false
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].answerOption[0].valueCoding = $difficulty-scale#1 "1 -- No difficulty"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#2 "2 -- Little difficulty"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#3 "3 -- Some difficulty"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#4 "4 -- Quite difficult"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#5 "5 -- Very difficult"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#6 "6 -- Extremely difficult"
* item.item[+].type = #choice
* item.item[=].linkId = "responsibilitiestoothers_05"
* item.item[=].text = "How much does your condition affect your ability to meet your responsibilities to others? (Examples: doing meaningful things for yourself or others, including caring for children, grandchildren or partner, work (paid and unpaid), including how having to rely on others may have an impact on you)"
* item.item[=].required = true
* item.item[=].readOnly = false
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].answerOption[0].valueCoding = $difficulty-scale#1 "1 -- No difficulty"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#2 "2 -- Little difficulty"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#3 "3 -- Some difficulty"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#4 "4 -- Quite difficult"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#5 "5 -- Very difficult"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#6 "6 -- Extremely difficult"
* item.item[+].type = #choice
* item.item[=].linkId = "personalcare_07"
* item.item[=].text = "How much does your condition affect your personal care? (Examples: looking after yourself, your health, personal hygiene, need for aids or special clothing)"
* item.item[=].required = true
* item.item[=].readOnly = false
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].answerOption[0].valueCoding = $difficulty-scale#1 "1 -- No difficulty"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#2 "2 -- Little difficulty"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#3 "3 -- Some difficulty"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#4 "4 -- Quite difficult"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#5 "5 -- Very difficult"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#6 "6 -- Extremely difficult"
* item.item[+].type = #choice
* item.item[=].linkId = "personalsafety_08"
* item.item[=].text = "How much does your condition affect your personal safety? (Examples: being safe from injury and harm, from yourself or others and in your surroundings)"
* item.item[=].required = true
* item.item[=].readOnly = false
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].answerOption[0].valueCoding = $difficulty-scale#1 "1 -- No difficulty"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#2 "2 -- Little difficulty"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#3 "3 -- Some difficulty"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#4 "4 -- Quite difficult"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#5 "5 -- Very difficult"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#6 "6 -- Extremely difficult"
* item.item[+].type = #choice
* item.item[=].linkId = "leisure"
* item.item[=].text = "How much does your condition affect your leisure activities? (Examples: getting exercise, hobbies, sporting activities, gardening, do-it-yourself activities, crafts and travel)"
* item.item[=].required = true
* item.item[=].readOnly = false
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].answerOption[0].valueCoding = $difficulty-scale#1 "1 -- No difficulty"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#2 "2 -- Little difficulty"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#3 "3 -- Some difficulty"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#4 "4 -- Quite difficult"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#5 "5 -- Very difficult"
* item.item[=].answerOption[+].valueCoding = $difficulty-scale#6 "6 -- Extremely difficult"
* item.item[+].type = #display
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].extension.valueBoolean = true
* item.item[=].linkId = "total-score-display"
* item.item[=].text = "Total score"
* item.item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item.item[=].text.extension.valueExpression.language = #text/fhirpath
* item.item[=].text.extension.valueExpression.expression = "iif(%conditionImpactTotal <= 12, iif(%conditionImpactTotal = 0, '0', iif(%conditionImpactTotal = 1, '1', iif(%conditionImpactTotal = 2, '2', iif(%conditionImpactTotal = 3, '3', iif(%conditionImpactTotal = 4, '4', iif(%conditionImpactTotal = 5, '5', iif(%conditionImpactTotal = 6, '6', iif(%conditionImpactTotal = 7, '7', iif(%conditionImpactTotal = 8, '8', iif(%conditionImpactTotal = 9, '9', iif(%conditionImpactTotal = 10, '10', iif(%conditionImpactTotal = 11, '11', iif(%conditionImpactTotal = 12, '12', ''))))))))))))), iif(%conditionImpactTotal <= 24, iif(%conditionImpactTotal = 13, '13', iif(%conditionImpactTotal = 14, '14', iif(%conditionImpactTotal = 15, '15', iif(%conditionImpactTotal = 16, '16', iif(%conditionImpactTotal = 17, '17', iif(%conditionImpactTotal = 18, '18', iif(%conditionImpactTotal = 19, '19', iif(%conditionImpactTotal = 20, '20', iif(%conditionImpactTotal = 21, '21', iif(%conditionImpactTotal = 22, '22', iif(%conditionImpactTotal = 23, '23', iif(%conditionImpactTotal = 24, '24', '')))))))))))), iif(%conditionImpactTotal = 25, '25', iif(%conditionImpactTotal = 26, '26', iif(%conditionImpactTotal = 27, '27', iif(%conditionImpactTotal = 28, '28', iif(%conditionImpactTotal = 29, '29', iif(%conditionImpactTotal = 30, '30', iif(%conditionImpactTotal = 31, '31', iif(%conditionImpactTotal = 32, '32', iif(%conditionImpactTotal = 33, '33', iif(%conditionImpactTotal = 34, '34', iif(%conditionImpactTotal = 35, '35', iif(%conditionImpactTotal = 36, '36', ''))))))))))))))"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "formheading"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId='formheading').item"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "socialInteractionsScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%formheading.where(linkId='socialinteractions').answer.valueCoding.code.exists(), %formheading.where(linkId='socialinteractions').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "personalRelationshipsScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%formheading.where(linkId='personalrelationships').answer.valueCoding.code.exists(), %formheading.where(linkId='personalrelationships').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "responsibilitiesToOthersScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%formheading.where(linkId='responsibilitiestoothers_05').answer.valueCoding.code.exists(), %formheading.where(linkId='responsibilitiestoothers_05').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "personalCareScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%formheading.where(linkId='personalcare_07').answer.valueCoding.code.exists(), %formheading.where(linkId='personalcare_07').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "personalSafetyScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%formheading.where(linkId='personalsafety_08').answer.valueCoding.code.exists(), %formheading.where(linkId='personalsafety_08').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "leisureScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%formheading.where(linkId='leisure').answer.valueCoding.code.exists(), %formheading.where(linkId='leisure').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "conditionImpactTotal"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%socialInteractionsScore + %personalRelationshipsScore + %responsibilitiesToOthersScore + %personalCareScore + %personalSafetyScore + %leisureScore"