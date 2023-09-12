Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $unitsofmeasure = http://unitsofmeasure.org
Alias: $sct = http://snomed.info/sct

Instance: COVIDRegularHealthCheckQuestionnaire
InstanceOf: Questionnaire

Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/COVIDRegularHealthCheckQuestionnaire"

* identifier[0].use = #official
* identifier[=].value = "COVIDRegularHealthCheckQuestionnaire"
* identifier[=].period.start = "2023-07-19"
* identifier[+].use = #temp
* identifier[=].value = "QuestionTemplate-CitC-COVID19-RegularHealthCheck"
* identifier[=].period.start = "2022-09-12"
* identifier[=].period.end = "2023-07-19"

* date = "2023-07-19"
* status = #draft
* experimental = false

* name = "COVIDRegularHealthCheckQuestionnaire"
* title = "Question Template for COVID-19 Regular Health Check"

* subjectType = #Patient
* publisher = "Te Whatu Ora"
* description = "Gather the status of a patient who is self isolating"
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* useContext.valueCodeableConcept.text = "COVID-19 Regular Health Check"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* purpose = "Template for the description of a phone or online video health check to gather the status of a set of conditions for a patient who is self isolating."

* item[0].linkId = "1"
* item[=].prefix = "1."
* item[=].text = "Symptoms - Pay attention to the signs of talking with single words or short sentences, pausing to catch their breath, noisy breathing, persistent coughing, etc."
* item[=].type = #group

* item[=].item[0].linkId = "1.1"
* item[=].item[=].prefix = "1.1."
* item[=].item[=].text = "Fever chills (feeling hot and cold)"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].linkId = "1.2"
* item[=].item[=].prefix = "1.2."
* item[=].item[=].text = "Cough"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].linkId = "1.3"
* item[=].item[=].prefix = "1.3."
* item[=].item[=].text = "Runny nose"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].linkId = "1.4"
* item[=].item[=].prefix = "1.4."
* item[=].item[=].text = "Headache"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].linkId = "1.5"
* item[=].item[=].prefix = "1.5."
* item[=].item[=].text = "Joint pain"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].linkId = "1.6"
* item[=].item[=].prefix = "1.6."
* item[=].item[=].text = "Diarrhoea"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].linkId = "1.7"
* item[=].item[=].prefix = "1.7."
* item[=].item[=].text = "Nausea / Vomiting"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].linkId = "1.8"
* item[=].item[=].prefix = "1.8."
* item[=].item[=].text = "Shortness of breath"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].linkId = "1.8.1"
* item[=].item[=].prefix = "1.8.1."
* item[=].item[=].text = "While at rest?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].enableWhen.question = "1.8"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "1.8.2"
* item[=].item[=].prefix = "1.8.2."
* item[=].item[=].text = "New SOB on exertion?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].enableWhen.question = "1.8"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "1.8.3"
* item[=].item[=].prefix = "1.8.3."
* item[=].item[=].text = "Sudden onset of SOB? (with or without chest pain)"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].enableWhen.question = "1.8"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "1.8.4"
* item[=].item[=].prefix = "1.8.4."
* item[=].item[=].text = "Able to speak in full sentences?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].enableWhen.question = "1.8"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "1.8.5"
* item[=].item[=].prefix = "1.8.5."
* item[=].item[=].text = "Assessment?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueString = "Same"
* item[=].item[=].answerOption[+].valueString = "Better"
* item[=].item[=].answerOption[+].valueString = "Worse"
* item[=].item[=].enableWhen.question = "1.8"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "1.8.6"
* item[=].item[=].prefix = "1.8.6."
* item[=].item[=].text = "Further details/what could you do yesterday that you can't do today?"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].enableWhen.question = "1.8"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[+].linkId = "1.9"
* item[=].item[=].prefix = "1.9."
* item[=].item[=].text = "Sore throat"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].linkId = "1.10"
* item[=].item[=].prefix = "1.10."
* item[=].item[=].text = "Loss of sense of smell / taste"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].linkId = "1.11"
* item[=].item[=].prefix = "1.11."
* item[=].item[=].text = "Chest pain"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].linkId = "1.12"
* item[=].item[=].prefix = "1.12."
* item[=].item[=].text = "Muscular pain (Myalgia)"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].linkId = "1.13"
* item[=].item[=].prefix = "1.13."
* item[=].item[=].text = "Abdominal pain"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].linkId = "1.14"
* item[=].item[=].prefix = "1.14."
* item[=].item[=].text = "Any light headedness on standing?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].linkId = "1.15"
* item[=].item[=].prefix = "1.15."
* item[=].item[=].text = "Concentrated urine?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].linkId = "1.16"
* item[=].item[=].prefix = "1.16."
* item[=].item[=].text = "Other COVID related symptoms"
* item[=].item[=].type = #string
* item[=].item[=].required = false


* item[+].linkId = "2"
* item[=].prefix = "2."
* item[=].text = "Further Details"
* item[=].type = #group

