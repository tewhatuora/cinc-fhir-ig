Instance: DHOEpworthSleepinessScaleDiagnosticTesting
InstanceOf: Questionnaire
Usage: #definition

* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOEpworthSleepinessScaleDiagnosticTesting"
* version = "1.0.0"
* identifier.use = #official
* identifier.value = "DHOEpworthSleepinessScaleDiagnosticTesting"
* name = "DHOEpworthSleepinessScaleDiagnosticTesting"
* title = "Epworth Sleepiness Scale - Diagnostic Testing"
* status = #active
* subjectType = #Patient
* description = "Collects Epworth Sleepiness Scale responses and related diagnostic testing details"
* purpose = "Collects Epworth Sleepiness Scale responses and related diagnostic testing details to support assessment of daytime sleepiness."

//==========================Form Header =========================================
* item[0].type = #group
* item[=].linkId = "header"
* item[=].text = "How likely are you to doze off or fall asleep in the following situations, in contrast to feeling just tired?"

//==========================Introduction =========================================
* item[=].item[0].type = #display
* item[=].item[=].linkId = "instructions"
* item[=].item[=].text = "This refers to your usual way of life in recent times. Even if you have not done some of these things recently, try to work out how they would have affected you."

//Q1
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sitting-reading"
* item[=].item[=].text = "Sitting and reading"
* item[=].item[=].required = false
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3

//Q2
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "Watchingtv"
* item[=].item[=].text = "Watching TV"
* item[=].item[=].required = false
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3


//Q3
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sittinginactive"
* item[=].item[=].text = "Sitting, inactive in a public place (e.g., a theatre or meeting)"
* item[=].item[=].required = false
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3

//Q4
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "passengercarbreak"
* item[=].item[=].text = "A passenger in a car for one hour"
* item[=].item[=].required = false
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3

//Q5
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "restintheafternoons"
* item[=].item[=].text = "Lying down in the afternoon (if circumstances permit)"
* item[=].item[=].required = false
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3

//Q6
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "SittingwithSomeone"
* item[=].item[=].text = "Sitting and talking to someone"
* item[=].item[=].required = false
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3

//Q7
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sittingandtalking"
* item[=].item[=].text = "Sitting quietly after lunch without alcohol"
* item[=].item[=].required = false
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3

//
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "trafficlights"
* item[=].item[=].text = "In a car whilst stopped in traffic or at traffic lights"
* item[=].item[=].required = false
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 0
* item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"
* item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension[=].valueDecimal = 3

//Total Score Calculation
* item[=].item[+].type = #integer
* item[=].item[=].linkId = "total"
* item[=].item[=].text = "Total"
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[=].extension[0].url = $sdc-calc
* item[=].item[=].extension[=].valueExpression.language = ##text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "iif(%resource.item.descendants().where(linkId='sitting-reading').answer.value.exists(), %resource.item.descendants().where(linkId='sitting-reading').answer.value.ordinal(), 0) + iif(%resource.item.descendants().where(linkId='Watchingtv').answer.value.exists(), %resource.item.descendants().where(linkId='Watchingtv').answer.value.ordinal(), 0) + iif(%resource.item.descendants().where(linkId='sittinginactive').answer.value.exists(), %resource.item.descendants().where(linkId='sittinginactive').answer.value.ordinal(), 0) + iif(%resource.item.descendants().where(linkId='passengercarbreak').answer.value.exists(), %resource.item.descendants().where(linkId='passengercarbreak').answer.value.ordinal(), 0) + iif(%resource.item.descendants().where(linkId='restintheafternoons').answer.value.exists(), %resource.item.descendants().where(linkId='restintheafternoons').answer.value.ordinal(), 0) + iif(%resource.item.descendants().where(linkId='SittingwithSomeone').answer.value.exists(), %resource.item.descendants().where(linkId='SittingwithSomeone').answer.value.ordinal(), 0) + iif(%resource.item.descendants().where(linkId='sittingandtalking').answer.value.exists(), %resource.item.descendants().where(linkId='sittingandtalking').answer.value.ordinal(), 0) + iif(%resource.item.descendants().where(linkId='990831528762').answer.value.exists(), %resource.item.descendants().where(linkId='990831528762').answer.value.ordinal(), 0)"
