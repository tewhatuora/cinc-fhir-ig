Instance: PregnancyAssessmentSurveyQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Description: "Demonstrates responses collected for Pregnancy Assessment Survey Questionnaire"
Usage: #example
* status = #completed
* questionnaire = Canonical(PregnancyAssessmentSurveyQuestionnaire)
* authored = "2023-08-23T02:00:27.166Z"
* item[0].linkId = "p01"
* item[=].text = "Pregnancy Context"
* item[=].item[0].linkId = "p01-q01-PregnancyStatus"
* item[=].item[=].text = "Are you currently pregnant or postpartum?"
* item[=].item[=].answer.valueCoding.display = "Pregnant"
* item[=].item[+].linkId = "p01-q01-1-PregnancyStatus.Gestation"
* item[=].item[=].text = "Gestation"
* item[=].item[=].answer.valueInteger = 30
* item[=].item[+].linkId = "p01-q01-2-PregnancyStatus.DeliveryDate"
* item[=].item[=].text = "Expected Delivery Date (EDD)"
* item[=].item[=].answer.valueDate = "2023-08-26"
* item[=].item[+].linkId = "p01-q02-Parity"
* item[=].item[=].text = "Para"
* item[=].item[=].answer.valueInteger = 2
* item[=].item[+].linkId = "p01-q03-Gravida"
* item[=].item[=].text = "Gravida"
* item[=].item[=].answer.valueInteger = 3
* item[+].linkId = "p02"
* item[=].text = "Midwife Information"
* item[=].item[0].linkId = "p02-q01-MidwifeName"
* item[=].item[=].text = "Midwife Name"
* item[=].item[=].answer.valueString = "Lynn Smith"
* item[=].item[+].linkId = "p02-q02-MidwifeContact"
* item[=].item[=].text = "Midwife Contact"
* item[=].item[=].answer.valueString = "021Example"
* item[+].linkId = "p03"
* item[=].text = "Findings"
* item[=].item[0].linkId = "p03-q01-Ultrasound"
* item[=].item[=].text = "Ultrasound Findings"
* item[=].item[=].answer.valueString = "There is a baby"
* item[=].item[+].linkId = "p03-q02-BloodTest"
* item[=].item[=].text = "Blood Tests"
* item[=].item[=].answer.valueString = "There is blood"
* item[+].linkId = "p04"
* item[=].text = "Complications and Symptoms"
* item[=].item[0].linkId = "p04-q01-CurrentComplications"
* item[=].item[=].text = "Any current pregnancy complications?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "p04-q02-ComplicationsPrevious"
* item[=].item[=].text = "Any previous pregnancy complications?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "p04-q03-PreEclampsia"
* item[=].item[=].text = "Any signs of pre-eclampsia?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "p04-q03-1-PreEclampsia.Details"
* item[=].item[=].text = "Please explain any symptoms suggestive of pre-eclampsia?"
* item[=].item[=].answer.valueString = "There is pre-eclampsia"
* item[=].item[+].linkId = "p04-q04-DVT"
* item[=].item[=].text = "Any signs suggestive of a DVT?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "p04-q04-1-DVT.Details"
* item[=].item[=].text = "Please explain any symptoms suggestive of a DVT"
* item[=].item[=].answer.valueString = "There is a DVT"
* item[=].item[+].linkId = "p04-q05-Dysuria"
* item[=].item[=].text = "Any signs of Dysuria?"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "p04-q06-VaginalDischarge"
* item[=].item[=].text = "Vaginal Discharge?"
* item[=].item[=].answer.valueBoolean = false
* item[+].linkId = "p05"
* item[=].text = "Obstetrician Notes"
* item[=].item.linkId = "p05-q01-ObstetricianNotes"
* item[=].item.text = "Obstetrician Details and Discussion, including any potential clexane requirement?"
* item[=].item.answer.valueString = "Example of Obstetrician notes."
* item[+].linkId = "p06"
* item[=].text = "Post 23 Week Information"
* item[=].item[0].linkId = "p06-q01-FetalMovement"
* item[=].item[=].text = "Any baby movement felt?"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "p06-q01-1-FetalMovement.Details"
* item[=].item[=].text = "Any details surrounding the baby movement?"
* item[=].item[=].answer.valueString = "There is baby movement"
* item[=].item[+].linkId = "p06-q02-VaginalBleeding"
* item[=].item[=].text = "Any vaginal bleeding?"
* item[=].item[=].answer.valueBoolean = false
* item[+].linkId = "p07"
* item[=].text = "General Practice Information"
* item[=].answer.item[0].linkId = "p07-q01-PracticeName"
* item[=].answer.item[=].text = "GP Practice Name"
* item[=].answer.item[=].answer.valueString = "ExampleGP"
* item[=].answer.item[+].linkId = "p07-q02-PracticeEDI"
* item[=].answer.item[=].text = "Practice EDI"
* item[=].answer.item[=].answer.valueString = "XXXXX"
* item[=].answer.item[+].linkId = "p07-q03-GPSend"
* item[=].answer.item[=].text = "Send note to GP Inbox?"
* item[=].answer.item[=].answer.valueBoolean = true

 