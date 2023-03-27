Instance: AntiViralEligibilityQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
* id = "Questionnaire-AntiViralEligibilityQuestionnaire"
* identifier.period.start = "2023-03-07"
* identifier.use = #usual
* identifier.value = "QuestionTemplate-AntiViral-Eligibility"
* item[0].text = "Current Date/Time"
* item[=].type = #dateTime
* item[=].linkId = "CurrentDate"
* item[=].repeats = false
* item[=].required = true
* item[=].item.text = "Current date/time"
* item[=].item.type = #display
* item[=].item.linkId = "CurrentDateTime_helpText"
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"
* item[+].text = "Date Review Performed"
* item[=].linkId = "ReviewDate"
* item[=].type = #date
* item[=].repeats = false
* item[=].required = true
* item[=].readOnly = false
* item[=].item.text = "The date that the review was performed"
* item[=].item.type = #display
* item[=].item.linkId = "ReviewDate_helpText"
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"
* item[+].text = "Is the patient a probable or confirmed COVID-19 case?"
* item[=].linkId = "COVID19-Positive"
* item[=].type = #choice
* item[=].item.text = "Please indicate if the patient is a confirmed or probable COVID-19 case. Determined by a test (RAT or PCR) or an assesment."
* item[=].item.type = #display
* item[=].item.linkId = "COVID19-Positive_helpText"
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"
* item[=].answerOption[0].valueCoding.display = "Yes"
* item[=].answerOption[+].valueCoding.display = "No"
* item[=].required = true
* item[+].text = "When did the patient's symptoms start?"
* item[=].linkId = "SymptomsStart"
* item[=].type = #choice
* item[=].required = true
* item[=].enableWhen.question = "COVID19-Positive"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding.display = "Yes"
* item[=].enableBehavior = #all
* item[=].answerOption[0].valueCoding.display = "Within the last 5 days (if considering nirmatrelvir with ritonavir or molnupiravir)"
* item[=].answerOption[+].valueCoding.display = "Within the last 7 days (if considering remdesivir)"
* item[=].answerOption[+].valueCoding.display = "More than 7 days ago"
* item[+].text = "The patient requires supplemental oxygen"
* item[=].linkId = "supoxygen"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding.display = "Yes"
* item[=].answerOption[+].valueCoding.display = "No"
* item[=].repeats = false
* item[=].required = true
* item[=].readOnly = false
* item[+].text = "The Patient:"
* item[=].linkId = "criteria"
* item[=].type = #choice
* item[=].required = true
* item[=].repeats = false
* item[=].answerOption[0].valueCoding.display = "is immunocompromised* and not expected to reliably mount an adequate immune response to COVID-19 vaccination or SARS-CoV-2 infection, regardless of vaccination status"
* item[=].answerOption[+].valueCoding.display = "has Down syndrome"
* item[=].answerOption[+].valueCoding.display = "has sickle cell disease"
* item[=].answerOption[+].valueCoding.display = "has had a previous admission to critical or high dependency care as a result of COVID-19"
* item[=].answerOption[+].valueCoding.display = "is 65 years old or older"
* item[=].answerOption[+].valueCoding.display = "is 50 years old or older and is of Māori or Pacific ethnicity"
* item[=].answerOption[+].valueCoding.display = "is 50 years old or older and has not completed a primary course of vaccination **"
* item[=].answerOption[+].valueCoding.display = "has 3 or more high-risk conditions, as defined by the Ministry of Health ***"
* item[=].answerOption[+].valueCoding.display = "none of the above"
* item[+].linkId = "eligible-no"
* item[=].type = #choice
* item[=].required = false
* item[=].text = "No - the patient IS NOT eligible for COVID-19 Antivirals"
* item[=].enableWhen[0].question = "SymptomsStart"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.display = "More than 7 days ago"
* item[=].enableWhen[+].question = "criteria"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.display = "none of the above"
* item[=].enableWhen[+].question = "supoxygen"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.display = "Yes"
* item[=].enableBehavior = #any
* item[=].answerOption.valueCoding.display = "confirm"
* item[+].linkId = "eligible-yes"
* item[=].type = #choice
* item[=].required = false
* item[=].text = "Yes - the patient IS eligible for COVID-19 Antivirals"
* item[=].enableWhen[0].question = "SymptomsStart"
* item[=].enableWhen[=].operator = #!=
* item[=].enableWhen[=].answerCoding.display = "More than 7 days ago"
* item[=].enableWhen[+].question = "criteria"
* item[=].enableWhen[=].operator = #!=
* item[=].enableWhen[=].answerCoding.display = "none of the above"
* item[=].enableWhen[+].question = "supoxygen"
* item[=].enableWhen[=].operator = #!=
* item[=].enableWhen[=].answerCoding.display = "Yes"
* item[=].enableBehavior = #all
* item[=].answerOption.valueCoding.display = "confirm"
* item[+].linkId = "PharmacistInformation"
* item[=].type = #group
* item[=].text = "Please provide pharmacist details"
* item[=].item[0].text = "Pharmacist Name"
* item[=].item[=].linkId = "PharmacistName"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[+].text = "Pharmacist ID"
* item[=].item[=].linkId = "PharmacistID"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[+].linkId = "PharmacyInformation"
* item[=].type = #group
* item[=].text = "Please provide details about the pharmacy organisation"
* item[=].item[0].text = "Pharmacy Name"
* item[=].item[=].linkId = "PharmacyName"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[+].text = "Pharmacy ID"
* item[=].item[=].linkId = "PharmacyID"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[+].linkId = "PharmacyAddress"
* item[=].item[=].type = #group
* item[=].item[=].text = "Pharmacy address details"
* item[=].item[=].item[0].text = "Street number + Street Name"
* item[=].item[=].item[=].linkId = "StreetNumberName"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[+].text = "Suburb"
* item[=].item[=].item[=].linkId = "Suburb"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[+].text = "Town/City"
* item[=].item[=].item[=].linkId = "TownCity"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[+].text = "Postcode"
* item[=].item[=].item[=].linkId = "Postcode"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[+].linkId = "GeneralPracticeInformation"
* item[=].type = #group
* item[=].text = "Please provide details about the patient's general practice"
* item[=].item[0].text = "General Practitioner Name"
* item[=].item[=].linkId = "GPName"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].text = "General Practice EDI"
* item[=].item[=].linkId = "GPEDI"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[+].text = "Send note to GP Inbox?"
* item[=].linkId = "SendToGP"
* item[=].type = #boolean
* item[=].required = false
* item[=].initial.valueBoolean = false
* purpose = "Anti Viral medication eligibility questionnaire"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* description = "A questionnaire to capture eligibility criteria for anti viral medication"
* title = "AntiViral Eligibility Review"
* subjectType = #Patient
* version = "1.0.0"
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/Questionnaire-AntiViralEligibilityQuestionnaire"
* meta.lastUpdated = "2023-03-14T04:51:54.576Z"
* meta.versionId = "2"
* name = "AntiViralEligibilityQuestionTemplate"
* publisher = "Te Whatu Ora"
* useContext.valueCodeableConcept.text = "AntiViral Eligibility Assessment"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#workflow "Workflow Setting"
* status = #draft