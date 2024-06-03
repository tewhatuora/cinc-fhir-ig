Instance: AntiviralEligibilityYesQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Description: "Demonstrates payload for a pharmacy review where patient IS eligible for antivirals"
Usage: #example

* questionnaire = Canonical(AntiViralEligibilityQuestionnaire)
* status = #completed
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZXP7823"
* subject.display = "Carey Carrington"
* subject.type = "Patient"

* authored = "2023-07-26T06:15:06.063Z"

* author.type = "Practitioner"
* author.identifier.use = #official
* author.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* author.identifier.value = "99ZZFX"
* author.display = "Dottie McStuffins"

* item[0].linkId = "CurrentDate"
* item[=].text = "Current Date/Time"
* item[=].answer.valueDateTime = "2023-03-26T22:31:23.769Z"

* item[+].linkId = "ReviewDate"
* item[=].text = "Date Review Performed"
* item[=].answer.valueDate = "2023-03-27"

* item[+].linkId = "case-definition-panel"
* item[=].item[0].linkId = "COVID19-Positive"
* item[=].item[=].text = "Is the patient a COVID-19 case as per the case definition or clinical criteria?"
* item[=].item[=].answer.valueBoolean = true

* item[+].linkId = "criteria-panel"
* item[=].text = "Does the patient meet the current Pharmac criteria for COVID-19 Antivitals?"

* item[=].item[0].linkId = "SymptomsStart"
* item[=].item[=].text = "1. Symptoms started:"
* item[=].item[=].answer.valueCoding = $AVE-whenstarted#within-seven-days

* item[=].item[+].linkId = "supoxygen"
* item[=].item[=].text = "2. My patient requires supplemental oxygen"
* item[=].item[=].answer.valueBoolean = false

* item[=].item[+].linkId = "criteria"
* item[=].item[=].text = "3. My patient's condition or circumstance (choose one):"
* item[=].item[=].answer.valueCoding = $AVE-criteria#down-syndrome

* item[+].linkId = "eligible-yes"
* item[=].text = "Assessment: Yes - the patient IS eligible for COVID-19 Antivirals"
* item[=].answer.valueCoding.display = "confirm"

* item[+].linkId = "PharmacistInformation"
* item[=].text = "Please provide pharmacist details"
* item[=].item[0].linkId = "PharmacistName"
* item[=].item[=].text = "Pharmacist Name"
* item[=].item[=].answer.valueString = "From HPI"
* item[=].item[+].linkId = "PharmacistID"
* item[=].item[=].text = "Pharmacist ID"
* item[=].item[=].answer.valueString = "From HPI"

* item[+].linkId = "PharmacyInformation"
* item[=].text = "Please provide details about the pharmacy organisation"

* item[=].item[0].linkId = "PharmacyName"
* item[=].item[=].text = "Pharmacy Name"
* item[=].item[=].answer.valueString = "From HPI"

* item[=].item[+].linkId = "PharmacyHPI"
* item[=].item[=].text = "Pharmacy HPI"
* item[=].item[=].answer.valueString = "From HPI"

* item[=].item[+].linkId = "PharmacyAddress"
* item[=].item[=].text = "Pharmacy address details"
* item[=].item[=].answer.valueString = "FROM HPI e.g. 133 Molesworth Street, Thorndon 6011, Wellington"

* item[+].linkId = "GeneralPracticeInformation"
* item[=].text = "Please provide details about the patient's general practice"

* item[=].item[0].linkId = "GPName"
* item[=].item[=].text = "GP Practice Name"
* item[=].item[=].answer.valueString = "From HPI"

* item[=].item[+].linkId = "GPEDI"
* item[=].item[=].text = "Practice EDI"
* item[=].item[=].answer.valueString = "From HPI"

* item[+].linkId = "SendToGP"
* item[=].text = "Send note to GP Inbox?"
* item[=].answer.valueBoolean = true
