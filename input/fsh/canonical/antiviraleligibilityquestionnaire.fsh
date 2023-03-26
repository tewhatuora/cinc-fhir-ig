Instance: AntiViralEligibilityQuestionnaireExample
InstanceOf: Questionnaire
Usage: #definition
* id = "Questionnaire-AntiViralEligibilityQuestionnaire"
* identifier.period.start = "2023-03-07"
* identifier.use = #usual
* identifier.value = "QuestionTemplate-AntiViral-Eligibility"
* item[0].repeats = false
* item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.linkId = "CurrentDateTime_helpText"
* item[=].item.text = "Current date and time"
* item[=].item.type = #display
* item[=].linkId = "CurrentDateTime"
* item[=].readOnly = false
* item[=].text = "Date"
* item[=].type = #dateTime
* item[=].required = true
* item[+].repeats = false
* item[=].linkId = "ReviewDateTime"
* item[=].readOnly = false
* item[=].text = "Date Review Undertaken"
* item[=].type = #date
* item[=].required = true
* item[+].item[0].linkId = "COVID19-Positive_helpText1"
* item[=].item[=].text = "The transition from PCR to RATs as a primary mode of testing requires the clinical criteria to be applied thoughtfully and practically alongside the Case Definition. The case definitions were based upon PCR tests being the primary mode of diagnosis and the focus has now changed to clinical decision making based on a RAT result in the majority of cases.  Clinical discretion should be applied to household contacts who test negative by RAT but are presenting with symptoms typical of COVID-19 infection. Although this population is not defined by the Case Definition, clinical discretion may support recognition as a likely case and initiation of treatment, where indicated."
* item[=].item[=].type = #display
* item[=].item[+].linkId = "COVID19-Positive_helpText2"
* item[=].item[=].text = "https://www.tewhatuora.govt.nz/for-the-health-sector/covid-19-information-for-health-professionals/case-definition-and-clinical-testing-guidelines-for-covid-19/"
* item[=].item[=].type = #display
* item[=].linkId = "COVID19-Positive"
* item[=].text = "Is the patient a COVID-19 case as per the case definition or clinical criteria?"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding.display = "Yes"
* item[=].answerOption[+].valueCoding.display = "No"
* item[=].required = true
* item[+].linkId = "SymptomsStart"
* item[=].enableWhen.question = "COVID19-Positive"
* item[=].enableWhen.answerCoding.display = "Yes"
* item[=].enableWhen.operator = #=
* item[=].text = "When did the patient's symptoms start?"
* item[=].enableBehavior = #all
* item[=].type = #choice
* item[=].answerOption[0].valueCoding.display = "Within the last 5 days (if considering nirmatrelvir with ritonavir or molnupiravir)"
* item[=].answerOption[+].valueCoding.display = "Within the last 7 days (if considering remdesivir)"
* item[=].answerOption[+].valueCoding.display = "More than 7 days ago"
* item[=].required = true
* item[+].repeats = false
* item[=].linkId = "supoxygen"
* item[=].readOnly = false
* item[=].text = "The patient requires supplemental oxygen"
* item[=].type = #choice
* item[=].answerOption[0].valueCoding.display = "Yes"
* item[=].answerOption[+].valueCoding.display = "No"
* item[=].required = true
* item[+].repeats = false
* item[=].item[0].linkId = "helptext1"
* item[=].item[=].text = "*As per Ministry of Health criteria of ‘severe immunocompromise’ for third primary dose"
* item[=].item[=].type = #display
* item[=].item[+].linkId = "helptext2"
* item[=].item[=].text = "** A primary dose for most people is 2 vaccinations"
* item[=].item[=].type = #display
* item[=].item[+].linkId = "helptext3"
* item[=].item[=].text = "*** Ministry of Health's definition of high-risk conditions https://covid19.govt.nz/testing-and-isolation/if-you-have-covid-19/medicines-to-treat-covid-19/"
* item[=].item[=].type = #display
* item[=].linkId = "criteria"
* item[=].text = "The Patient (one required):"
* item[=].type = #open-choice
* item[=].answerOption[0].valueCoding.display = "is immunocompromised* and not expected to reliably mount an adequate immune response to COVID-19 vaccination or SARS-CoV-2 infection, regardless of vaccination status"
* item[=].answerOption[+].valueCoding.display = "has Down syndrome"
* item[=].answerOption[+].valueCoding.display = "has sickle cell disease"
* item[=].answerOption[+].valueCoding.display = "has had a previous admission to critical or high dependency care as a result of COVID-19"
* item[=].answerOption[+].valueCoding.display = "is 65 years old or older"
* item[=].answerOption[+].valueCoding.display = "is 50 years old or older and is of Māori or Pacific ethnicity"
* item[=].answerOption[+].valueCoding.display = "is 50 years old or older and has not completed a primary course of vaccination **"
* item[=].answerOption[+].valueCoding.display = "has 3 or more high-risk conditions, as defined by the Ministry of Health ***"
* item[=].answerOption[+].valueCoding.display = "none of the above"
* item[=].required = true
* item[+].linkId = "eligible-no"
* item[=].enableWhen[0].question = "SymptomsStart"
* item[=].enableWhen[=].answerCoding.display = "More than 7 days ago"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[+].question = "criteria"
* item[=].enableWhen[=].answerCoding.display = "none of the above"
* item[=].enableWhen[=].operator = #=
* item[=].text = "The patient is NOT eligible for Anti Viral medication"
* item[=].enableBehavior = #any
* item[=].type = #choice
* item[=].answerOption.valueCoding.display = "confirm"
* item[=].required = true
* item[+].linkId = "eligible-yes"
* item[=].enableWhen[0].question = "SymptomsStart"
* item[=].enableWhen[=].answerCoding.display = "More than 7 days ago"
* item[=].enableWhen[=].operator = #!=
* item[=].enableWhen[+].question = "criteria"
* item[=].enableWhen[=].answerCoding.display = "none of the above"
* item[=].enableWhen[=].operator = #!=
* item[=].enableWhen[+].question = "supoxygen"
* item[=].enableWhen[=].answerCoding.display = "Yes"
* item[=].enableWhen[=].operator = #!=
* item[=].text = "The patient IS eligible for Anti Viral medication"
* item[=].enableBehavior = #all
* item[=].type = #choice
* item[=].answerOption.valueCoding.display = "confirm"
* item[=].required = true
* item[+].item[0].linkId = "PharmacistName"
* item[=].item[=].text = "Pharmacist Name"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[+].linkId = "PharmacistID"
* item[=].item[=].text = "Pharmacist ID"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].linkId = "PharmacistInformation"
* item[=].text = "Please provide pharmacist details"
* item[=].type = #group
* item[+].item[0].linkId = "PharmacyName"
* item[=].item[=].text = "Pharmacy Name"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[+].linkId = "PharmacyID"
* item[=].item[=].text = "Pharmacy ID"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[+].item[0].linkId = "StreetNumberName"
* item[=].item[=].item[=].text = "Street number + Street Name"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].linkId = "Suburb"
* item[=].item[=].item[=].text = "Suburb"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].linkId = "TownCity"
* item[=].item[=].item[=].text = "Town/City"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].linkId = "Postcode"
* item[=].item[=].item[=].text = "Postcode"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].linkId = "PharmacyAddress"
* item[=].item[=].text = "Pharmacy address details"
* item[=].item[=].type = #group
* item[=].linkId = "PharmacyInformation"
* item[=].text = "Please provide details about the pharmacy organisation"
* item[=].type = #group
* item[+].item[0].linkId = "GPName"
* item[=].item[=].text = "General Practitioner Name"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[+].linkId = "GPEDI"
* item[=].item[=].text = "General Practice EDI"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].linkId = "GeneralPracticeInformation"
* item[=].text = "Please provide details about the patient's general practice"
* item[=].type = #group
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