Alias: $antiviral-eligiblity-whenstarted = https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/CodeSystem/nz-covid19-antiviraleligiblity-whenstarted-codes|0.2.0
Alias: $antiviral-eligiblity-situations = https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/CodeSystem/nz-covid19-antiviraleligiblity-situation-codes|0.2.0
Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $sct = http://snomed.info/sct

Instance: AntiViralEligibilityQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/AntiViralEligibilityQuestionnaire"

* identifier[0].use = #official
* identifier[=].value = "AntiViralEligibilityQuestionnaire"
* identifier[=].period.start = "2023-07-19"
* identifier[+].use = #temp
* identifier[=].value = "Questionnaire-AntiViralEligibilityQuestionnaire"
* identifier[=].period.start = "2023-03-07"
* identifier[=].period.end = "2023-07-26"

* date = "2023-07-27"
* status = #draft
* experimental = false

* name = "AntiViralEligibilityQuestionnaire"
* title = "Anti viral medication eligibility questionnaire"

* purpose = "Assess a patient's eligibility against criteria for anti-viral medication"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* description = "A questionnaire defining eligibility criteria for anti-viral medication"
* subjectType = #Patient

* publisher = "Te Whatu Ora"
* useContext.valueCodeableConcept.text = "AntiViral Eligibility Assessment"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#workflow "Workflow Setting"

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


// v0.2.0 introduced group so case definition guidance always displays instead of via help button
* item[+].type = #group
* item[=].linkId = "case-definition-panel"
* item[=].text = """CASE DEFINITION
  The transition from PCR to RATs as a primary mode of testing requires the clinical criteria
  to be applied thoughtfully and practically alongside the Case Definition. The case definitions were based upon
  PCR tests being the primary mode of diagnosis and the focus has now changed to clinical decision making based on
  a RAT result in the majority of cases.

  Clinical discretion should be applied to household contacts who test negative by RAT but are presenting with 
  symptoms typical of COVID-19 infection. Although this population is not defined by the Case Definition^, clinical
  discretion may support recognition as a likely case and initiation of treatment, where indicated.

  ^For definition see https://www.tewhatuora.govt.nz/for-the-health-sector/covid-19-information-for-health-professionals/case-definition-and-clinical-testing-guidelines-for-covid-19#:~:text=Case%20definitions&text=A%20case%20that%20has%20laboratory,a%20validated%20NAAT%20(PCR)
  """

* item[=].item[0].linkId = "COVID19-Positive"
* item[=].item[=].text = "Is the patient a COVID-19 case as per the case definition or clinical criteria?"    // v0.1.8
* item[=].item[=].type = #boolean
* item[=].item[=].initial.valueBoolean = false
* item[=].item[=].required = true

// // v0.1.8 expanded display text
// * item[=].item.type = #display
// * item[=].item.linkId = "COVID19-Positive_helpText"
// * item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
// * item[=].item.extension.valueCodeableConcept.text = "Help-Button"
// * item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"
// * item[=].item.text = """
//   The transition from PCR to RATs as a primary mode of testing requires the clinical criteria
//   to be applied thoughtfully and practically alongside the Case Definition. The case definitions were based upon
//   PCR tests being the primary mode of diagnosis and the focus has now changed to clinical decision making based on
//   a RAT result in the majority of cases.

//   Clinical discretion should be applied to household contacts who test negative by RAT but are presenting with 
//   symptoms typical of COVID-19 infection. Although this population is not defined by the Case Definition^, clinical
//   discretion may support recognition as a likely case and initiation of treatment, where indicated.

//   ^For definition see https://www.tewhatuora.govt.nz/for-the-health-sector/covid-19-information-for-health-professionals/case-definition-and-clinical-testing-guidelines-for-covid-19#:~:text=Case%20definitions&text=A%20case%20that%20has%20laboratory,a%20validated%20NAAT%20(PCR)
//   """

* item[+].type = #group
* item[=].linkId = "criteria-panel"
* item[=].text = "Does the patient meet the current Pharmac criteria for COVID-19 Antivitals?"

// v0.1.8 item 1 now nested in the group
// v0.2.0 three options now coded in local codesystem
* item[=].item[0].text = "1. Symptoms started:"
* item[=].item[=].linkId = "SymptomsStart"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = Canonical(AntiViralEligiblitySymptomsStartedValueSet|0.2.0)  // v0.2.0 choice options coded in local ValueSet
* item[=].item[=].required = true
//* item[=].item[=].enableWhen.question = "COVID19-Positive"  -- v0.1.8 removed conditional
//* item[=].item[=].enableWhen.operator = #=                  -- v0.1.8 removed conditional
//* item[=].item[=].enableWhen.answerCoding.display = "Yes"   -- v0.1.8 removed conditional
//* item[=].item[=].enableBehavior = #all                     -- v0.1.8 removed conditional

// v0.2.0 three options now coded with local codes
// * item[=].item[=].answerOption[0].valueCoding = #within-five-days "Within the last 5 days (if considering nirmatrelvir with ritonavir or molnupiravir)"
// * item[=].item[=].answerOption[+].valueCoding = #within-seven-days "Within the last 7 days (if considering remdesivir)"
// * item[=].item[=].answerOption[+].valueCoding = #not-recent "More than 5 days ago if assessing for nirmaltrelvir with ritonavir; and molnupiravir, OR more than 7 days ago if assessing for remdesivir"

