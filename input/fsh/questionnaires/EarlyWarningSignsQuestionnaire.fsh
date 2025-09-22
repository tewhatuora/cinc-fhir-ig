Alias: $unitsofmeasure = http://unitsofmeasure.org
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct

Instance: GOFSH-GENERATED-ID-0
InstanceOf: Questionnaire
Usage: #example
* status = #draft
* title = "Early Warning Score"
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/EarlyWarningScoreQuestionnaire"
* description = "For collecting the observations as a questionnaire for an Adult Early Warning Score Calculation in New Zealand."
* version = "0.0.2"
* publisher = "Jon Herries - Te Whatu Ora"
* subjectType = #Patient
* identifier.use = #official
* identifier.value = "EarlyWarningScoreQuestionnaire"
* item.linkId = "p01-WarningSymptoms"
* item.prefix = "page 01"
* item.type = #group
* item.text = "Symptoms"
* item.item[0].linkId = "p01-q01-RespiratoryRate"
* item.item[=].prefix = "page 01 question 1"
* item.item[=].type = #integer
* item.item[=].text = "Enter a Respiratory Rate (breaths per minute)"
* item.item[=].required = false
* item.item[=].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item.item[=].extension[=].valueBoolean = true
* item.item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item.item[=].extension[=].valueCoding = $unitsofmeasure#{breaths}/min;{counts}/min "{breaths}/min"
* item.item[=].repeats = false
* item.item[=].code = $loinc#9279-1 "Respiratory rate"
* item.item[+].linkId = "p01-q02-SupplementalOxygen"
* item.item[=].prefix = "page 01 question 2"
* item.item[=].type = #choice
* item.item[=].text = "Enter supplemental Oxygen (litres per minute) "
* item.item[=].required = false
* item.item[=].answerOption[0].valueString = "Room Air"
* item.item[=].answerOption[+].valueString = "1 Lpm"
* item.item[=].answerOption[+].valueString = "2 Lpm"
* item.item[=].answerOption[+].valueString = "3 Lpm"
* item.item[=].answerOption[+].valueString = "4 Lpm"
* item.item[=].answerOption[+].valueString = "5 Lpm"
* item.item[=].answerOption[+].valueString = "6 Lpm"
* item.item[=].answerOption[+].valueString = "7 Lpm"
* item.item[=].answerOption[+].valueString = "8 Lpm"
* item.item[=].answerOption[+].valueString = "9 Lpm"
* item.item[=].answerOption[+].valueString = "10 Lpm"
* item.item[=].answerOption[+].valueString = "11 Lpm"
* item.item[=].answerOption[+].valueString = "12 Lpm"
* item.item[=].answerOption[+].valueString = "13 Lpm"
* item.item[=].answerOption[+].valueString = "14 Lpm"
* item.item[=].answerOption[+].valueString = "15 Lpm"
* item.item[=].repeats = false
* item.item[+].linkId = "p01-q03-OxygenSaturation"
* item.item[=].prefix = "page 01 question 3"
* item.item[=].type = #decimal
* item.item[=].text = "Enter Oxygen Saturation (percentage)"
* item.item[=].required = false
* item.item[=].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item.item[=].extension[=].valueBoolean = true
* item.item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item.item[=].extension[=].valueCoding = $unitsofmeasure#% "%"
* item.item[=].repeats = false
* item.item[=].code = $loinc#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* item.item[+].linkId = "p01-q04-HeartRate"
* item.item[=].prefix = "page 01 question 4"
* item.item[=].type = #integer
* item.item[=].text = "Enter Heart Rate (beats per min)"
* item.item[=].required = false
* item.item[=].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item.item[=].extension[=].valueBoolean = true
* item.item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item.item[=].extension[=].valueCoding = $unitsofmeasure#{beats}/min;{counts}/min "{beats}/min"
* item.item[=].repeats = false
* item.item[=].code = $loinc#8867-4 "Heart rate"
* item.item[+].linkId = "p01-q05-SystolicBloodPressure"
* item.item[=].prefix = "page 01 question 5"
* item.item[=].type = #integer
* item.item[=].text = "Enter Systolic Blood Pressure (mmHg)"
* item.item[=].required = false
* item.item[=].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item.item[=].extension[=].valueBoolean = true
* item.item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item.item[=].extension[=].valueCoding = $unitsofmeasure#mm[Hg] "mm Hg"
* item.item[=].repeats = false
* item.item[=].code = $loinc#8480-6 "Systolic blood pressure"
* item.item[+].linkId = "p01-q06-Temperature"
* item.item[=].prefix = "page 01 question 6"
* item.item[=].type = #decimal
* item.item[=].text = "Enter Temperature (°Celcius)"
* item.item[=].required = false
* item.item[=].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item.item[=].extension[=].valueBoolean = true
* item.item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item.item[=].extension[=].valueCoding = $unitsofmeasure#Cel "deg C"
* item.item[=].repeats = false
* item.item[=].code = $loinc#8310-5 "Body temperature"
* item.item[+].linkId = "p01-q07-Consciousness"
* item.item[=].prefix = "page 01 question 7"
* item.item[=].type = #choice
* item.item[=].text = "Level of Consciousness"
* item.item[=].required = false
* item.item[=].answerOption[0].valueCoding = $sct#248234008 "Mentally alert"
* item.item[=].answerOption[+].valueCoding = $sct#300202002 "Responds to voice"
* item.item[=].answerOption[+].valueCoding = $sct#450847001 "Responds to pain"
* item.item[=].answerOption[+].valueCoding = $sct#422768004 "Unresponsive"
* item.item[=].repeats = false
* item.item[+].linkId = "p01-q08-WarningScore"
* item.item[=].prefix = "page 01 question 8"
* item.item[=].type = #integer
* item.item[=].text = "Early Warning Score"
* item.item[=].required = false
* item.item[=].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
* item.item[=].extension[=].valueBoolean = true
* item.item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item.item[=].extension[=].valueCoding = $unitsofmeasure#{score} "score"
* item.item[=].repeats = false