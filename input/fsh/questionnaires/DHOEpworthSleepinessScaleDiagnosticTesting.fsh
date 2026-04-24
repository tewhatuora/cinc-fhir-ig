Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control
Alias: $ess = https://fhir-ig.digital.health.nz/cs/epworth-sleep-scale

Instance: DHOEpworthSleepinessScaleDiagnosticTesting
InstanceOf: Questionnaire
Usage: #definition

* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOEpworthSleepinessScaleDiagnosticTesting"
* version = "1.0.0"
* name = "DHOEpworthSleepinessScaleDiagnosticTesting"
* title = "Epworth Sleepiness Scale - Diagnostic Testing"
* status = #active
* subjectType = #Patient
* description = "Collects Epworth Sleepiness Scale responses and related diagnostic testing details"
* purpose = "Collects Epworth Sleepiness Scale responses and related diagnostic testing details to support assessment of daytime sleepiness."

// ================= HEADER =================

* item[0].type = #group
* item[=].linkId = "header"
* item[=].text = "Epworth Scale"

* item[=].item[0].type = #display
* item[=].item[=].linkId = "header-left"
* item[=].item[=].text = "Diagnostic Testing Department\n\nPh: (03) 214 5775"

* item[=].item[+].type = #display
* item[=].item[=].linkId = "header-right"
* item[=].item[=].text = "Tom McKendrick\nSleep Laboratory\nDunedin Hospital\n\nPh: (03) 470 9742"

// ================= TREATMENT =================

* item[+].type = #group
* item[=].linkId = "treatment"
* item[=].text = "Please fill in the form below."

* item[=].item[0].type = #boolean
* item[=].item[=].linkId = "on-cpap-niv"
* item[=].item[=].text = "On CPAP / NIV Treatment?"

* item[=].item[+].type = #string
* item[=].item[=].linkId = "current-pressure-setting"
* item[=].item[=].text = "Current Pressure Setting"

// ================= INSTRUCTIONS =================

* item[=].item[+].type = #group
* item[=].item[=].linkId = "instructions-display"
* item[=].item[=].text = "How likely are you to doze off or fall asleep in the following situations, in contrast to feeling just tired? This refers to your usual way of life in recent times. Even if you have not done some of these things recently, try to work out how they would have affected you. Use the following scale to choose the most appropriate number for each situation.\n\n0 = Would never doze\n1 = Slight chance of dozing\n2 = Moderate chance of dozing\n3 = High chance of dozing"
* item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-displayCategory"
* item[=].item[=].extension.valueCodeableConcept.text = "instructions"

/ ================= EPWORTH QUESTIONS =================

// Q1
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].item[=].linkId = "sitting-reading"
* item[=].item[=].item[=].text = "Sitting and reading"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"

// Q2
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].item[=].linkId = "Watchingtv"
* item[=].item[=].item[=].text = "Watching TV"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"

// Q3
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].item[=].linkId = "sittinginactive"
* item[=].item[=].item[=].text = "Sitting, inactive in a public place (e.g., a theatre or meeting)"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"

// Q4
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].item[=].linkId = "passengercarbreak"
* item[=].item[=].item[=].text = "As a passenger in a car for an hour without a break"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"

// Q5
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].item[=].linkId = "restintheafternoons"
* item[=].item[=].item[=].text = "Lying down to rest in the afternoon when circumstances permit"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"

// Q6
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].item[=].linkId = "sittingandtalking"
* item[=].item[=].item[=].text = "Sitting and talking"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"

// Q7
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].item[=].linkId = "sittingquietly"
* item[=].item[=].item[=].text = "Sitting quietly after a lunch without alcohol"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueCoding = $ess#0 "0 -- Would never doze"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#1 "1 -- Slight chance of dozing"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#2 "2 -- Moderate chance of dozing"
* item[=].item[=].item[=].answerOption[+].valueCoding = $ess#3 "3 -- High chance of dozing"

// Total
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].linkId = "total"
* item[=].item[=].item[=].text = "Total"