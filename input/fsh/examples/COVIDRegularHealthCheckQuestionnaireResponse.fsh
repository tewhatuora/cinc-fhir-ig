Instance: COVIDRegularHealthCheckQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Description: "Demonstrates responses collected for COVIDRegularHealthCheckQuestionnaire"
Usage: #example
* questionnaire = Canonical(COVIDRegularHealthCheckQuestionnaire)
* basedOn = Reference(CarePlanExample)
* status = #completed

* subject = Reference(CareyCarrington) "Carey Carrington"
* subject.type = "Patient"

* authored = "2022-08-29"
* author.type = "Practitioner"
* author.identifier.use = #official
* author.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* author.identifier.value = "99ZZFX"
* author.display = "Dottie McStuffins"
* source.type = "Patient"
* source.identifier.use = #official
* source.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* source.identifier.value = "ZXP7823"
* source.display = "Carey Carrington"

* item[0].linkId = "1"
* item[=].text = "Symptoms - Pay attention to the signs of talking with single words or short sentences, pausing to catch their breath, noisy breathing, persistent coughing, etc."

* item[=].item[0].linkId = "1.1"
* item[=].item[=].text = "Fever chills (feeling hot and cold)"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "1.2"
* item[=].item[=].text = "Cough"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[+].linkId = "1.3"
* item[=].item[=].text = "Runny nose"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "1.4"
* item[=].item[=].text = "Headache"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[+].linkId = "1.5"
* item[=].item[=].text = "Joint pain"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "1.6"
* item[=].item[=].text = "Diarrhoea"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "1.7"
* item[=].item[=].text = "Nausea / Vomiting"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "1.8"
* item[=].item[=].text = "Shortness of breath"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "1.9"
* item[=].item[=].text = "Sore throat"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "1.10"
* item[=].item[=].text = "Loss of sense of smell / taste"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "1.11"
* item[=].item[=].text = "Chest pain"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "1.12"
* item[=].item[=].text = "Muscular pain (Myalgia)"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "1.13"
* item[=].item[=].text = "Abdominal pain"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "1.14"
* item[=].item[=].text = "Any light headedness on standing?"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "1.15"
* item[=].item[=].text = "Concentrated urine?"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "1.16"
* item[=].item[=].text = "Other COVID related symptoms"
* item[=].item[=].answer.valueString = "None"


* item[+].linkId = "2"
* item[=].text = "Further Details"

* item[=].item[0].linkId = "2.1"
* item[=].item[=].text = "How are you feeling today compared to yesterday?"
* item[=].item[=].answer.valueString = "Better"

* item[=].item[+].linkId = "2.2"
* item[=].item[=].text = "Do you have any health concerns?"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "2.3"
* item[=].item[=].text = "Have you been eating / sleeping well?"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "2.4"
* item[=].item[=].text = "Please provide further eating / sleeping details"
* item[=].item[=].answer.valueString = "Not Sleeping Well"

* item[=].item[+].linkId = "2.5"
* item[=].item[=].text = "Have you left the room without your mask or has anyone outside your bubble visited your room?"
* item[=].item[=].answer.valueBoolean = true

* item[=].item[+].linkId = "2.6"
* item[=].item[=].text = "Please provide further details regarding whether you had visitors in your room / bubble"
* item[=].item[=].answer.valueString = "Went supermarket shopping"


* item[+].linkId = "3"
* item[=].text = "Vital Signs"

* item[=].item[0].linkId = "3.1"
* item[=].item[=].text = "Temperature (°C)"
* item[=].item[=].answer.valueDecimal = 36

* item[=].item[+].linkId = "3.2"
* item[=].item[=].text = "Heart Rate (BPM)"
* item[=].item[=].answer.valueInteger = 65

* item[=].item[+].linkId = "3.3"
* item[=].item[=].text = "BP (Systolic) (mmHg)"
* item[=].item[=].answer.valueInteger = 120

* item[=].item[+].linkId = "3.4"
* item[=].item[=].text = "BP (Diastolic) (mmHg)"
* item[=].item[=].answer.valueInteger = 80

* item[=].item[+].linkId = "3.5"
* item[=].item[=].text = "Oxygen Saturation, SpO2 (%)"
* item[=].item[=].answer.valueInteger = 98

* item[=].item[+].linkId = "3.6"
* item[=].item[=].text = "Respiration (RPM)"
* item[=].item[=].answer.valueInteger = 15

* item[=].item[+].linkId = "3.7"
* item[=].item[=].text = "Other vital signs"
* item[=].item[=].answer.valueString = "Really Good"

* item[=].item[+].linkId = "3.8"
* item[=].item[=].text = "Mood (/10)"
* item[=].item[=].answer.valueInteger = 10


* item[+].linkId = "4"
* item[=].text = "Health check note"

* item[=].item[0].linkId = "4.1"
* item[=].item[=].text = "Acuity Rating"
* item[=].item[=].answer.valueInteger = 4

* item[=].item[+].linkId = "4.2"
* item[=].item[=].text = "Regular health check note"
* item[=].item[=].answer.valueString = "He's looking good"

* item[=].item[+].linkId = "4.3"
* item[=].item[=].text = "Care Management Plan"
* item[=].item[=].answer.valueString = "Self Management"