* item[=].item[0].linkId = "2.1"
* item[=].item[=].prefix = "2.1."
* item[=].item[=].text = "How are you feeling today compared to yesterday?"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueString = "Same"
* item[=].item[=].answerOption[+].valueString = "Better"
* item[=].item[=].answerOption[+].valueString = "Worse"

* item[=].item[+].linkId = "2.2"
* item[=].item[=].prefix = "2.2."
* item[=].item[=].text = "Do you have any health concerns?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].linkId = "2.3"
* item[=].item[=].prefix = "2.3."
* item[=].item[=].text = "Have you been eating / sleeping well?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = true

* item[=].item[+].linkId = "2.4"
* item[=].item[=].prefix = "2.4."
* item[=].item[=].text = "Please provide further eating / sleeping details"
* item[=].item[=].type = #string
* item[=].item[=].required = false

* item[=].item[+].linkId = "2.5"
* item[=].item[=].prefix = "2.5."
* item[=].item[=].text = "Have you left the room without your mask or has anyone outside your bubble visited your room?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].initial.valueBoolean = false

* item[=].item[+].linkId = "2.6"
* item[=].item[=].prefix = "2.6."
* item[=].item[=].text = "Please provide further details regarding whether you had visitors in your room / bubble"
* item[=].item[=].type = #string
* item[=].item[=].required = false


* item[+].linkId = "3"
* item[=].prefix = "3."
* item[=].text = "Vital Signs"
* item[=].type = #group

* item[=].item[0].linkId = "3.1"
* item[=].item[=].prefix = "3.1."
* item[=].item[=].text = "Temperature (°C)"
* item[=].item[=].type = #decimal
* item[=].item[=].required = true
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueDecimal = 60
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueDecimal = 20
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].extension[=].valueCoding = $unitsofmeasure#Cel "Cel"

* item[=].item[+].linkId = "3.2"
* item[=].item[=].prefix = "3.2."
* item[=].item[=].text = "Heart Rate (BPM)"
* item[=].item[=].type = #integer
* item[=].item[=].required = true
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].extension.valueCoding = $unitsofmeasure#{beats}/min "{beats}/min"

* item[=].item[+].linkId = "3.3"
* item[=].item[=].prefix = "3.3."
* item[=].item[=].text = "BP (Systolic) (mmHg)"
* item[=].item[=].type = #integer
* item[=].item[=].required = true
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].extension.valueCoding = $unitsofmeasure#mm[Hg] "mm[Hg]"

* item[=].item[+].linkId = "3.4"
* item[=].item[=].prefix = "3.4."
* item[=].item[=].text = "BP (Diastolic) (mmHg)"
* item[=].item[=].type = #integer
* item[=].item[=].required = true
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].extension.valueCoding = $unitsofmeasure#mm[Hg] "mm[Hg]"

* item[=].item[+].linkId = "3.5"
* item[=].item[=].prefix = "3.5."
* item[=].item[=].text = "Oxygen Saturation, SpO2 (%)"
* item[=].item[=].type = #integer
* item[=].item[=].required = false
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueInteger = 100
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueInteger = 0
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].extension[=].valueCoding = $unitsofmeasure#% "%"

* item[=].item[+].linkId = "3.6"
* item[=].item[=].prefix = "3.6."
* item[=].item[=].text = "Respiration (RPM)"
* item[=].item[=].type = #integer
* item[=].item[=].required = false
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].extension.valueCoding = $unitsofmeasure#{Breaths}/min "{Breaths}/min"

* item[=].item[+].linkId = "3.7"
* item[=].item[=].prefix = "3.7."
* item[=].item[=].text = "Other vital signs"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "3.8"
* item[=].item[=].prefix = "3.8."
* item[=].item[=].text = "Mood (/10)"
* item[=].item[=].type = #integer
* item[=].item[=].required = false

* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueInteger = 10
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueInteger = 0


* item[+].linkId = "4"
* item[=].prefix = "4."
* item[=].type = #group
* item[=].text = "Health check note"

* item[=].item[0].linkId = "4.1"
* item[=].item[=].prefix = "4.1."
* item[=].item[=].text = "Acuity Rating"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueInteger = 1
* item[=].item[=].answerOption[+].valueInteger = 2
* item[=].item[=].answerOption[+].valueInteger = 3
* item[=].item[=].answerOption[+].valueInteger = 4
* item[=].item[=].answerOption[+].valueInteger = 5
* item[=].item[=].answerOption[+].valueInteger = 6

* item[=].item[+].linkId = "4.2"
* item[=].item[=].prefix = "4.2."
* item[=].item[=].text = "Regular health check note"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "4.3"
* item[=].item[=].prefix = "4.3."
* item[=].item[=].text = "Care Management Plan"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueString = "Self Management"
* item[=].item[=].answerOption[+].valueString = "Active Management"