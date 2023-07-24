Instance: AntiViralEligibilityNoQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Description: "Demonstrating payload for a pharmacy eligibility review where patient not eligible"
Usage: #example
* status = #completed
* authored = "2023-03-26T20:15:06.063Z"
* questionnaire = Canonical(AntiViralEligibilityQuestionnaire)
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZXP7823"
* subject.display = "Carey Carrington"
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

* item[+].linkId = "COVID19-Positive"
* item[=].text = "Is the patient a probable or confirmed COVID-19 case?"
* item[=].answer.valueCoding.display = "Yes"

* item[+].linkId = "SymptomsStart"
* item[=].text = "When did the patient's symptoms start?"
* item[=].answer.valueCoding.display = "More than 7 days ago"

* item[+].linkId = "supoxygen"
* item[=].text = "The patient requires supplemental oxygen"
* item[=].answer.valueCoding.display = "Yes"

* item[+].linkId = "criteria"
* item[=].text = "The Patient:"
* item[=].answer.valueCoding.display = "none of the above"

* item[+].linkId = "eligible-no"
* item[=].text = "No - the patient IS NOT eligible for COVID-19 Antivirals"
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

* item[=].item[+].linkId = "PharmacyID"
* item[=].item[=].text = "Pharmacy ID"
* item[=].item[=].answer.valueString = "From HPI"

* item[=].item[+].linkId = "PharmacyAddress"
* item[=].item[=].text = "Pharmacy address details"
* item[=].item[=].answer.valueString = "FROM HPI e.g. 133 Molesworth Street, Thorndon 6011, Wellington"


* item[+].linkId = "GeneralPracticeInformation"
* item[=].text = "Please provide details about the patient's general practice"

* item[=].item[0].linkId = "GPName"
* item[=].item[=].text = "General Practitioner Name"
* item[=].item[=].answer.valueString = "From HPI"

* item[=].item[+].linkId = "GPEDI"
* item[=].item[=].text = "General Practice EDI"
* item[=].item[=].answer.valueString = "From HPI"

* item[+].linkId = "SendToGP"
* item[=].text = "Send note to GP Inbox?"
* item[=].answer.valueBoolean = true