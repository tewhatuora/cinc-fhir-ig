Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

Instance: RespiratoryAdultHealthQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/RespiratoryAdultHealthQuestionnaire"
* identifier.use = #official
* identifier.value = "RespiratoryAdultHealthQuestionnaire"
* version = "1.0.0"
* name = "RespiratoryAdultHealthQuestionnaire"
* title = "Adult Health Questionnaire for EBUS"
* title.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* title.extension.valueString = "<div><h1 style=\"margin:0 0 12px 0;font-size:30px;line-height:1.2;color:#007d8a;font-weight:700;\">Adult Health Questionnaire for EBUS</h1><div style=\"margin:0 0 18px 0;padding:12px 16px;background-color:#f0f9fa;border-left:4px solid #007d8a;border-radius:4px;\"><p style=\"margin:0 0 4px 0;font-size:18px;line-height:1.4;color:#005f68;font-weight:700;\">Proposed surgery / procedure: Endobronchial Ultrasound (EBUS)</p><p style=\"margin:0;font-size:15px;line-height:1.5;color:#5f6b76;\">Please complete this questionnaire before your procedure. The information helps the Respiratory Service and the anaesthetic team assess your health and plan your care safely.</p></div></div>"
* status = #active
* subjectType = #Patient
* date = "2026-10-19T00:00:00.000Z"
* description = "Questions about respiratory procedure health assessment"
* useContext.code = $usage-context-type#focus "Clinical Focus"
* useContext.valueCodeableConcept.text = "M65 Respiratory Medicine"
* purpose = "Respiratory procedure health assessment"
* item[0].extension[0].valueBoolean = true
* item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].extension[+].valueString = "specialtyCode"
* item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-claims-extract"
* item[=].linkId = "meta-specialty-code"
* item[=].text = "Specialty Code"
* item[=].type = #string
* item[=].required = false
* item[=].initial.valueString = "M65"
* item[+].extension[0].valueBoolean = true
* item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].extension[+].valueString = "specialtyName"
* item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-claims-extract"
* item[=].linkId = "meta-specialty-name"
* item[=].text = "Specialty Name"
* item[=].type = #string
* item[=].required = false
* item[=].initial.valueString = "Respiratory Medicine"
* item[+].linkId = "Section0PatientID"
* item[=].text = "Patient ID"
* item[=].type = #group
* item[=].item[0].linkId = "Surname"
* item[=].item[=].text = "Surname"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "FirstNames"
* item[=].item[=].text = "First Names"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "NHI"
* item[=].item[=].text = "NHI"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "DateOfBirth"
* item[=].item[=].text = "Date of Birth"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[+].linkId = "Sex"
* item[=].item[=].text = "Sex"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[+].linkId = "Section1PatientDetails"
* item[=].text = "Section 1 – Patient details"
* item[=].type = #group
* item[=].item[0].linkId = "TodaysDate"
* item[=].item[=].text = "Today's date"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[+].extension.valueInteger = 0
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].linkId = "Height"
* item[=].item[=].text = "Your height (cm)"
* item[=].item[=].type = #decimal
* item[=].item[=].required = false
* item[=].item[+].extension.valueInteger = 0
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].linkId = "Weight"
* item[=].item[=].text = "Your weight (kg)"
* item[=].item[=].type = #decimal
* item[=].item[=].required = false
* item[=].item[+].extension.valueInteger = 0
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].linkId = "BMI"
* item[=].item[=].text = "BMI"
* item[=].item[=].type = #decimal
* item[=].item[=].required = false
* item[=].item[+].linkId = "ProposedProcedure"
* item[=].item[=].text = "Proposed surgery / procedure"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].initial.valueString = "Endobronchial Ultrasound (EBUS)"
* item[=].item[+].linkId = "ContactDetailsGroup"
* item[=].item[=].text = "If a phone call is required for further information relating to this questionnaire, please provide details on how we can contact you."
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "ContactHomePhone"
* item[=].item[=].item[=].text = "Home phone"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[+].linkId = "ContactWorkPhone"
* item[=].item[=].item[=].text = "Work phone"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[+].linkId = "ContactMobilePhone"
* item[=].item[=].item[=].text = "Mobile phone"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[+].linkId = "ContactEmail"
* item[=].item[=].item[=].text = "Email"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "HappyToLeaveMessage"
* item[=].item[=].text = "Are you happy for us to leave a message?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "MessageWithPerson"
* item[=].item[=].text = "With a person?"
* item[=].item[=].type = #choice
* item[=].item[=].enableWhen.question = "HappyToLeaveMessage"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "MessageWithPersonName"
* item[=].item[=].text = "If yes, please give person's name"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "MessageWithPerson"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "MessageOnAnswerPhone"
* item[=].item[=].text = "On answer phone?"
* item[=].item[=].type = #choice
* item[=].item[=].enableWhen.question = "HappyToLeaveMessage"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "BestTimeToCall"
* item[=].item[=].text = "When is the best time for you to receive telephone calls from staff?"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[+].linkId = "Section2DHBUseOnly"
* item[=].text = "Section 2 – Capital and Coast DHB use only"
* item[=].type = #group
* item[=].item[0].linkId = "AssessorName"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "AssessorPosition"
* item[=].item[=].text = "Position"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "AssessmentDate"
* item[=].item[=].text = "Date"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#check-box "Check-box"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "PreAnaesthesiaRequirements"
* item[=].item[=].text = "Pre-anaesthesia Requirements"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = #nurse-telephone-call "Nurse telephone call"
* item[=].item[=].answerOption[+].valueCoding = #routine "Routine"
* item[=].item[=].answerOption[+].valueCoding = #complex "Complex"
* item[=].item[=].answerOption[+].valueCoding = #high-risk "High risk"
* item[=].item[=].answerOption[+].valueCoding = #paediatric-specialist "Paediatric specialist"
* item[+].linkId = "Section3MedicalConditions"
* item[=].text = "Section 3 – Medical conditions"
* item[=].type = #group
* item[=].item[0].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "HighBloodPressure"
* item[=].item[=].text = "1. High blood pressure?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "HighBloodPressureBPAtClinic"
* item[=].item[=].text = "BP at clinic"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "HighBloodPressure"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "HeartConditions"
* item[=].item[=].text = "2. Heart conditions (e.g. heart murmur, valve disease, chest pain or discomfort, angina, palpitations or irregular heart beat)?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "HeartConditionsComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #text
* item[=].item[=].enableWhen.question = "HeartConditions"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "HeartLungSurgery"
* item[=].item[=].text = "3. Heart/Lung surgery?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "HeartLungSurgeryComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "HeartLungSurgery"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "ICDorPacemaker"
* item[=].item[=].text = "4. Implanted cardiac defibrillator (ICD) or Pacemaker?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "ICDorPacemakerLastChecked"
* item[=].item[=].text = "When was it last checked?"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "ICDorPacemaker"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "ShortnessOfBreathAtNight"
* item[=].item[=].text = "5. Shortness of breath at night?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "ShortnessOfBreathAtNightComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "ShortnessOfBreathAtNight"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "BlackoutsOrFainting"
* item[=].item[=].text = "6. Blackouts or fainting?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "BlackoutsOrFaintingCircumstances"
* item[=].item[=].text = "Under what circumstances?"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "BlackoutsOrFainting"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "SwollenAnkles"
* item[=].item[=].text = "7. Swollen ankles?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "SwollenAnklesComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "SwollenAnkles"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "BreathingDifficulties"
* item[=].item[=].text = "8. Breathing difficulties (e.g. asthma, emphysema, C.O.R.D., bronchitis)?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "BreathingDifficultiesComment"
* item[=].item[=].text = "(Please bring peak flow recordings with you if available)"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "BreathingDifficulties"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "SteroidsForBreathing"
* item[=].item[=].text = "9. Have you taken steroids for your breathing difficulty in the past 5 years?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "SteroidsForBreathingLastCourse"
* item[=].item[=].text = "When was the last course?"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "SteroidsForBreathing"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "SleepApnoea"
* item[=].item[=].text = "10. Sleep apnoea (or have you been told you stop breathing while asleep)?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "SleepApnoeaComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #text
* item[=].item[=].enableWhen.question = "SleepApnoea"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "KidneyCondition"
* item[=].item[=].text = "11. Kidney (Renal) condition?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "KidneyConditionComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "KidneyCondition"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "Diabetes"
* item[=].item[=].text = "12. Diabetes?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "DiabetesType"
* item[=].item[=].text = "Please tick which type"
* item[=].item[=].type = #choice
* item[=].item[=].enableWhen.question = "Diabetes"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #type-1 "Type 1"
* item[=].item[=].answerOption[+].valueCoding = #type-2 "Type 2"
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#check-box "Check-box"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "DiabetesManagement"
* item[=].item[=].text = "Do you currently use (please tick):"
* item[=].item[=].type = #choice
* item[=].item[=].enableWhen.question = "Diabetes"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = #insulin "Insulin"
* item[=].item[=].answerOption[+].valueCoding = #tablets "Tablets"
* item[=].item[=].answerOption[+].valueCoding = #diet-control "Diet control"
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "Stroke"
* item[=].item[=].text = "13. Stroke (Cerebrovascular accident or CVA)?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "StrokeComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #text
* item[=].item[=].enableWhen.question = "Stroke"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "SuddenLossVisionSpeechMovement"
* item[=].item[=].text = "14. Sudden loss of vision, speech or movement?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "SuddenLossVisionSpeechMovementComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "SuddenLossVisionSpeechMovement"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "BloodClotsOrBleedingDisorder"
* item[=].item[=].text = "15. Blood clots in lungs or legs or a bleeding disorder (PE, DVT, thrombosis)?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "BloodClotsOrBleedingDisorderComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #text
* item[=].item[=].enableWhen.question = "BloodClotsOrBleedingDisorder"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "HeartburnRefluxHiatusHernia"
* item[=].item[=].text = "16. Heartburn/reflux of acid/hiatus hernia?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "HeartburnRefluxHiatusHerniaComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "HeartburnRefluxHiatusHernia"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "ThyroidProblems"
* item[=].item[=].text = "17. Thyroid problems?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "ThyroidProblemsComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "ThyroidProblems"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "Dementia"
* item[=].item[=].text = "18. Dementia? (e.g. Alzheimer's, forgetfulness)"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "DementiaComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #text
* item[=].item[=].enableWhen.question = "Dementia"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "Epilepsy"
* item[=].item[=].text = "19. Epilepsy?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "EpilepsySeizureFrequency"
* item[=].item[=].text = "How often do you have seizures?"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "Epilepsy"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].linkId = "EpilepsyLastSeizure"
* item[=].item[=].text = "When was your last seizure?"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "Epilepsy"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "Arthritis"
* item[=].item[=].text = "20. Arthritis?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "ArthritisComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "Arthritis"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "JointReplacementOrMetalware"
* item[=].item[=].text = "21. Joint replacement or orthopaedic metalware?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "JointReplacementOrMetalwareType"
* item[=].item[=].text = "What type?"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "JointReplacementOrMetalware"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "MuscleOrNeurologicalDisease"
* item[=].item[=].text = "22. Muscle or Neurological disease (e.g. MS, Parkinson's, Muscular dystrophy)?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "MuscleOrNeurologicalDiseaseComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #text
* item[=].item[=].enableWhen.question = "MuscleOrNeurologicalDisease"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "JawOrNeckProblems"
* item[=].item[=].text = "23. Jaw or neck problems?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "JawOrNeckProblemsComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "JawOrNeckProblems"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "HepatitisOrLiverCondition"
* item[=].item[=].text = "24. Hepatitis A, B, C, jaundice or liver condition?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "HepatitisOrLiverConditionComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "HepatitisOrLiverCondition"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "TransmittableDisease"
* item[=].item[=].text = "25. Transmittable disease (such as MRSA, 'golden staph', boils, skin or other infection, septicaemia, HIV, VRSA)?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "TransmittableDiseaseComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #text
* item[=].item[=].enableWhen.question = "TransmittableDisease"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "Tuberculosis"
* item[=].item[=].text = "26. Tuberculosis (TB)?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "TuberculosisTreatment"
* item[=].item[=].text = "Have you had or are you on treatment for this?"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "Tuberculosis"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "FamilyConditions"
* item[=].item[=].text = "27. Are there any conditions that run in your family? (e.g. malignant hyperthermia, thalassaemia, muscular dystrophy)?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "FamilyConditionsComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #text
* item[=].item[=].enableWhen.question = "FamilyConditions"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "Anaemia"
* item[=].item[=].text = "28. Anaemia?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "AnaemiaComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "Anaemia"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "PreviousBloodTransfusion"
* item[=].item[=].text = "29. Previous blood transfusion?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "PreviousBloodTransfusionComment"
* item[=].item[=].text = "When was the last?"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "PreviousBloodTransfusion"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "BloodTransfusionRefusal"
* item[=].item[=].text = "30. Do you have any reasons which might stop you from accepting a blood transfusion?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "BloodTransfusionRefusalComment"
* item[=].item[=].text = "What was the reason?"
* item[=].item[=].type = #text
* item[=].item[=].enableWhen.question = "BloodTransfusionRefusal"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "Phobias"
* item[=].item[=].text = "31. Phobias (e.g. claustrophobia, anxiety attacks)?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "PhobiasComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #text
* item[=].item[=].enableWhen.question = "Phobias"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "TravelledOverseas"
* item[=].item[=].text = "32. Travelled overseas in the last 6 months?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "TravelledOverseasHospitalised"
* item[=].item[=].text = "Were you hospitalised?"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "TravelledOverseas"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "VisualOrHearingImpairment"
* item[=].item[=].text = "33. A visual or hearing impairment?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "VisualOrHearingImpairmentComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "VisualOrHearingImpairment"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "CurrentPainProblems"
* item[=].item[=].text = "34. Do you have any current pain problems?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "CurrentPainProblemsLocation"
* item[=].item[=].text = "What is the location of the pain?"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "CurrentPainProblems"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#text-box "Text Box"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "OtherRelevantMedicalCondition"
* item[=].item[=].text = "35. Is there any other relevant medical condition that you need to tell us about?"
* item[=].item[=].type = #text
* item[=].item[=].required = false
* item[+].linkId = "Section4HealthProfessionals"
* item[=].text = "Section 4 – Health professionals"
* item[=].type = #group
* item[=].item.linkId = "HealthProfessionalsGroup"
* item[=].item.text = "List the name(s) of the hospital/clinic/doctors/surgeons/nurses you see."
* item[=].item.type = #group
* item[=].item.repeats = true
* item[=].item.item[0].linkId = "HealthProfessionalName"
* item[=].item.item[=].text = "Doctor's name"
* item[=].item.item[=].type = #string
* item[=].item.item[=].required = false
* item[=].item.item[+].linkId = "HealthProfessionalReason"
* item[=].item.item[=].text = "Reason you see this doctor"
* item[=].item.item[=].type = #string
* item[=].item.item[=].required = false
* item[=].item.item[+].linkId = "HealthProfessionalLastVisit"
* item[=].item.item[=].text = "Date of last visit"
* item[=].item.item[=].type = #date
* item[=].item.item[=].required = false
* item[+].linkId = "Section5FitnessAndLifestyle"
* item[=].text = "Section 5 – Fitness and lifestyle"
* item[=].type = #group
* item[=].item[0].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "StairsWithoutStoppingNow"
* item[=].item[=].text = "1. What can you do without stopping or getting breathless?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #10-stairs "10 stairs"
* item[=].item[=].answerOption[+].valueCoding = #20-stairs "20 stairs"
* item[=].item[=].answerOption[+].valueCoding = #30-stairs "30 stairs"
* item[=].item[=].answerOption[+].valueCoding = #40-stairs "40 stairs"
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "ManageAroundHouse"
* item[=].item[=].text = "2. Can you manage around the house?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "ChangedInLast6Months"
* item[=].item[=].text = "3. Has this changed in the last 6 months?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "StairsWithoutStopping6MonthsAgo"
* item[=].item[=].text = "If yes, what could you do without stopping or getting breathless 6 months ago?"
* item[=].item[=].type = #choice
* item[=].item[=].enableWhen.question = "ChangedInLast6Months"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #10-stairs "10 stairs"
* item[=].item[=].answerOption[+].valueCoding = #20-stairs "20 stairs"
* item[=].item[=].answerOption[+].valueCoding = #30-stairs "30 stairs"
* item[=].item[=].answerOption[+].valueCoding = #40-stairs "40 stairs"
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#text-box "Text Box"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "WhatStopsWalking"
* item[=].item[=].text = "4. What stops or restricts you from walking now? (e.g. getting breathless, pain in joints, pain in calf muscles)"
* item[=].item[=].type = #text
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "DoYouSmoke"
* item[=].item[=].text = "5. Do you smoke?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].extension.valueInteger = 0
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].linkId = "SmokeHowManyPerDay"
* item[=].item[=].text = "How many per day?"
* item[=].item[=].type = #integer
* item[=].item[=].enableWhen.question = "DoYouSmoke"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "EverSmoked"
* item[=].item[=].text = "6. Have you ever smoked?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "WhenDidYouStopSmoking"
* item[=].item[=].text = "If so, when did you stop?"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "EverSmoked"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "DrinkAlcoholRegularly"
* item[=].item[=].text = "7. Do you drink alcohol regularly?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "AlcoholHowMuchPerWeek"
* item[=].item[=].text = "How much per week?"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "DrinkAlcoholRegularly"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "PregnantOrMayBePregnant"
* item[=].item[=].text = "8. Are you or do you think you may be pregnant?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].extension.valueInteger = 0
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].linkId = "PregnancyWeeks"
* item[=].item[=].text = "If yes – how many weeks?"
* item[=].item[=].type = #integer
* item[=].item[=].enableWhen.question = "PregnantOrMayBePregnant"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[+].linkId = "Section6Allergies"
* item[=].text = "Section 6 – Allergies"
* item[=].type = #group
* item[=].item[0].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "AllergiesOrReactions"
* item[=].item[=].text = "1. Allergies or reactions to medicines (sticking plasters, food, paint, latex / rubber products or x-ray dye)?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#text-box "Text Box"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "AllergiesDescription"
* item[=].item[=].text = "Please describe what happens to you:"
* item[=].item[=].type = #text
* item[=].item[=].enableWhen.question = "AllergiesOrReactions"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[+].linkId = "Section7Medications"
* item[=].text = "Section 7 – Medications"
* item[=].type = #group
* item[=].item.linkId = "MedicationsGroup"
* item[=].item.text = "Medication / Therapy"
* item[=].item.type = #group
* item[=].item.repeats = true
* item[=].item.item[0].linkId = "MedicationName"
* item[=].item.item[=].text = "Name of Medication/Therapy"
* item[=].item.item[=].type = #string
* item[=].item.item[=].required = false
* item[=].item.item[+].linkId = "MedicationHowMuch"
* item[=].item.item[=].text = "How much?"
* item[=].item.item[=].type = #string
* item[=].item.item[=].required = false
* item[=].item.item[+].linkId = "MedicationHowOften"
* item[=].item.item[=].text = "How often each day? (Breakfast, lunch, tea)"
* item[=].item.item[=].type = #string
* item[=].item.item[=].required = false
* item[+].linkId = "Section8PreviousSurgeryAnaesthesia"
* item[=].text = "Section 8 – Previous surgery / anaesthesia"
* item[=].type = #group
* item[=].item[0].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "PreviousSurgeryOrAdmission"
* item[=].item[=].text = "1. Have you ever had surgery or been admitted to hospital before? (Including day surgery)"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "PreviousSurgeryGroup"
* item[=].item[=].text = "If yes, when, what for and what hospital was that in?"
* item[=].item[=].type = #group
* item[=].item[=].enableWhen.question = "PreviousSurgeryOrAdmission"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].repeats = true
* item[=].item[=].item[0].linkId = "PreviousSurgeryOperationIllness"
* item[=].item[=].item[=].text = "Operation / Illness"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[+].linkId = "PreviousSurgeryYear"
* item[=].item[=].item[=].text = "Year"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[+].linkId = "PreviousSurgeryHospital"
* item[=].item[=].item[=].text = "Hospital"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[+].linkId = "Section9AnaesthesiaRelatedIssues"
* item[=].text = "Section 9 – Anaesthesia related issues"
* item[=].type = #group
* item[=].item[0].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "ProblemsUnderAnaesthetic"
* item[=].item[=].text = "1. Have you had any problems while under an anaesthetic?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "ProblemsUnderAnaestheticComment"
* item[=].item[=].text = "(e.g. slow to wake, nausea and vomiting, post surgery confusion, agitation)"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "ProblemsUnderAnaesthetic"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "RelativeProblemsUnderAnaesthetic"
* item[=].item[=].text = "2. Has any blood relative had problems while under an anaesthetic?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "RelativeProblemsUnderAnaestheticComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "RelativeProblemsUnderAnaesthetic"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "AttendedPreAnaesthesiaAssessment"
* item[=].item[=].text = "3. Have you attended a pre-anaesthesia assessment before?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "AttendedPreAnaesthesiaAssessmentLastTime"
* item[=].item[=].text = "When was the last time?"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "AttendedPreAnaesthesiaAssessment"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[+].linkId = "Section10DischargePlanning"
* item[=].text = "Section 10 – Discharge planning"
* item[=].type = #group
* item[=].item[0].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "RequirePhysicalSupportOrAids"
* item[=].item[=].text = "1. Do you require any physical support or aids?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "RequirePhysicalSupportOrAidsDetails"
* item[=].item[=].text = "If so what?"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "RequirePhysicalSupportOrAids"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "LiveAlone"
* item[=].item[=].text = "2. Do you live alone?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "LiveAloneComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "LiveAlone"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "ProblemsWithDailyActivities"
* item[=].item[=].text = "3. Do you have any problems with daily activities?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "ProblemsWithDailyActivitiesComment"
* item[=].item[=].text = "(e.g. showering, bathing, dressing)"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "ProblemsWithDailyActivities"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "WhoWillTakeYouHome"
* item[=].item[=].text = "4. Who will be taking you home?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "WhoWillTakeYouHomeComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "WhoWillTakeYouHome"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "SomeoneToStayOvernight"
* item[=].item[=].text = "5. Do you have someone to stay overnight with you when you get home?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "SomeoneToStayOvernightComment"
* item[=].item[=].text = "If yes, or not certain, please comment"
* item[=].item[=].type = #text
* item[=].item[=].enableWhen.question = "SomeoneToStayOvernight"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "UsingCommunitySupportServices"
* item[=].item[=].text = "6. Are you currently using any community support services?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "CommunitySupportServicesList"
* item[=].item[=].text = "If so please list:"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "UsingCommunitySupportServices"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #yes "Yes"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "SpeakUnderstandEnglish"
* item[=].item[=].text = "7. Do you speak and understand English?"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = #no "No"
* item[=].item[+].linkId = "FirstLanguage"
* item[=].item[=].text = "If not, what is your first language?"
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "SpeakUnderstandEnglish"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #no "No"
* item[=].item[=].required = false
* item[=].item[+].extension.valueCodeableConcept = $questionnaire-item-control#text-box "Text Box"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].linkId = "AnythingToDiscuss"
* item[=].item[=].text = "8. Is there anything in particular you would like to discuss?"
* item[=].item[=].type = #text
* item[=].item[=].required = false
* item[+].linkId = "Section11PatientDeclaration"
* item[=].text = "Section 11 – Patient declaration"
* item[=].type = #group
* item[=].item[0].linkId = "DeclarationStatement"
* item[=].item[=].text = "The above health information is a true and accurate account of my health status."
* item[=].item[=].type = #display
* item[=].item[+].linkId = "PatientSignature"
* item[=].item[=].text = "Patient's signature"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "DeclarationDate"
* item[=].item[=].text = "Date"
* item[=].item[=].type = #date
* item[=].item[=].required = false