// v0.1.8 item 2 now nested in the group
* item[=].item[+].text = "2. My patient requires supplemental oxygen"
* item[=].item[=].linkId = "supoxygen"
* item[=].item[=].type = #boolean
* item[=].item[=].repeats = false
* item[=].item[=].required = true
* item[=].item[=].readOnly = false

// v0.1.8 item 3 now nested in the group
* item[=].item[+].text = "3. My patient's condition or circumstance (choose one):"   // v0.1.8
* item[=].item[=].linkId = "criteria"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = Canonical(AntiViralEligiblitySituationValueSet|0.2.0)  // v0.2.0 choice options coded in local codesystem
* item[=].item[=].required = true
* item[=].item[=].repeats = false

// v0.2.0 choice options coded in local codesystem
// * item[=].item[=].answerOption[0].valueCoding = #immunocompromised "is immunocompromised[1] and not expected to reliably mount an adequate immune response to COVID-19 vaccination or SARS-CoV-2 infection, regardless of vaccination status"
// * item[=].item[=].answerOption[+].valueCoding = #down-syndrome "has Down syndrome"
// * item[=].item[=].answerOption[+].valueCoding = #sickle-cell "has sickle cell disease"
// * item[=].item[=].answerOption[+].valueCoding = #covid-prior-admission "has had a previous admission to critical or high dependency care as a result of COVID-19"
// * item[=].item[=].answerOption[+].valueCoding = #sixty-five-plus "is 65 years old or older"
// * item[=].item[=].answerOption[+].valueCoding = #fifty-plus-ethnicity "is 50 years old or older and is of Māori or Pacific ethnicity"
// * item[=].item[=].answerOption[+].valueCoding = #fifty-plus-no-vax "is 50 years old or older and has not completed a primary course of vaccination [2]"
// * item[=].item[=].answerOption[+].valueCoding = #multi-conditions "has 3 or more high-risk conditions, as defined by the Ministry of Health [3]"
// * item[=].item[=].answerOption[+].valueCoding = #none-of-the-above "none of the above"

// v0.1.8 add footnote guidance about some of the options
* item[=].item[=].item.text = """
  [1]For definition of Ministry of Health criteria of ‘severe immunocompromise’ for third primary dose see: https://www.health.govt.nz/covid-19-novel-coronavirus/covid-19-vaccines/covid-19-vaccine-severely-immunocompromised-people#criteria
  [2]A primary dose for most people is 2 vaccinations
  [3]For Ministry of Health's definition of high-risk conditions see https://covid19.govt.nz/testing-and-isolation/if-you-have-covid-19/medicines-to-treat-covid-19/
  """
* item[=].item[=].item.type = #display
* item[=].item[=].item.linkId = "myPatientCriteria_helpText"
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"

* item[+].linkId = "eligible-no"
* item[=].type = #choice
* item[=].required = false
* item[=].text = "Assessment: No - the patient IS NOT eligible for COVID-19 Antivirals"
* item[=].enableWhen[0].question = "SymptomsStart"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.code = $antiviral-eligiblity-whenstarted#not-recent          // v0.2.0
* item[=].enableWhen[+].question = "criteria"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding.code = $antiviral-eligiblity-situations#none-of-the-above    // v0.2.0
* item[=].enableWhen[+].question = "supoxygen"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerBoolean = true
* item[=].enableBehavior = #any
* item[=].answerOption.valueCoding.display = "confirm"

* item[+].linkId = "eligible-yes"
* item[=].type = #choice
* item[=].required = false
* item[=].text = "Assessment: Yes - the patient IS eligible for COVID-19 Antivirals"
* item[=].enableWhen[0].question = "SymptomsStart"
* item[=].enableWhen[=].operator = #!=
* item[=].enableWhen[=].answerCoding.code = $antiviral-eligiblity-whenstarted#not-recent          // v0.2.0
* item[=].enableWhen[+].question = "criteria"
* item[=].enableWhen[=].operator = #!=
* item[=].enableWhen[=].answerCoding.code = $antiviral-eligiblity-situations#none-of-the-above    // v0.2.0 
* item[=].enableWhen[+].question = "supoxygen"
* item[=].enableWhen[=].operator = #!=
* item[=].enableWhen[=].answerBoolean = true
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

* item[=].item[0].text = "Pharmacy Name"      // v0.1.8
* item[=].item[=].linkId = "PharmacyName"     // v0.1.8
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].text = "Pharmacy HPI"
* item[=].item[=].linkId = "PharmacyHPI"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "PharmacyAddress"          // fix
* item[=].item[=].type = #text                        // fix
* item[=].item[=].text = "Pharmacy address details"   // fix


* item[+].linkId = "GeneralPracticeInformation"
* item[=].type = #group
* item[=].text = "Please provide details about the patient's general practice"
* item[=].item[0].text = "GP Practice Name"         // v0.1.8
* item[=].item[=].linkId = "GPName"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].text = "Practice EDI"             // v0.1.8
* item[=].item[=].linkId = "GPEDI"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[+].text = "Send note to GP Inbox?"
* item[=].linkId = "SendToGP"
* item[=].type = #boolean
* item[=].required = false
* item[=].initial.valueBoolean = false

// v0.1.8 added guidance
* item[=].item.text = "It may not be necessary to send this message. Please consider if clinically-relevant before sending."
* item[=].item.type = #display
* item[=].item.linkId = "SendToGP_helpText"
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"


