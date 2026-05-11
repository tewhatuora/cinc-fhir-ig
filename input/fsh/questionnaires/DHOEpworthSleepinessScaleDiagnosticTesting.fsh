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

//Header
* item.type = #group
* item.linkId = "header"
* item.text = "Epworth Scale"

//Instruction
* item.item.type = #group
* item.item.linkId = "instructions-display"
* item.item.text = "How likely are you to doze off or fall asleep in the following situations, in contrast to feeling just tired? This refers to your usual way of life in recent times. Even if you have not done some of these things recently, try to work out how they would have affected you."

//Q1
* item.item.item[0].type = #choice
* item.item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item.item[=].linkId = "sitting-reading"
* item.item.item[=].text = "Sitting and reading"
* item.item.item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item.item.item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item.item.item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item.item.item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"

//Q2
* item.item.item[+].type = #choice
* item.item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item.item[=].linkId = "Watchingtv"
* item.item.item[=].text = "Watching TV"
* item.item.item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item.item.item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item.item.item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item.item.item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"

//Q3
* item.item.item[+].type = #choice
* item.item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item.item[=].linkId = "sittinginactive"
* item.item.item[=].text = "Sitting, inactive in a public place (e.g., a theatre or meeting)"
* item.item.item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item.item.item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item.item.item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item.item.item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"

//Q4
* item.item.item[+].type = #choice
* item.item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item.item[=].linkId = "passengercarbreak"
* item.item.item[=].text = "A passenger in a car for one hour"
* item.item.item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item.item.item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item.item.item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item.item.item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"

//Q5
* item.item.item[+].type = #choice
* item.item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item.item[=].linkId = "restintheafternoons"
* item.item.item[=].text = "Lying down in the afternoon (if circumstances permit)"
* item.item.item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item.item.item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item.item.item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item.item.item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"

//Q6
* item.item.item[+].type = #choice
* item.item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item.item[=].linkId = "SittingwithSomeone"
* item.item.item[=].text = "Sitting and talking to someone"
* item.item.item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item.item.item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item.item.item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item.item.item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"

//Q7
* item.item.item[+].type = #choice
* item.item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item.item[=].linkId = "sittingandtalking"
* item.item.item[=].text = "Sitting quietly after lunch without alcohol"
* item.item.item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item.item.item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item.item.item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item.item.item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"

//Q8
* item.item.item[+].type = #choice
* item.item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item.item[=].linkId = "CarInTraffic"
* item.item.item[=].text = "In a car whilst stopped in traffic or at traffic lights"
* item.item.item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item.item.item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item.item.item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item.item.item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"

* item.item.item[+].type = #integer
* item.item.item[=].linkId = "total"
* item.item.item[=].text = "Total"