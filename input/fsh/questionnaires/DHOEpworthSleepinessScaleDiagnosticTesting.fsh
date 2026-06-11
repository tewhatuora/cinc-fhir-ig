Instance: DHOEpworthSleepinessScaleDiagnosticTesting
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOEpworthSleepinessScaleDiagnosticTesting"
* identifier.use = #official
* identifier.value = "DHOEpworthSleepinessScaleDiagnosticTesting"
* version = "1.0.0"
* name = "DHOEpworthSleepinessScaleDiagnosticTesting"
* title = "Epworth Sleepiness Scale"
* status = #active
* subjectType = #Patient
* description = "Collects Epworth Sleepiness Scale responses and related diagnostic testing details"
* purpose = "Collects Epworth Sleepiness Scale responses and related diagnostic testing details to support assessment of daytime sleepiness."
* item.item[0].type = #display
* item.item[=].linkId = "instructions"
* item.item[=].text = "This refers to your usual way of life in recent times. Even if you have not done some of these things recently, try to work out how they would have affected you."
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "sitting-reading"
* item.item[=].text = "Sitting and reading"
* item.item[=].required = true
* item.item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item.item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item.item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item.item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "Watchingtv"
* item.item[=].text = "Watching TV"
* item.item[=].required = true
* item.item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item.item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item.item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item.item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "sittinginactive"
* item.item[=].text = "Sitting, inactive in a public place (e.g., a theatre or meeting)"
* item.item[=].required = true
* item.item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item.item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item.item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item.item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "passengercarbreak"
* item.item[=].text = "A passenger in a car for one hour"
* item.item[=].required = true
* item.item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item.item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item.item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item.item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "restintheafternoons"
* item.item[=].text = "Lying down in the afternoon (if circumstances permit)"
* item.item[=].required = true
* item.item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item.item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item.item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item.item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "SittingwithSomeone"
* item.item[=].text = "Sitting and talking to someone"
* item.item[=].required = true
* item.item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item.item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item.item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item.item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "sittingandtalking"
* item.item[=].text = "Sitting quietly after lunch without alcohol"
* item.item[=].required = true
* item.item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item.item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item.item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item.item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "trafficlights"
* item.item[=].text = "In a car whilst stopped in traffic or at traffic lights"
* item.item[=].required = true
* item.item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item.item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item.item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item.item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"
* item.item[+].type = #display
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].extension.valueBoolean = true
* item.item[=].linkId = "total-score-display"
* item.item[=].text = "Total score"
* item.item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item.item[=].text.extension.valueExpression.language = #text/fhirpath
* item.item[=].text.extension.valueExpression.expression = "iif(%epworthTotal <= 12, iif(%epworthTotal = 0, '0', iif(%epworthTotal = 1, '1', iif(%epworthTotal = 2, '2', iif(%epworthTotal = 3, '3', iif(%epworthTotal = 4, '4', iif(%epworthTotal = 5, '5', iif(%epworthTotal = 6, '6', iif(%epworthTotal = 7, '7', iif(%epworthTotal = 8, '8', iif(%epworthTotal = 9, '9', iif(%epworthTotal = 10, '10', iif(%epworthTotal = 11, '11', iif(%epworthTotal = 12, '12', ''))))))))))))), iif(%epworthTotal = 13, '13', iif(%epworthTotal = 14, '14', iif(%epworthTotal = 15, '15', iif(%epworthTotal = 16, '16', iif(%epworthTotal = 17, '17', iif(%epworthTotal = 18, '18', iif(%epworthTotal = 19, '19', iif(%epworthTotal = 20, '20', iif(%epworthTotal = 21, '21', iif(%epworthTotal = 22, '22', iif(%epworthTotal = 23, '23', iif(%epworthTotal = 24, '24', '')))))))))))))"
* item.type = #group
* item.linkId = "header"
* item.text = "How likely are you to doze off or fall asleep in the following situations, in contrast to feeling just tired? "
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "header"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId='header').item"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "sittingReadingScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='sitting-reading').answer.valueCoding.code.exists(), %header.where(linkId='sitting-reading').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "watchingTvScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='Watchingtv').answer.valueCoding.code.exists(), %header.where(linkId='Watchingtv').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "sittingInactiveScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='sittinginactive').answer.valueCoding.code.exists(), %header.where(linkId='sittinginactive').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "passengerCarBreakScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='passengercarbreak').answer.valueCoding.code.exists(), %header.where(linkId='passengercarbreak').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "restInTheAfternoonsScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='restintheafternoons').answer.valueCoding.code.exists(), %header.where(linkId='restintheafternoons').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "sittingWithSomeoneScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='SittingwithSomeone').answer.valueCoding.code.exists(), %header.where(linkId='SittingwithSomeone').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "sittingAndTalkingScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='sittingandtalking').answer.valueCoding.code.exists(), %header.where(linkId='sittingandtalking').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "trafficLightsScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='trafficlights').answer.valueCoding.code.exists(), %header.where(linkId='trafficlights').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "epworthTotal"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%sittingReadingScore + %watchingTvScore + %sittingInactiveScore + %passengerCarBreakScore + %restInTheAfternoonsScore + %sittingWithSomeoneScore + %sittingAndTalkingScore + %trafficLightsScore"