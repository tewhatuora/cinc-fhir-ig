Instance: MeaslesHealthCheckQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Usage: #example
* status = #completed
* authored = "2023-11-07T02:56:33.645Z"


* questionnaire = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/MeaslesHealthCheckQuestionnaire"
* item[0].linkId = "p02"
* item[=].text = "Symptoms"
* item[=].item[0].linkId = "p02-q01-Symptoms"
* item[=].item[=].text = "Do you currently have any measles symptoms?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "p02-q01-1-Symptoms.Which"
* item[=].item[=].text = "What symptoms do you currently have? "
* item[=].item[=].answer[0].valueCoding.display = "Red Blotchy Rash"
* item[=].item[=].answer[+].valueCoding.display = "Other"
* item[=].item[+].linkId = "p02-q01-1-2--Symptoms.RashWhen"
* item[=].item[=].text = "When did the rash appear?"
* item[=].item[=].answer.valueDate = "2023-11-17"
* item[=].item[+].linkId = "p02-q01-1-3-Symptoms.RashWhere"
* item[=].item[=].text = "Where on your body did the rash start?"
* item[=].item[=].answer.valueString = "Arm"
* item[=].item[+].linkId = "p02-q01-1-4-Symptoms.RashSpread"
* item[=].item[=].text = "If the rash has spread, provide details of where it was spread to?"
* item[=].item[=].answer.valueString = "Leg"
* item[=].item[+].linkId = "p02-q01-1-5-Symptoms.Which.Other"
* item[=].item[=].text = "Provide details of your other symptoms:"
* item[=].item[=].answer.valueString = "Headache"
* item[=].item[+].linkId = "p02-q01-2-Symptoms.Worsened"
* item[=].item[=].text = "Have any of your symptoms worsened since your last health check?"
* item[=].item[=].answer.valueBoolean = false
* item[+].linkId = "p03"
* item[=].text = "Health Context"
* item[=].item[0].linkId = "p03-q01-Vaccine"
* item[=].item[=].text = "Have you had an MMR vaccine for measles since your last health check?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "p03-q01-BloodTest"
* item[=].item[=].text = "Have you had a blood test to confirm your immunity since your last health check?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "p03-q03-Contact"
* item[=].item[=].text = "Do you know if you have had any contact with someone with meales sinse you last health check?"
* item[=].item[=].answer.valueCoding.display = "I dont know"
* item[+].linkId = "p04"
* item[=].text = "Quarantine"
* item[=].item[0].linkId = "p04-q01-Visitors"
* item[=].item[=].text = "Can you provide details of any visitors who are not sure of their immunity status and details of where you have been if you've left the property?"
* item[=].item[=].answer.valueString = "No Visitors."
* item[=].item[+].linkId = "p04-q02-Quarantine"
* item[=].item[=].text = "Do you need any help to continue to quarantine?"
* item[=].item[=].answer.valueBoolean = false