Alias: $sct = http://snomed.info/sct
Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type

Instance: ActiveMonitoringDay42Survey
InstanceOf: Questionnaire
Usage: #example

* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/ActiveMonitoringDay42Survey"

* identifier[0].use = #official
* identifier[=].value = "ActiveMonitoringDay42Survey"
* identifier[=].period.start = "2023-07-19"
* identifier[+].use = #temp
* identifier[=].value = "Questionnaire-ActiveMonitoring-Day42SurveyQuestionnaire"
* identifier[=].period.end = "2023-07-19"

* version = "0.1.6"
* name = "ActiveMonitoringDay7Survey"
* title = "Influenza and COVID-19 Booster Vaccination 42 Day Review Questionnaire"
* status = #draft
* subjectType = #Patient
* publisher = "Te Whatu Ora"
* contact.name = "Te Whatu Ora"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.tewhatuora.govt.nz/"
* description = "Te Whatu Ora 42-day post Influenza/Covid-19 booster vaccination survey."
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* useContext.valueCodeableConcept.text = "Vaccination Side Effect Questionnaire"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* purpose = "Survey of side effects and overall experience of Influenza/COVID-19 Booster vaccination after 42 days."
* code = $sct#293104008 "Vaccine adverse reaction"

* item[0].type = #display
* item[=].linkId = "p01"
* item[=].text = "This is the final survey about your vaccine experience. This survey will take approximately five minutes to complete. There is a section at  the end for you to comment on any parts of the vaccine experience that are not covered in the questionnaire."
* item[+].type = #choice
* item[=].linkId = "4230730008382"
* item[=].text = "Did you receive a dose of the COVID-19  bivalent or flu vaccine about six weeks ago?"
* item[=].required = true
* item[=].answerOption[0].valueCoding.display = "Yes, COVID-19 booster"
* item[=].answerOption[+].valueCoding.display = "Yes, flu"
* item[=].answerOption[+].valueCoding.display = "Yes, both"
* item[=].answerOption[+].valueCoding.display = "No"
* item[+].item[0].type = #choice
* item[=].item[=].linkId = "2671977568171"
* item[=].item[=].text = "Did you respond to the day 7 survey?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Yes"
* item[=].item[=].answerOption[+].valueCoding.display = "No"
* item[=].item[=].answerOption[+].valueCoding.display = "Unsure"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "6897391418044"
* item[=].item[=].text = "Why did you not respond to the day 7 survey? Select all that apply"
* item[=].item[=].enableWhen.question = "2671977568171"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "No"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding.display = "Did not have enough time"
* item[=].item[=].answerOption[+].valueCoding.display = "Survey was too long"
* item[=].item[=].answerOption[+].valueCoding.display = "Did not understand the questions"
* item[=].item[=].answerOption[+].valueCoding.display = "Did not receive a day 7 survey"
* item[=].item[=].answerOption[+].valueCoding.display = "Forgot to respond"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "2323186421000"
* item[=].item[=].text = "Please specify."
* item[=].item[=].enableWhen.question = "6897391418044"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[=].required = true
* item[=].type = #group
* item[=].linkId = "1700498446480"
* item[=].text = "Vaccine Administration"
* item[=].enableWhen[0].question = "4230730008382"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.display = "Yes, flu"
* item[=].enableWhen[+].question = "4230730008382"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.display = "Yes, COVID-19 booster"
* item[=].enableWhen[+].question = "4230730008382"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.display = "Yes, both"
* item[=].enableBehavior = #any
* item[+].item[0].type = #text
* item[=].item[=].linkId = "4719432265777"
* item[=].item[=].text = "Please specify."
* item[=].item[=].enableWhen.question = "6824147495770"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[=].enableBehavior = #all
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "5707843053691"
* item[=].item[=].text = "Did you report experiencing any reactions to  your vaccine on the day 7 survey?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding.display = "Yes"
* item[=].item[=].answerOption[+].valueCoding.display = "No"
* item[=].item[=].answerOption[+].valueCoding.display = "Unsure"
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "1733024660751"
* item[=].item[=].text = "Are you still experiencing those reactions  reported on the day 7 survey?"
* item[=].item[=].enableWhen.question = "5707843053691"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Yes"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding.display = "Yes"
* item[=].item[=].answerOption[+].valueCoding.display = "No"
* item[=].item[=].answerOption[+].valueCoding.display = "Unsure"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "589554939985"
* item[=].item[=].text = "Since the last survey have you sought medical help/ advice related to your vaccination?"
* item[=].item[=].repeats = false
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "6824147495770"
* item[=].item[=].text = "Please select all that apply"
* item[=].item[=].enableWhen.question = "589554939985"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding.display = "Phone advice from a helpline (e.g.  Healthline)"
* item[=].item[=].answerOption[+].valueCoding.display = "Care from a GP clinic (including the clinic  nurse, a doctor, or a phone call with a  person at the GP clinic)."
* item[=].item[=].answerOption[+].valueCoding.display = "Visit to a hospital emergency department"
* item[=].item[=].answerOption[+].valueCoding.display = "Marae"
* item[=].item[=].answerOption[+].valueCoding.display = "Rongoā clinic"
* item[=].item[=].answerOption[+].valueCoding.display = "Whānau Ora navigator"
* item[=].item[=].answerOption[+].valueCoding.display = "Māori Health Provider"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].type = #group
* item[=].linkId = "9113162268784"
* item[=].text = "Adverse Reactions"
* item[=].enableWhen[0].question = "4230730008382"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.display = "Yes, COVID-19 booster"
* item[=].enableWhen[+].question = "4230730008382"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.display = "Yes, flu"
* item[=].enableWhen[+].question = "4230730008382"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.display = "Yes, both"
* item[=].enableBehavior = #any
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "2471823089400"
* item[=].item[=].text = "Since the day 7 survey, have you been diagnosed by a medical professional with a medical condition?"
* item[=].item[=].required = true
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "4654015440638"
* item[=].item[=].text = "Please select all that apply"
* item[=].item[=].enableWhen.question = "2471823089400"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = $sct#40956001 "Guillain-Barré syndrome (GBS)"
* item[=].item[=].answerOption[+].valueCoding = $sct#193093009 "Bell’s palsy"
* item[=].item[=].answerOption[+].valueCoding = $sct#21018002 "nflamed nerves or nerve degradation (Neuritis or Neuropathy)"
* item[=].item[=].answerOption[+].valueCoding = $sct#81308009 "Any other neurological condition"
* item[=].item[=].answerOption[+].valueCoding = $sct#91175000 "Seizures"
* item[=].item[=].answerOption[+].valueCoding = $sct#41497008 "Febrile seizures"
* item[=].item[=].answerOption[+].valueCoding = $sct#50920009 "Myocarditis"
* item[=].item[=].answerOption[+].valueCoding = $sct#3238004 "Pericarditis"
* item[=].item[=].answerOption[+].valueCoding = $sct#49601007 "Other Heart issues"
* item[=].item[=].answerOption[+].valueCoding = $sct#27550009 "Blood vessel issues"
* item[=].item[=].answerOption[+].valueCoding.display = "Blood and lymphatic system disorders"
* item[=].item[=].answerOption[+].valueCoding = $sct#414029004 "Immune system disorders"
* item[=].item[=].answerOption[+].valueCoding = $sct#39579001 "Anaphylaxis (severe allergic reaction)"
* item[=].item[=].answerOption[+].valueCoding = $sct#385627004 "Cellulitis (skin infection)"
* item[=].item[=].answerOption[+].valueCoding.display = "Diagnosis of any other new conditions"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "6178094557440"
* item[=].item[=].text = "Please specify which other conditions."
* item[=].item[=].enableWhen.question = "4654015440638"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Diagnosis of any other new conditions"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "9046565619662"
* item[=].item[=].text = "Since seeking medical help, has the issue  gone away, or is being managed successfully?"
* item[=].item[=].enableWhen.question = "2471823089400"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p03-q03-MissedActivities"
* item[=].item[=].text = "Have you missed any days of work, study, or normal daily activities as a result of the  diagnosis?"
* item[=].item[=].enableWhen.question = "2471823089400"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].required = true
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "p03-q03-1-MissedActivities.Period"
* item[=].item[=].text = "How many days did you miss?"
* item[=].item[=].enableWhen.question = "p03-q03-MissedActivities"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding.display = "Less than 1 day"
* item[=].item[=].answerOption[+].valueCoding.display = "1 day"
* item[=].item[=].answerOption[+].valueCoding.display = "2 days"
* item[=].item[=].answerOption[+].valueCoding.display = "3 days or more"
* item[=].type = #group
* item[=].linkId = "6016703092774"
* item[=].text = "Rare Diagnoses"
* item[=].enableWhen[0].question = "4230730008382"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.display = "Yes, COVID-19 booster"
* item[=].enableWhen[+].question = "4230730008382"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.display = "Yes, flu"
* item[=].enableWhen[+].question = "4230730008382"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.display = "Yes, both"
* item[=].enableBehavior = #any
* item[+].item.type = #choice
* item[=].item.linkId = "4029322497918"
* item[=].item.text = "Since receiving the vaccine, have you been  diagnosed with COVID-19 or flu?"
* item[=].item.required = true
* item[=].item.repeats = false
* item[=].item.answerOption[0].valueCoding.display = "Yes, COVID-19"
* item[=].item.answerOption[+].valueCoding.display = "Yes, flu"
* item[=].item.answerOption[+].valueCoding.display = "Yes, Both"
* item[=].item.answerOption[+].valueCoding.display = "Yes, but don’t know which one"
* item[=].item.answerOption[+].valueCoding.display = "No"
* item[=].type = #group
* item[=].linkId = "6985526672169"
* item[=].text = "Virus Infection"
* item[=].enableWhen[0].question = "4230730008382"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.display = "Yes, COVID-19 booster"
* item[=].enableWhen[+].question = "4230730008382"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.display = "Yes, flu"
* item[=].enableWhen[+].question = "4230730008382"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.display = "Yes, both"
* item[=].enableBehavior = #any
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "6916786432547"
* item[=].item[=].text = "Do you have any other comments about your  experience?"
* item[=].item[=].required = true
* item[=].item[+].type = #text
* item[=].item[=].linkId = "9011858129576"
* item[=].item[=].text = "Please Explain"
* item[=].item[=].enableWhen.question = "6916786432547"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "4125520410382"
* item[=].text = "Vaccine Experience"
* item[=].enableWhen[0].question = "4230730008382"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.display = "Yes, COVID-19 booster"
* item[=].enableWhen[+].question = "4230730008382"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.display = "Yes, flu"
* item[=].enableWhen[+].question = "4230730008382"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.display = "Yes, both"
* item[=].enableBehavior = #any
* item[=].required = true
* item[+].type = #display
* item[=].linkId = "p05"
* item[=].text = "Thank you for completing the Day 42 survey. Your answers have been submitted. Your responses will help contribute to the safety  monitoring of the vaccine(s) you received. The data collected by these surveys will be made publicly available once enough data has been  collected. The information you provided is protected by the Privacy act of 2020 and by the safeguards we have in place.  Please remember this is a survey only and your answers will not result in a medical response. If you have any concerns about your health,  ring Healthline at 0800 611 116 or speak to your healthcare professional. If you experience any of these symptoms of myocarditis and pericarditis: tightness, heaviness, discomfort, pressure or pain in your chest or  neck; difficulty breathing or catching your breath; feeling faint, dizzy, or light-headed; fluttering, racing, or pounding heart, or feeling like it's  'skipping beats', seek medical help promptly and mention your vaccination."
* item[=].enableWhen.question = "4230730008382"
* item[=].enableWhen.operator = #exists
* item[=].enableWhen.answerBoolean = true
* item[=].enableBehavior = #all
