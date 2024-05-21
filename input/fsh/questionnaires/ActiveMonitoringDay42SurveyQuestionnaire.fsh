Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $sct = http://snomed.info/sct
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

Instance: ActiveMonitoringDay42Survey
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/ActiveMonitoringDay42Survey"
* identifier[0].use = #official
* identifier[=].value = "ActiveMonitoringDay42Survey"
* identifier[=].period.start = "2023-07-19"
* identifier[+].use = #temp
* identifier[=].value = "Questionnaire-ActiveMonitoring-Day42SurveyQuestionnaire"
* identifier[=].period.end = "2023-07-19"
* version = "0.2.2"
* name = "ActiveMonitoringDay42Survey"
* title = "Post Vaccine Symptom Check day 42 survey"
* status = #draft
* subjectType = #Patient
* date = "2023-08-23T22:13:19+00:00"
* publisher = "Te Whatu Ora"
* contact.name = "Te Whatu Ora"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.tewhatuora.govt.nz/"
* description = "Te Whatu Ora 42-day post Influenza/Covid-19 booster vaccination survey."
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* useContext.valueCodeableConcept.text = "Vaccination Side Effect Questionnaire"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* purpose = "Survey of side effects and overall experience of Influenza/COVID-19 Booster vaccination after 42 days."
* code = $sct#293104008 "Vaccine adverse reaction"
* item[0].type = #string
* item[=].linkId = "p00-q01"
* item[=].required = false
* item[=].extension.valueBoolean = true
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[+].linkId = "p01-Intro"
* item[=].prefix = "page 01"
* item[=].type = #display
* item[=].text = "Kia ora This is second of two surveys about your vaccination experience. This survey will take approximately two minutes to complete. You will be asked about any symptoms you had after your vaccination. There is also a section at the end for you to comment on any other parts of the vaccine experience. Your responses are important and will help contribute to the safety monitoring of vaccines in New Zealand. The information you provide is confidential and is protected by the Privacy Act 2020 and data security safeguards. Please remember this is a survey only, your answers will not result in a medical response to your situation. If you have any concerns about your health after your vaccination, call Healthline at 0800 611 116 or speak to your healthcare professional. If you experience any of the following symptoms, you should seek medical help urgently and tell them about your vaccination: tightness, heaviness, discomfort, pressure or pain in your chest or neck difficulty breathing or catching your breath feeling faint, dizzy, or light-headed fluttering, racing, or pounding heart, or feeling like it’s ‘skipping beats’"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<p>Kia ora</p><p>This is the second of two surveys about your vaccination experience. This survey will take approximately two minutes to complete. You will be asked about any reactions you had after your vaccination. There is also a section at the end for you to comment on any other parts of the vaccine experience. Your responses are important and will help contribute to the safety monitoring of vaccines in Aotearoa New Zealand. The information you provide is confidential and is protected by the Privacy Act 2020 and data security safeguards.</p><p>Please remember this is a survey only, your answers will not result in a medical response to your situation. If you have any concerns about your health after your vaccination, call Healthline at 0800 611 116 or speak to your healthcare professional.<p>If you experience any of the following symptoms, <u>you should seek medical help urgently</u> and tell them about your vaccinations: <ul><li>tightness, heaviness, discomfort, pressure or pain in your chest or neck</li><li>difficulty breathing or catching your breath</li><li>feeling faint, dizzy, or light-headed</li><li>fluttering, racing, or pounding heart, or feeling like it’s ‘skipping beats’</li></ul></p><p>If you need any help completing your survey you can call 0800 855 066 for assistance.</p>"
* item[+].linkId = "p02-Advice"
* item[=].prefix = "page 02"
* item[=].type = #group
* item[=].text = "Seeking advice"
* item[=].item.linkId = "p02-q01-MedicalAdviceSought"
* item[=].item.prefix = "page 02 question 1"
* item[=].item.type = #choice
* item[=].item.text = "Since the day 3 survey have you or your dependent sought medical help/ advice related to your vaccination? Choose all that apply"
* item[=].item.required = true
* item[=].item.answerOption[0].valueCoding.display = "Phone advice from a helpline (e.g., Healthline)"
* item[=].item.answerOption[+].valueCoding.display = "Care from a GP clinic (including the clinic  nurse, a doctor, or a phone call with a  person at the GP clinic)."
* item[=].item.answerOption[+].valueCoding.display = "Visit to a hospital emergency department"
* item[=].item.answerOption[+].valueCoding.display = "Rongoā clinic"
* item[=].item.answerOption[+].valueCoding.display = "Whānau Ora navigator"
* item[=].item.answerOption[+].valueCoding.display = "Māori Health Provider"
* item[=].item.answerOption[+].valueCoding.display = "Pharmacy"
* item[=].item.answerOption[+].valueCoding.display = "Other"
* item[=].item.answerOption[+].valueCoding.display = "Did not seek any medical advice"
* item[=].item.repeats = true
* item[+].linkId = "p03-Diagnoses"
* item[=].prefix = "page 03"
* item[=].type = #group
* item[=].text = "Medical diagnoses"
* item[=].required = true
* item[=].item[0].linkId = "p03-q01-ConditionsDiagnosed"
* item[=].item[=].prefix = "page 03 question 1"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Since the day 3 survey, have you/they been diagnosed with any medical conditions that a medical professional has attributed to your/their vaccination?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "No, you/they have not been diagnosed with a medical condition attributed to vaccination"
* item[=].item[=].answerOption[+].valueCoding.display = "Yes, You/they have been diagnosed with a medical condition attributed to vaccination"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[+].linkId = "p03-q02-ConditionNames"
* item[=].item[=].prefix = "page 03 question 2"
* item[=].item[=].type = #string
* item[=].item[=].text = "Please answer ONLY with the name of the condition(s)."
* item[=].item[=].required = true
* item[=].item[=].enableWhen.question = "p03-q01-ConditionsDiagnosed"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Yes, You/they have been diagnosed with a medical condition attributed to vaccination"
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p03-q03-CARMSubmitted"
* item[=].item[=].prefix = "page 03 question 3"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Have you/ they had a Centre for Adverse Reactions Monitoring (CARM) report submitted for your/their diagnosis"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Yes"
* item[=].item[=].answerOption[+].valueCoding.display = "No"
* item[=].item[=].answerOption[+].valueCoding.display = "No - I did not know about reporting"
* item[=].item[=].answerOption[+].valueCoding.display = "Unsure"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p03-q01-ConditionsDiagnosed"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Yes, You/they have been diagnosed with a medical condition attributed to vaccination"
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p03-q04-ACCClaim"
* item[=].item[=].prefix = "page 03 question 4"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Has an ACC claim been made for your/their diagnosis"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Yes"
* item[=].item[=].answerOption[+].valueCoding.display = "No"
* item[=].item[=].answerOption[+].valueCoding.display = "No - I did not know about making an ACC claim"
* item[=].item[=].answerOption[+].valueCoding.display = "Unsure"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p03-q01-ConditionsDiagnosed"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Yes, You/they have been diagnosed with a medical condition attributed to vaccination"
* item[=].item[=].enableBehavior = #all
* item[+].linkId = "p04-Thanks"
* item[=].prefix = "page 04"
* item[=].type = #display
* item[=].text = "Thank you for completing the Day 42 post vaccine survey, your answers have been submitted. This is your final survey for your COVID-19 and flu vaccines. Your responses help Health New Zealand monitor the safety of the COVID-19 and flu vaccines. The information you provided is protected by the Privacy Act 2020 and by the safeguards we have in place. The data collected by these surveys will be made available online on the Health NZ website. Survey data provided online are not identifiable and individual responses are confidential. Ngā mihi, Health New Zealand"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<p>Thank you for completing the Day 42 post vaccine survey, your answers have been submitted. This is your final survey for your COVID-19 and flu vaccines. Your responses help Health New Zealand monitor the safety of the COVID-19 and flu vaccines. The information you provided is protected by the Privacy Act 2020 and by the safeguards we have in place. The data collected by these surveys will be made available online on the Health NZ website. Survey data provided online are not identifiable and individual responses are confidential.</p><p>Ngā mihi</p><p>Health New Zealand</p>"
* item[=].extension.valueCodeableConcept.coding.code = #post-submit
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"