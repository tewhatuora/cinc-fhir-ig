Instance: COVIDInitialHealthAssessmentQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Usage: #example
Description: "Demonstrates responses collected for COVIDInitialHealthAssessmentQuestionnaire"
* questionnaire = Canonical(COVIDInitialHealthAssessmentQuestionnaire)
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
* item[=].text = "Past Health and Wellbeing History - ask questions to find out about:"
* item[=].item[0].linkId = "1.1"
* item[=].item[=].text = "Hypertension?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "1.2"
* item[=].item[=].text = "Diabetes?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "1.3"
* item[=].item[=].text = "Asthma?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "1.4"
* item[=].item[=].text = "Previous stroke?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "1.5"
* item[=].item[=].text = "Cancer?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "1.6"
* item[=].item[=].text = "Current/recent pregnancy?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "1.7"
* item[=].item[=].text = "Immunocompromised?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "1.8"
* item[=].item[=].text = "Previous heart attack or heart failure?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "1.9"
* item[=].item[=].text = "Epilepsy?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "1.10"
* item[=].item[=].text = "Other respiratory disease?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "1.11"
* item[=].item[=].text = "Mental health and/or addiction?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "1.12"
* item[=].item[=].text = "Kidney disease?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "1.13"
* item[=].item[=].text = "CPAP device used?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "1.14"
* item[=].item[=].text = "Weight?"
* item[=].item[=].answer.valueString = "Average"
* item[=].item[+].linkId = "1.15"
* item[=].item[=].text = "Other"
* item[=].item[=].answer.valueString = "Nothing of note"
* item[+].linkId = "2"
* item[=].text = "Medication and Allergies"
* item[=].item[0].linkId = "2.1"
* item[=].item[=].text = "Smoking?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "2.2"
* item[=].item[=].text = "Alcohol?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "2.3"
* item[=].item[=].text = "Recreational drugs?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "2.4"
* item[=].item[=].text = "Allergies?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "2.4.1"
* item[=].item[=].text = "Medication Allergies"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "2.4.2"
* item[=].item[=].text = "Other allergies"
* item[=].item[=].answer.valueString = "Eggs and Peanuts"
* item[=].item[+].linkId = "2.5"
* item[=].item[=].text = "Prescription medication or medical devices (eg. CPAP, nebuliser, blood glucose meter)?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "2.7"
* item[=].item[=].text = "Able to manage meds independently?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "2.8"
* item[=].item[=].text = "Sufficient supply for 14 days?"
* item[=].item[=].answer.valueBoolean = true
* item[+].linkId = "3"
* item[=].text = "Individual assessment plan/guideline"
* item[=].item.linkId = "3.1"
* item[=].item.text = "Individual assessment plan / guideline"
* item[=].item.answer.valueString = "Standard Plan"