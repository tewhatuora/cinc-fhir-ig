Instance: ActiveMonitoringDay3SurveyQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Description: "Survey of side effects and overall experience of Influenza/COVID-19 Booster vaccination after 3 days."
Usage: #example
* authored = "2024-04-21T22:06:45.669Z"
* item[0].linkId = "p01-Intro"
* item[=].answer.valueString = "Immunization/452fb7d0-8d3d-4534-a147-25560206edc2"
* item[=].text = "This is the first of two surveys about your experience with receiving your vaccine. This survey will take approximately five minutes to complete. You will be asked about any reactions you had after your vaccination(s). If you did not have any there is also a section at the end for you to comment on any other parts of your vaccination experience. Your responses are important and will help contribute to the safety monitoring of vaccines in New Zealand. The information you provide is confidential and is protected by the Privacy Act 2020 and data security safeguards. Please remember this is a survey only, your answers will not result in a medical response to your situation. If you have any concerns about your health after your vaccination, call Healthline at 0800 611 116 or speak to your healthcare professional. If you experience any of the following symptoms, you should seek medical help urgently and tell them about your vaccinations: tightness, heaviness, discomfort, pressure or pain in your chest or neck difficulty breathing or catching your breath feeling faint, dizzy, or light-headed fluttering, racing, or pounding heart, or feeling like it’s ‘skipping beats’"
* item[+].item[0].linkId = "p02-q01-VaccineType"
* item[=].item[=].answer.valueCoding.display = "Only flu vaccine"
* item[=].item[=].text = "Please confirm the vaccine(s) that you or your dependent (e.g., child) received 3 days ago"
* item[=].item[+].linkId = "p02-q02-SideEffects"
* item[=].item[=].answer.valueCoding.display = "Yes"
* item[=].item[=].text = "We would like to confirm your answer to the invitation text message. Did you experience any side effects after vaccination?"
* item[=].item[+].item[0].linkId = "p02-q03.1-WhoReceived"
* item[=].item[=].item[=].answer.valueCoding.display = "Myself"
* item[=].item[=].item[=].text = "Who received the vaccine?"
* item[=].item[=].item[+].linkId = "p02-q03.2-WhereReceived"
* item[=].item[=].item[=].answer.valueCoding.display = "Community vaccination centre"
* item[=].item[=].item[=].text = "Where did you/they go to receive your/their vaccination?"
* item[=].item[=].item[+].linkId = "p02-q03.3-Pregnant"
* item[=].item[=].item[=].answer.valueBoolean = false
* item[=].item[=].item[=].text = "Were you/they pregnant/Hapu at the time of your/their vaccination?"
* item[=].item[=].linkId = "p02-q03-SideEffectsScreening"
* item[=].linkId = "p02-Screening"
* item[=].text = "Screening"
* item[+].item.linkId = "p03-q01-SelectedSideEffects"
* item[=].item.answer.valueCoding.display = "None of the above"
* item[=].item.text = "Did you/they experience any of the following after vaccination? (choose all that apply)"
* item[=].linkId = "p03-EarlyOnsetReactions"
* item[=].text = "Early onset reactions"
* item[+].item[0].linkId = "p04-q01-ReactionsIntro"
* item[=].item[=].text = "Please choose all the reactions that you/they experienced, and if yes describe, on a scale from Minor, Mild, Moderate, Serious, to Severe. For your rating take into account levels of pain, how long symptoms lasted and impact on daily life."
* item[=].item[+].linkId = "p04-q02-InjectionSiteDisorder"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[=].text = "Injection site reaction (pain, redness, swelling, or itching at or near the injection site)"
* item[=].item[+].linkId = "p04-q04-Fever"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[=].text = "Fever (a temperature of 38°C or higher)"
* item[=].item[+].linkId = "p04-q06-Swelling"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[=].text = "Swelling of glands (i.e., lymph nodes)"
* item[=].item[+].linkId = "p04-q09-Chills"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[=].text = "Chills, shivering, or cold sweats"
* item[=].item[+].linkId = "p04-q11-Headaches"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[=].text = "Headaches"
* item[=].item[+].linkId = "p04-q13-Rash"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[=].text = "Rash (not at the injection site)"
* item[=].item[+].linkId = "p04-q15-AchesPains"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[=].text = "Aches and pains"
* item[=].item[+].linkId = "p04-q17-DigestiveDisorder"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[=].text = "Stomach symptoms (nausea, vomiting, diarrhoea, abdominal pain or loss of appetite)"
* item[=].item[+].linkId = "p04-q19-Fatigue"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[=].text = "Fatigue or tiredness"
* item[=].item[+].linkId = "p04-q21-ChestSymptoms"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[=].text = "Chest symptoms (chest pain/heaviness/tightness or heart palpitations/pounding/racing)"
* item[=].item[+].linkId = "p04-q23-DifficultyBreathing"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[=].text = "Difficulty breathing"
* item[=].item[+].linkId = "p04-q25-Dizziness"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[=].text = "Dizziness or feeling lightheaded"
* item[=].item[+].linkId = "p04-q27-OtherSymptoms"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[=].text = "Did you/they experience any symptoms that were not listed above?"
* item[=].linkId = "p04-Reactions"
* item[=].text = "Reactions"
* item[+].item[0].linkId = "p05-q01-MissedWork"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[=].text = "Did any of the symptoms that you/they reported cause you/them to miss work, study, or normal daily activities?"
* item[=].item[+].linkId = "p05-q02-MissedWorkDetail"
* item[=].item[=].answer.valueCoding.display = "Less than 1 day"
* item[=].item[=].text = "How many days did you miss?"
* item[=].linkId = "p05-DailyImpact"
* item[=].text = "Impact on daily activities"
* item[+].item[0].linkId = "p06-q01-SymptomRelief"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[=].text = "Did any of the symptoms cause you/them to seek advice or care from a healthcare professional?"
* item[=].item[+].linkId = "p06-q02-SymptomReliefDetail"
* item[=].item[=].answer[0].valueCoding.display = "Phone advice from a helpline (e.g.,  Healthline)"
* item[=].item[=].answer[+].valueCoding.display = "Whānau Ora navigator"
* item[=].item[=].text = "Please choose the type of advice or care you/they sought. Please choose all that apply"
* item[=].linkId = "p06-CareSought"
* item[=].text = "Medical advice/care sought"
* item[+].item[0].linkId = "p07-q01-OverallExperience"
* item[=].item[=].answer.valueCoding.display = "Average"
* item[=].item[=].text = "How would you/they rate the overall experience at the vaccination site? For your rating take into account informed consent process, staff helpfulness, vaccination site cleanliness etc."
* item[=].item[+].linkId = "p07-q02-Comments"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[=].text = "Do you/they have any comments about your/their vaccine experience?"
* item[=].item[+].linkId = "p07-q03-CommentsDetail"
* item[=].item[=].answer.valueString = "ASsA"
* item[=].item[=].text = "Please explain"
* item[=].linkId = "p07-VaccinationExperience"
* item[=].text = "Vaccination experience"
* item[+].linkId = "p08-Thanks"
* item[=].text = "Thank you for completing the Day 3 post vaccine survey, your answers have been submitted. You will receive your next survey 42 days after your vaccination. The data collected by these surveys will be made available online on the Health NZ website. Survey data provided online are not identifiable and individual responses are confidential."
* questionnaire = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/ActiveMonitoringDay3Survey"
* author.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* author.identifier.use = #official
* author.identifier.value = "ZJR6390"
* author.display = "No vaccine Curnow"
* author.type = "Patient"
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.use = #official
* subject.identifier.value = "ZJR6390"
* subject.display = "No vaccine Curnow"
* subject.type = "Patient"
* meta.lastUpdated = "2024-04-21T22:07:18.154Z"
* meta.versionId = "1"
* status = #completed