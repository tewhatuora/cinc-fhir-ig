Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

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
* contained = sleep-scale
* item[0].item[0].type = #display
* item[=].item[=].linkId = "header-left"
* item[=].item[=].text = "Diagnostic Testing Department\n\nPh: (03) 214 5775"
* item[=].item[+].type = #display
* item[=].item[=].linkId = "header-right"
* item[=].item[=].text = "Tom McKendrick\nSleep Laboratory\nDunedin Hospital\n\nPh: (03) 470 9742"
* item[=].type = #group
* item[=].linkId = "header"
* item[=].text = "Epworth Scale"
* item[+].item[0].type = #string
* item[=].item[=].linkId = "patient-name"
* item[=].item[=].text = "Patient"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "nhi-number"
* item[=].item[=].text = "NHI No"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "physician"
* item[=].item[=].text = "Physician"
* item[=].type = #group
* item[=].linkId = "patient-info"
* item[=].text = "Patient Information"
* item[+].item[0].type = #choice
* item[=].item[=].linkId = "on-cpap-niv"
* item[=].item[=].text = "On CPAP / NIV Treatment?"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "current-pressure-setting"
* item[=].item[=].text = "Current Pressure Setting"
* item[=].item[+].type = #date
* item[=].item[=].linkId = "date"
* item[=].item[=].text = "Date"
* item[=].item[+].type = #display
* item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-displayCategory"
* item[=].item[=].extension.valueCodeableConcept.text = "instructions"
* item[=].item[=].linkId = "instructions-display"
* item[=].item[=].text = "How likely are you to doze off or fall asleep in the following situations, in contrast to feeling just tired? This refers to your usual way of life in recent times. Even if you have not done some of these things recently, try to work out how they would have affected you. Use the following scale to choose the most appropriate number for each situation.\n\n0 = Would never doze\n1 = Slight chance of dozing\n2 = Moderate chance of dozing\n3 = High chance of dozing"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].linkId = "sitting-reading"
* item[=].item[=].text = "Sitting and reading"
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "#sleep-scale"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "Watchingtv"
* item[=].item[=].text = "Watching TV"
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "#sleep-scale"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sittinginactive"
* item[=].item[=].text = "Sitting, inactive in a public place (e.g., a theatre or meeting)"
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "#sleep-scale"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "passengercarbreak"
* item[=].item[=].text = "As a passenger in a car for an hour without a break"
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "#sleep-scale"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "restintheafternoon"
* item[=].item[=].text = "Lying down to rest in the afternoon when circumstances permit"
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "#sleep-scale"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sittingandtalking"
* item[=].item[=].text = "Sitting and talking"
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "#sleep-scale"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "sittingquietly"
* item[=].item[=].text = "Sitting quietly after a lunch without alcohol"
* item[=].item[=].required = true
* item[=].item[=].answerValueSet = "#sleep-scale"
* item[=].item[+].type = #integer
* item[=].item[=].linkId = "total"
* item[=].item[=].text = "Total"
* item[=].type = #group
* item[=].linkId = "treatment"
* item[=].text = "Please fill in the form below."

Instance: sleep-scale
InstanceOf: ValueSet
Usage: #inline
* status = #active
* date = "2026-04-13T23:17:04.406Z"
* expansion.timestamp = "2026-04-13T23:16:50.164Z"
* expansion.contains[0].system = #0
* expansion.contains[=].code = #0
* expansion.contains[=].display = "0 -- Would never dose"
* expansion.contains[+].system = #1
* expansion.contains[=].code = #1
* expansion.contains[=].display = "1 -- Slight chance of dozing"
* expansion.contains[+].system = #2
* expansion.contains[=].code = #2
* expansion.contains[=].display = "2 -- Moderate chance of dozing"
* expansion.contains[+].system = #3
* expansion.contains[=].code = #3
* expansion.contains[=].display = "3 -- High chance of dozing"