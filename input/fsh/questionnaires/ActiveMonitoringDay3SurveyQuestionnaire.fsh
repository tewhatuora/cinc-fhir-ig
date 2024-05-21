Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $sct = http://snomed.info/sct
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

Instance: ActiveMonitoringDay3Survey
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/ActiveMonitoringDay3Survey"
* identifier[0].use = #official
* identifier[=].value = "ActiveMonitoringDay3Survey"
* identifier[=].period.start = "2023-07-19"
* identifier[+].use = #temp
* identifier[=].value = "Questionnaire-ActiveMonitoring-Day3SurveyQuestionnaire"
* identifier[=].period.end = "2023-07-19"
* version = "0.2.2"
* name = "ActiveMonitoringDay3Survey"
* title = "Post Vaccine Symptom Check day 3 survey"
* status = #draft
* subjectType = #Patient
* date = "2023-08-23T22:13:19+00:00"
* publisher = "Te Whatu Ora"
* contact.name = "Te Whatu Ora"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.tewhatuora.govt.nz/"
* description = "Te Whatu Ora 3-day post Influenza/Covid-19 booster vaccination survey."
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* useContext.valueCodeableConcept.text = "Vaccination Side Effect Questionnaire"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* purpose = "Survey of side effects and overall experience of Influenza/COVID-19 Booster vaccination after 3 days."
* code = $sct#293104008 "Vaccine adverse reaction"
* item[0].linkId = "p01-Intro"
* item[=].prefix = "page 01"
* item[=].type = #display
* item[=].text = "This is the first of two surveys about your experience with receiving your vaccine. This survey will take approximately five minutes to complete. You will be asked about any reactions you had after your vaccination(s). If you did not have any there is also a section at the end for you to comment on any other parts of your vaccination experience. Your responses are important and will help contribute to the safety monitoring of vaccines in New Zealand. The information you provide is confidential and is protected by the Privacy Act 2020 and data security safeguards. Please remember this is a survey only, your answers will not result in a medical response to your situation. If you have any concerns about your health after your vaccination, call Healthline at 0800 611 116 or speak to your healthcare professional. If you experience any of the following symptoms, you should seek medical help urgently and tell them about your vaccinations: tightness, heaviness, discomfort, pressure or pain in your chest or neck difficulty breathing or catching your breath feeling faint, dizzy, or light-headed fluttering, racing, or pounding heart, or feeling like it’s ‘skipping beats’"
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<p>Kia ora</p><p>This is the first of two surveys about your experience with receiving your recent vaccination(s). This survey will take approximately five minutes to complete. You will be asked about any reactions you had after your vaccination(s). If you did not have any, there is also a section at the end for you to comment on any other parts of your vaccination experience. Your responses are important and will help contribute to the safety monitoring of vaccines in Aotearoa New Zealand. The information you provide is confidential and is protected by the Privacy Act 2020 and data security safeguards.</p><p>Please remember this is a survey only, your answers will not result in a medical response to your situation. If you have any concerns about your health after your vaccination, call Healthline at 0800 611 116 or speak to your healthcare professional.<p>If you experience any of the following symptoms, <u>you should seek medical help urgently</u> and tell them about your vaccinations: <ul><li>tightness, heaviness, discomfort, pressure or pain in your chest or neck</li><li>difficulty breathing or catching your breath</li><li>feeling faint, dizzy, or light-headed</li><li>fluttering, racing, or pounding heart, or feeling like it’s ‘skipping beats’</li></ul></p><p>If you need any help completing your survey you can call 0800 855 066 for assistance.</p>"
* item[+].linkId = "p02-Screening"
* item[=].prefix = "page 02"
* item[=].type = #group
* item[=].text = "Screening"
* item[=].item[0].linkId = "p02-q01-VaccineType"
* item[=].item[=].prefix = "page 02 question 1"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Please confirm the vaccine(s) that you or your dependent (e.g., child) received 3 days ago"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "COVID-19 and flu vaccines at the same time"
* item[=].item[=].answerOption[+].valueCoding.display = "Only flu vaccine"
* item[=].item[=].answerOption[+].valueCoding.display = "Only COVID-19 vaccine"
* item[=].item[=].answerOption[+].valueCoding.display = "Other vaccine"
* item[=].item[=].answerOption[+].valueCoding.display = "Was not vaccinated or do not recall"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[+].linkId = "p02-q02-SideEffects"
* item[=].item[=].prefix = "page 02 question 2"
* item[=].item[=].type = #choice
* item[=].item[=].text = "We would like to confirm your answer to the invitation text message. Did you experience any side effects after vaccination?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Yes"
* item[=].item[=].answerOption[+].valueCoding.display = "No"
* item[=].item[=].answerOption[+].valueCoding.display = "Can't remember"
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%validVaccine"
* item[=].item[+].linkId = "p02-q03-SideEffectsScreening"
* item[=].item[=].prefix = "page 02 question 3"
* item[=].item[=].type = #group
* item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%validVaccine and %experiencedSideEffects"
* item[=].item[=].item[0].linkId = "p02-q03.1-WhoReceived"
* item[=].item[=].item[=].prefix = "page 02 question 3.1"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].text = "Who received the vaccine?"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueCoding.display = "Myself"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "My dependent/whānau member"
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].item[+].linkId = "p02-q03.2-WhereReceived"
* item[=].item[=].item[=].prefix = "page 02 question 3.2"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].text = "Where did you/they go to receive your/their vaccination?"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerOption[0].valueCoding.display = "Community vaccination centre"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "General practice"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Pharmacy"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Mobile vaccination unit"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Hospital or emergency room"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].item[+].linkId = "p02-q03.3-Pregnant"
* item[=].item[=].item[=].prefix = "page 02 question 3.3"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].text = "Were you/they pregnant/Hapu at the time of your/their vaccination?"
* item[=].item[=].item[=].required = true
* item[+].linkId = "p03-EarlyOnsetReactions"
* item[=].prefix = "page 03"
* item[=].type = #group
* item[=].text = "Early onset reactions"
* item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "%validVaccine and %experiencedSideEffects"
* item[=].item[0].linkId = "p03-q01-SelectedSideEffects"
* item[=].item[=].prefix = "page 03 question 1"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Did you/they experience any of the following after vaccination? (choose all that apply)"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Anaphylaxis"
* item[=].item[=].answerOption[+].valueCoding.display = "Syncope (fainting)"
* item[=].item[=].answerOption[+].valueCoding.display = "Seizure/ convulsion"
* item[=].item[=].answerOption[+].valueCoding.display = "I don't know/ unsure"
* item[=].item[=].answerOption[+].valueCoding.display = "None of the above"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#check-box "Check-box"
* item[=].item[=].repeats = true
* item[=].item[+].linkId = "p03-q02-AnaphylaxisDelay"
* item[=].item[=].prefix = "page 03 question 2"
* item[=].item[=].type = #choice
* item[=].item[=].text = "How long after vaccination did anaphylaxis occur?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "0-5 minutes"
* item[=].item[=].answerOption[+].valueCoding.display = "6-10 minutes"
* item[=].item[=].answerOption[+].valueCoding.display = "11-15 minutes"
* item[=].item[=].answerOption[+].valueCoding.display = "16-20 minutes"
* item[=].item[=].answerOption[+].valueCoding.display = "21+ minutes"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p03-q01-SelectedSideEffects"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Anaphylaxis"
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p03-q03-SyncopeDelay"
* item[=].item[=].prefix = "page 03 question 3"
* item[=].item[=].type = #choice
* item[=].item[=].text = "How long after vaccination did syncope occur?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "0-5 minutes"
* item[=].item[=].answerOption[+].valueCoding.display = "6-10 minutes"
* item[=].item[=].answerOption[+].valueCoding.display = "11-15 minutes"
* item[=].item[=].answerOption[+].valueCoding.display = "16-20 minutes"
* item[=].item[=].answerOption[+].valueCoding.display = "21+ minutes"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p03-q01-SelectedSideEffects"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Syncope (fainting)"
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p03-q04-SeizureDelay"
* item[=].item[=].prefix = "page 03 question 4"
* item[=].item[=].type = #choice
* item[=].item[=].text = "How long after vaccination did the seizure/ convulsions occur?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "0-5 minutes"
* item[=].item[=].answerOption[+].valueCoding.display = "6-10 minutes"
* item[=].item[=].answerOption[+].valueCoding.display = "11-15 minutes"
* item[=].item[=].answerOption[+].valueCoding.display = "16-20 minutes"
* item[=].item[=].answerOption[+].valueCoding.display = "21+ minutes"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p03-q01-SelectedSideEffects"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Seizure/ convulsion"
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p03-q05-SeizureComorbidity"
* item[=].item[=].prefix = "page 03 question 5"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Did seizure/ convulsions occur with:"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Syncope (fainting)"
* item[=].item[=].answerOption[+].valueCoding.display = "Fever"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[=].answerOption[+].valueCoding.display = "I don't know"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p03-q01-SelectedSideEffects"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Seizure/ convulsion"
* item[=].item[=].enableBehavior = #all
* item[+].linkId = "p04-Reactions"
* item[=].prefix = "page 04"
* item[=].type = #group
* item[=].text = "Reactions"
* item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "%validVaccine and %experiencedSideEffects"
* item[=].item[0].linkId = "p04-q01-ReactionsIntro"
* item[=].item[=].prefix = "page 04 question 1"
* item[=].item[=].type = #display
* item[=].item[=].text = "Please choose all the reactions that you/they experienced, and if yes describe, on a scale from Minor, Mild, Moderate, Serious, to Severe. For your rating take into account levels of pain, how long symptoms lasted and impact on daily life."
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item[=].text.extension.valueString = "<p>Please choose all the reactions that you/they experienced. If yes, describe the reaction on a scale from minor, mild, moderate, serious, to severe.</p><p>For your rating take into account levels of pain, how long symptoms lasted and impact on daily life</p>"
* item[=].item[+].linkId = "p04-q02-InjectionSiteDisorder"
* item[=].item[=].prefix = "page 04 question 2"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Injection site reaction (pain, redness, swelling, or itching at or near the injection site)"
* item[=].item[=].required = true
* item[=].item[=].code = $sct#95376002 "Injection site disorder"
* item[=].item[+].linkId = "p04-q03-InjectionSiteSeverity"
* item[=].item[=].prefix = "page 04 question 3"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Injection site reaction severity"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Minor"
* item[=].item[=].answerOption[+].valueCoding.display = "Mild"
* item[=].item[=].answerOption[+].valueCoding.display = "Moderate"
* item[=].item[=].answerOption[+].valueCoding.display = "Serious"
* item[=].item[=].answerOption[+].valueCoding.display = "Severe"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p04-q02-InjectionSiteDisorder"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p04-q04-Fever"
* item[=].item[=].prefix = "page 04 question 4"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Fever (a temperature of 38°C or higher)"
* item[=].item[=].required = true
* item[=].item[=].code = $sct#386661006 "Fever or high temperature"
* item[=].item[+].linkId = "p04-q05-FeverSeverity"
* item[=].item[=].prefix = "page 04 question 5"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Temperature/fever severity"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Minor"
* item[=].item[=].answerOption[+].valueCoding.display = "Mild"
* item[=].item[=].answerOption[+].valueCoding.display = "Moderate"
* item[=].item[=].answerOption[+].valueCoding.display = "Serious"
* item[=].item[=].answerOption[+].valueCoding.display = "Severe"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p04-q04-Fever"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p04-q06-Swelling"
* item[=].item[=].prefix = "page 04 question 6"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Swelling of glands (i.e., lymph nodes)"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p04-q07-SwellingLocation"
* item[=].item[=].prefix = "page 04 question 7"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Where abouts did you experience swelling?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Same arm as vaccination"
* item[=].item[=].answerOption[+].valueCoding.display = "Opposite arm to vaccination"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p04-q06-Swelling"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p04-q08-SwellingSeverity"
* item[=].item[=].prefix = "page 04 question 8"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Swelling of glands severity"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Minor"
* item[=].item[=].answerOption[+].valueCoding.display = "Mild"
* item[=].item[=].answerOption[+].valueCoding.display = "Moderate"
* item[=].item[=].answerOption[+].valueCoding.display = "Serious"
* item[=].item[=].answerOption[+].valueCoding.display = "Severe"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p04-q06-Swelling"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p04-q09-Chills"
* item[=].item[=].prefix = "page 04 question 9"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Chills, shivering, or cold sweats"
* item[=].item[=].required = true
* item[=].item[=].code = $sct#274640006 "Chills, shivering or feeling cold"
* item[=].item[+].linkId = "p04-q10-ChillsSeverity"
* item[=].item[=].prefix = "page 04 question 10"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Chills/shivering/cold sweats severity"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Minor"
* item[=].item[=].answerOption[+].valueCoding.display = "Mild"
* item[=].item[=].answerOption[+].valueCoding.display = "Moderate"
* item[=].item[=].answerOption[+].valueCoding.display = "Serious"
* item[=].item[=].answerOption[+].valueCoding.display = "Severe"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p04-q09-Chills"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p04-q11-Headaches"
* item[=].item[=].prefix = "page 04 question 11"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Headaches"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p04-q12-HeadachesSeverity"
* item[=].item[=].prefix = "page 04 question 12"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Headache severity"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Minor"
* item[=].item[=].answerOption[+].valueCoding.display = "Mild"
* item[=].item[=].answerOption[+].valueCoding.display = "Moderate"
* item[=].item[=].answerOption[+].valueCoding.display = "Serious"
* item[=].item[=].answerOption[+].valueCoding.display = "Severe"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p04-q11-Headaches"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p04-q13-Rash"
* item[=].item[=].prefix = "page 04 question 13"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Rash (not at the injection site)"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p04-q14-RashSeverity"
* item[=].item[=].prefix = "page 04 question 14"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Rash severity"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Minor"
* item[=].item[=].answerOption[+].valueCoding.display = "Mild"
* item[=].item[=].answerOption[+].valueCoding.display = "Moderate"
* item[=].item[=].answerOption[+].valueCoding.display = "Serious"
* item[=].item[=].answerOption[+].valueCoding.display = "Severe"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p04-q13-Rash"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p04-q15-AchesPains"
* item[=].item[=].prefix = "page 04 question 15"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Aches and pains"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p04-q16-AchesPainsSeverity"
* item[=].item[=].prefix = "page 04 question 16"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Aches and pains severity"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Minor"
* item[=].item[=].answerOption[+].valueCoding.display = "Mild"
* item[=].item[=].answerOption[+].valueCoding.display = "Moderate"
* item[=].item[=].answerOption[+].valueCoding.display = "Serious"
* item[=].item[=].answerOption[+].valueCoding.display = "Severe"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p04-q15-AchesPains"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p04-q17-DigestiveDisorder"
* item[=].item[=].prefix = "page 04 question 17"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Stomach symptoms (nausea, vomiting, diarrhoea, abdominal pain or loss of appetite)"
* item[=].item[=].required = true
* item[=].item[=].code = $sct#53619000 "Disorder of digestive system"
* item[=].item[+].linkId = "p04-q18-DigestiveDisorderSeverity"
* item[=].item[=].prefix = "page 04 question 18"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Stomach symptoms severity"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Minor"
* item[=].item[=].answerOption[+].valueCoding.display = "Mild"
* item[=].item[=].answerOption[+].valueCoding.display = "Moderate"
* item[=].item[=].answerOption[+].valueCoding.display = "Serious"
* item[=].item[=].answerOption[+].valueCoding.display = "Severe"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p04-q17-DigestiveDisorder"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p04-q19-Fatigue"
* item[=].item[=].prefix = "page 04 question 19"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Fatigue or tiredness"
* item[=].item[=].required = true
* item[=].item[=].code = $sct#84229001 "Fatigue"
* item[=].item[+].linkId = "p04-q20-FatigueSeverity"
* item[=].item[=].prefix = "page 04 question 20"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Fatigue or tiredness severity"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Minor"
* item[=].item[=].answerOption[+].valueCoding.display = "Mild"
* item[=].item[=].answerOption[+].valueCoding.display = "Moderate"
* item[=].item[=].answerOption[+].valueCoding.display = "Serious"
* item[=].item[=].answerOption[+].valueCoding.display = "Severe"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p04-q19-Fatigue"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p04-q21-ChestSymptoms"
* item[=].item[=].prefix = "page 04 question 21"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Chest symptoms (chest pain/heaviness/tightness or heart palpitations/pounding/racing)"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p04-q22-ChestSymptomsSeverity"
* item[=].item[=].prefix = "page 04 question 22"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Chest symptoms severity"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Minor"
* item[=].item[=].answerOption[+].valueCoding.display = "Mild"
* item[=].item[=].answerOption[+].valueCoding.display = "Moderate"
* item[=].item[=].answerOption[+].valueCoding.display = "Serious"
* item[=].item[=].answerOption[+].valueCoding.display = "Severe"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p04-q21-ChestSymptoms"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p04-q23-DifficultyBreathing"
* item[=].item[=].prefix = "page 04 question 23"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Difficulty breathing"
* item[=].item[=].required = true
* item[=].item[=].code = $sct#230145002 "Difficulty breathing"
* item[=].item[+].linkId = "p04-q24-DifficultyBreathingSeverity"
* item[=].item[=].prefix = "page 04 question 24"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Difficulty breathing severity"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Minor"
* item[=].item[=].answerOption[+].valueCoding.display = "Mild"
* item[=].item[=].answerOption[+].valueCoding.display = "Moderate"
* item[=].item[=].answerOption[+].valueCoding.display = "Serious"
* item[=].item[=].answerOption[+].valueCoding.display = "Severe"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p04-q23-DifficultyBreathing"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p04-q25-Dizziness"
* item[=].item[=].prefix = "page 04 question 25"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Dizziness or feeling lightheaded"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p04-q26-DizzinessSeverity"
* item[=].item[=].prefix = "page 04 question 26"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Dizziness or lightheaded severity"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Minor"
* item[=].item[=].answerOption[+].valueCoding.display = "Mild"
* item[=].item[=].answerOption[+].valueCoding.display = "Moderate"
* item[=].item[=].answerOption[+].valueCoding.display = "Serious"
* item[=].item[=].answerOption[+].valueCoding.display = "Severe"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p04-q25-Dizziness"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p04-q27-OtherSymptoms"
* item[=].item[=].prefix = "page 04 question 27"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Did you/they experience any symptoms that were not listed above?"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p04-q28-OtherSymptomsDetail"
* item[=].item[=].prefix = "page 04 question 28"
* item[=].item[=].type = #string
* item[=].item[=].text = "Please explain"
* item[=].item[=].required = true
* item[=].item[=].enableWhen.question = "p04-q27-OtherSymptoms"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[+].linkId = "p05-DailyImpact"
* item[=].prefix = "page 05"
* item[=].type = #group
* item[=].text = "Impact on daily activities"
* item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "%validVaccine and %experiencedSideEffects"
* item[=].item[0].linkId = "p05-q01-MissedWork"
* item[=].item[=].prefix = "page 05 question 1"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Did any of the symptoms that you/they reported cause you/them to miss work, study, or normal daily activities?"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p05-q02-MissedWorkDetail"
* item[=].item[=].prefix = "page 05 question 2"
* item[=].item[=].type = #choice
* item[=].item[=].text = "How many days did you miss?"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Less than 1 day"
* item[=].item[=].answerOption[+].valueCoding.display = "1 day"
* item[=].item[=].answerOption[+].valueCoding.display = "2 days"
* item[=].item[=].answerOption[+].valueCoding.display = "3 or more days"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p05-q01-MissedWork"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[+].linkId = "p06-CareSought"
* item[=].prefix = "page 06"
* item[=].type = #group
* item[=].text = "Medical advice/care sought"
* item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "%validVaccine and %experiencedSideEffects"
* item[=].item[0].linkId = "p06-q01-SymptomRelief"
* item[=].item[=].prefix = "page 06 question 1"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Did any of the symptoms cause you/them to seek advice or care from a healthcare professional?"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p06-q02-SymptomReliefDetail"
* item[=].item[=].prefix = "page 06 question 2"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Please choose the type of advice or care you/they sought. Please choose all that apply"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Phone advice from a helpline (e.g.,  Healthline)"
* item[=].item[=].answerOption[+].valueCoding.display = "Care from a GP clinic (including the clinic  nurse, a doctor, or a phone call with a  person at the GP clinic)."
* item[=].item[=].answerOption[+].valueCoding.display = "Visit to a hospital emergency department"
* item[=].item[=].answerOption[+].valueCoding.display = "Māori Health Provider"
* item[=].item[=].answerOption[+].valueCoding.display = "Rongoā clinic"
* item[=].item[=].answerOption[+].valueCoding.display = "Whānau Ora navigator"
* item[=].item[=].answerOption[+].valueCoding.display = "Pharmacy"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[=].enableWhen.question = "p06-q01-SymptomRelief"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].repeats = true
* item[+].linkId = "p07-VaccinationExperience"
* item[=].prefix = "page 07"
* item[=].type = #group
* item[=].text = "Vaccination experience"
* item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "%validVaccine"
* item[=].item[0].linkId = "p07-q01-OverallExperience"
* item[=].item[=].prefix = "page 07 question 1"
* item[=].item[=].type = #choice
* item[=].item[=].text = "How would you/they rate the overall experience at the vaccination site? For your rating take into account informed consent process, staff helpfulness, vaccination site cleanliness etc."
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item[=].text.extension.valueString = "<p>How would you/they rate the overall experience at the vaccination site?</p><p>For your rating take into account informed consent process, staff helpfulness, vaccination site cleanliness, etc.</p>"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Very poor"
* item[=].item[=].answerOption[+].valueCoding.display = "Poor"
* item[=].item[=].answerOption[+].valueCoding.display = "Average"
* item[=].item[=].answerOption[+].valueCoding.display = "Good"
* item[=].item[=].answerOption[+].valueCoding.display = "Excellent"
* item[=].item[+].linkId = "p07-q02-Comments"
* item[=].item[=].prefix = "page 07 question 2"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Do you/they have any comments about your/their vaccine experience?"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p07-q03-CommentsDetail"
* item[=].item[=].prefix = "page 07 question 3"
* item[=].item[=].type = #text
* item[=].item[=].text = "Please explain"
* item[=].item[=].required = true
* item[=].item[=].enableWhen.question = "p07-q02-Comments"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[+].linkId = "p08-Thanks"
* item[=].prefix = "page 08"
* item[=].type = #display
* item[=].text = "Thank you for completing the Day 3 post vaccine survey, your answers have been submitted. You will receive your next survey 42 days after your vaccination. The data collected by these surveys will be made available online on the Health NZ website. Survey data provided online are not identifiable and individual responses are confidential."
* item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].text.extension.valueString = "<p>Thank you for completing the Day 3 post vaccine survey, your answers have been submitted. You will receive your next survey 42 days after your vaccination. The data collected by these surveys will be made available online on the Health NZ website. Survey data provided online are not identifiable and individual responses are confidential.</p><p>Ngā mihi</p><p>Health New Zealand</p>"
* item[=].extension.valueCodeableConcept.coding.code = #post-submit
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "vaccineReceived"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId='p02-Screening').item.first().answer.valueCoding.display"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "validVaccine"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%vaccineReceived = 'COVID-19 and flu vaccines at the same time' or %vaccineReceived = 'Only flu vaccine' or %vaccineReceived = 'Only COVID-19 vaccine'"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "experiencedSideEffects"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId='p02-Screening').item.where(linkId='p02-q02-SideEffects').answer.valueCoding.display = 'Yes' or %resource.item.where(linkId='p02-Screening').item.where(linkId='p02-q02-SideEffects').answer.valueCoding.display = 'Can\\'t remember'"