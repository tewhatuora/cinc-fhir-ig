Instance: EntericsInformQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/EntericsInformQuestionnaire"
* identifier.use = #official
* identifier.value = "EntericsInformQuestionnaire"
* version = "1.0.0"
* name = "EntericsInformQuestionnaire"
* title = "Enterics Inform Questionnaire"
* status = #active
* date = "2026-05-19T04:56:47.775Z"
* description = "Te Whatu Ora survey of enterics disease symptoms and source locations"
* item[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].extension[=].valueBoolean = true
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-claims-extract"
* item[=].extension[=].valueString = "diagnosisCode"
* item[=].linkId = "DiagnosisCode"
* item[=].text = "Diagnosis code"
* item[=].type = #string
* item[=].required = true
* item[+].linkId = "CareProgrammeEnroleeId"
* item[=].type = #string
* item[=].text = "Care Programme Enrollee Id"
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].extension[=].valueBoolean = true
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-claims-extract"
* item[=].extension[=].valueString = "encounter.identifier.value"
* item[+].item[0].linkId = "Privacy1"
* item[=].item[=].type = #display
* item[=].item[=].text = "Privacy Statement"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item[=].text.extension.valueString = "<p>We may need to share some of your personal information with other agencies for health purposes and to ensure we meet our legal obligations. We may also share information for statistical and research purposes, but no information will be published in a form that could reasonably be expected to identify any individual.</p><p>To prevent the spread of disease, we may need to talk to your contacts, and information about where you’ve been and your movements while infectious may need to be shared with others. While we do everything we can to make sure that you remain anonymous, in certain situations more information may need to be given to contacts to prevent or reduce a serious threat to public health – this will always be discussed with you first.</p><p>If you would like more information about how your personal information is managed, please go to the Te Whatu Ora website, and look for our 'privacy &amp; security' webpage.</p><p><strong>Please note:</strong> If you are completing this questionnaire on behalf of someone else (e.g. your child), the 'you/your' refers to the person who was unwell, not the person completing it.</p>"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#radio-button "Radio Button"
* item[=].item[=].linkId = "Privacy5"
* item[=].item[=].text = "Please confirm that you understand the information in the privacy statement."
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = $enterics-answer-code#yes "Yes"
* item[=].item[=].answerOption[+].valueCoding = $enterics-answer-code#no "No"
* item[=].item[+].type = #display
* item[=].item[=].linkId = "Privacy6"
* item[=].item[=].text = "Thank you for your time, we are unable to continue with the questionnaire at this time. Someone may be in touch with you to discuss your illness further."
* item[=].item[=].enableWhen.question = "Privacy5"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = $enterics-answer-code#no "No"
* item[=].item[=].enableBehavior = #all
* item[=].type = #group
* item[=].linkId = "PrivacyStatement"
* item[=].text = "Privacy Statement"
* item[=].required = false
* item[=].repeats = false
* item[+].item[0].type = #string
* item[=].item[=].linkId = "ContactDetail1"
* item[=].item[=].text = "What is the best phone number to contact you on?"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "ContactDetail2"
* item[=].item[=].text = "What is the best email address to contact you on?"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "ContactDetails"
* item[=].text = "1. Contact Details"
* item[=].enableWhen.question = "Privacy5"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $enterics-answer-code#yes "Yes"
* item[=].enableBehavior = #all
* item[=].required = false
* item[=].repeats = false
* item[+].item[0].type = #string
* item[=].item[=].linkId = "Occupation1"
* item[=].item[=].text = "What is your primary occupation?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "Occupation2"
* item[=].item[=].text = "Does your work (outside of your home) or activities (e.g. volunteer work) involve any of the following:  - Handling unwrapped food that will be eaten raw or without further cooking?  - Providing direct, hands on care to unwell people in healthcare facilities?   - Providing direct, hands on care to other people at increased risk due to age or disability?  - An early childhood service or group, e.g. kindergarten, play centre or day care?"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item[=].text.extension.valueString = "<div>Does your work (outside of your home) or activities (e.g. volunteer work) involve any of the following:<ul> <li>Handling unwrapped food that will be eaten raw or without further cooking?</li> <li>Providing direct, hands on care to unwell people in healthcare facilities?</li> <li>Providing direct, hands on care to other people at increased risk due to age or disability?</li><li>An early childhood service or group, e.g. kindergarten, play centre or day care?</li> </ul> </div>"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].linkId = "Occupation3"
* item[=].item[=].text = "Select all the high risk work / volunteer categories that apply:"
* item[=].item[=].enableWhen.question = "Occupation2"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = #option1 "Food Handler"
* item[=].item[=].answerOption[+].valueCoding = #option2 "Intellectually/physically impaired"
* item[=].item[=].answerOption[+].valueCoding = #option3 "Healthcare/Rest Home worker"
* item[=].item[=].answerOption[+].valueCoding = #option4 "Early Childhood Services/Groups"
* item[=].item[=].answerOption[+].valueCoding = #option5 "Other high risk category"
* item[=].item[+].type = #display
* item[=].item[=].linkId = "Occupation4"
* item[=].item[=].text = "Please avoid any high risk activities until free from all symptoms for 48 hours"
* item[=].type = #group
* item[=].linkId = "Occupation"
* item[=].text = "2. Occupation"
* item[=].enableWhen.question = "Privacy5"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $enterics-answer-code#yes "Yes"
* item[=].enableBehavior = #all
* item[=].required = false
* item[=].repeats = false
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "Symptom1"
* item[=].item[=].text = "Do you currently have or have you experienced any symptoms?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].linkId = "Symptom2"
* item[=].item[=].text = "Which of the following symptoms have you experienced? Select all that apply"
* item[=].item[=].enableWhen.question = "Symptom1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = #option1 "Diarrhoea"
* item[=].item[=].answerOption[+].valueCoding = #option2 "Blood in stool (poo)"
* item[=].item[=].answerOption[+].valueCoding = #option3 "Vomiting"
* item[=].item[=].answerOption[+].valueCoding = #option4 "Nausea"
* item[=].item[=].answerOption[+].valueCoding = #option5 "Stomach Cramps/Abdominal Pain"
* item[=].item[=].answerOption[+].valueCoding = #option6 "Fever"
* item[=].item[=].answerOption[+].valueCoding = #option7 "Other Symptoms"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "Symptom4"
* item[=].item[=].text = " Provide details of other symptoms"
* item[=].item[=].enableWhen.question = "Symptom2"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #option7 "Other Symptoms"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].linkId = "Symptom5"
* item[=].item[=].text = "What was your first symptom?"
* item[=].item[=].enableWhen.question = "Symptom1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #option1 "Diarrhoea "
* item[=].item[=].answerOption[+].valueCoding = #option2 "Blood in stool (poo)"
* item[=].item[=].answerOption[+].valueCoding = #option3 "Vomiting"
* item[=].item[=].answerOption[+].valueCoding = #option4 "Nausea"
* item[=].item[=].answerOption[+].valueCoding = #option5 "Stomach Cramps/Abdominal Pain"
* item[=].item[=].answerOption[+].valueCoding = #option6 "Fever"
* item[=].item[=].answerOption[+].valueCoding = #option7 "Other Symptoms"
* item[=].item[+].type = #date
* item[=].item[=].linkId = "Symptom6"
* item[=].item[=].text = "What date did the first symptom appear?"
* item[=].item[=].enableWhen.question = "Symptom1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "Symptom7"
* item[=].item[=].text = "What date did the diarrhoea start?"
* item[=].item[=].enableWhen.question = "Symptom2"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #option1 "Diarrhoea"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "Symptom8"
* item[=].item[=].text = "Has the diarrhoea stopped?"
* item[=].item[=].enableWhen.question = "Symptom2"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #option1 "Diarrhoea"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "Symptom9"
* item[=].item[=].text = "What date did the diarrhoea stop?"
* item[=].item[=].enableWhen.question = "Symptom8"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "Symptom10"
* item[=].item[=].text = "Have all your symptoms stopped?"
* item[=].item[=].enableWhen.question = "Symptom1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "Symptom11"
* item[=].item[=].text = "What date did your symptoms stop?"
* item[=].item[=].enableWhen.question = "Symptom10"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "Symptoms"
* item[=].text = "4. Symptoms"
* item[=].enableWhen.question = "Privacy5"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $enterics-answer-code#yes "Yes"
* item[=].enableBehavior = #all
* item[=].required = false
* item[=].repeats = false
* item[+].item[0].type = #display
* item[=].item[=].linkId = "ContactWithOthers1"
* item[=].item[=].text = "If you have not experienced any symptoms, use the date you produced the stool (poo) sample to answer all the following questions"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "ContactWithOthers2"
* item[=].item[=].text = "Before you became unwell, did you have contact with a confirmed case?"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].text.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].text.extension.valueExpression.expression = "'In the ' + %IncubationPeriod + ' before you became unwell have you had contact with a confirmed case?'"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "ContactWithOthers3"
* item[=].item[=].text = "What was their name?"
* item[=].item[=].enableWhen.question = "ContactWithOthers2"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "ContactWithOthers4"
* item[=].item[=].text = "Do you know their date of birth or age?"
* item[=].item[=].enableWhen.question = "ContactWithOthers2"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "ContactWithOthers5"
* item[=].item[=].text = "When did you first have contact with them?"
* item[=].item[=].enableWhen.question = "ContactWithOthers2"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "ContactWithOthers6"
* item[=].item[=].text = "Where did you last have contact with them?"
* item[=].item[=].enableWhen.question = "ContactWithOthers2"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "ContactWithOthers7"
* item[=].item[=].text = "Do you have a contact phone number for them?"
* item[=].item[=].enableWhen.question = "ContactWithOthers2"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "ContactWithOthers8"
* item[=].item[=].text = "Before you became unwell, did you have contact with people with a similar illness?"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].text.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].text.extension.valueExpression.expression = "'In the ' + %IncubationPeriod + ' before you became unwell, have you had any contact with people with a similar illness?'"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].initial.valueBoolean = true
* item[=].item[+].type = #string
* item[=].item[=].linkId = "ContactWithOthers9"
* item[=].item[=].text = "What was their name?"
* item[=].item[=].enableWhen.question = "ContactWithOthers8"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "ContactWithOthers10"
* item[=].item[=].text = "Before you became unwell, did you visit any particular places where you might have been exposed to the illness?"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].text.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].text.extension.valueExpression.expression = "'In the ' + %IncubationPeriod + ' before you became unwell, have you been to any particular places where you might have been exposed to the illness?'"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "ContactWithOthers11"
* item[=].item[=].text = "Please provide details of the place / setting and date/s."
* item[=].item[=].enableWhen.question = "ContactWithOthers10"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "ContactWithOthers12"
* item[=].item[=].text = "Before you became unwell, did you have any visitors from overseas?"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].text.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].text.extension.valueExpression.expression = "'In the ' + %IncubationPeriod + ' before you became unwell, did you have any visitors from overseas?'"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "ContactWithOthers13"
* item[=].item[=].text = "Please provide details of the visitors, including their country of origin and the nature of contact."
* item[=].item[=].enableWhen.question = "ContactWithOthers12"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].type = #group
* item[=].linkId = "ContactWithOthers"
* item[=].text = "5. Source Investigation - Contact with Others"
* item[=].enableWhen.question = "Privacy5"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $enterics-answer-code#yes "Yes"
* item[=].enableBehavior = #all
* item[=].required = false
* item[=].repeats = false
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "InternationalAndDomesticTravel1"
* item[=].item[=].text = "Before you became unwell, were you overseas?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].text.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].text.extension.valueExpression.expression = "'In the ' + %IncubationPeriod + ' before you became unwell, were you overseas?'"
* item[=].item[+].type = #date
* item[=].item[=].linkId = "InternationalAndDomesticTravel2"
* item[=].item[=].text = "If usually residing in New Zealand, what date did you leave? "
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "InternationalAndDomesticTravel3"
* item[=].item[=].text = "What date did you arrive in New Zealand?"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #choice
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item[=].item[=].extension[=].valueUrl = "https://nzhts.digital.health.nz/fhir"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerValueSet = "https://nzhts.digital.health.nz/fhir/ValueSet/country-code"
* item[=].item[=].linkId = "InternationalAndDomesticTravel4"
* item[=].item[=].text = "Last Country Visited"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "InternationalAndDomesticTravel5"
* item[=].item[=].text = "What region/city did you visit in this country?"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "InternationalAndDomesticTravel7"
* item[=].item[=].text = "What date did you enter this country?"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "InternationalAndDomesticTravel8"
* item[=].item[=].text = "What date did you leave this country?"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "InternationalAndDomesticTravel9"
* item[=].item[=].text = "Did you visit any other countries?"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #choice
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item[=].item[=].extension[=].valueUrl = "https://nzhts.digital.health.nz/fhir"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerValueSet = "https://nzhts.digital.health.nz/fhir/ValueSet/country-code"
* item[=].item[=].linkId = "InternationalAndDomesticTravel10"
* item[=].item[=].text = "2nd Last Country Visited"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel9"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "InternationalAndDomesticTravel11"
* item[=].item[=].text = "What City/Region in that country?"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel9"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "InternationalAndDomesticTravel12"
* item[=].item[=].text = "What date did you enter this country?"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel9"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "InternationalAndDomesticTravel14"
* item[=].item[=].text = "What date did you leave this country?"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel9"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "InternationalAndDomesticTravel15"
* item[=].item[=].text = "Did you visit any additional countries?"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel9"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #choice
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
* item[=].item[=].extension[=].valueUrl = "https://nzhts.digital.health.nz/fhir"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].answerValueSet = "https://nzhts.digital.health.nz/fhir/ValueSet/country-code"
* item[=].item[=].linkId = "InternationalAndDomesticTravel16"
* item[=].item[=].text = "3rd last Country Visited"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel15"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "InternationalAndDomesticTravel17"
* item[=].item[=].text = "What City/Region in that country?"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel15"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "InternationalAndDomesticTravel18"
* item[=].item[=].text = "What date did you enter this country?"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel15"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "InternationalAndDomesticTravel19"
* item[=].item[=].text = "What date did you leave this country"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel15"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "InternationalAndDomesticTravel20"
* item[=].item[=].text = "Considering that the incubation period (the time between you being exposed to the illness and you developing symptoms) may be longer than 1-10 days in some situations, do you have a history of overseas travel that could explain this infection, even if the travel was not recent?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "InternationalAndDomesticTravel22"
* item[=].item[=].text = "Please provide details of prior overseas travel "
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel20"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "InternationalAndDomesticTravel23"
* item[=].item[=].text = "Before you became unwell, did you travel within New Zealand?"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].text.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].text.extension.valueExpression.expression = "'In the ' + %IncubationPeriod + ' before you became unwell, did you travel within New Zealand?'"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "InternationalAndDomesticTravel24"
* item[=].item[=].text = "Please provide details of your travel within New Zealand"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel23"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "InternationalAndDomesticTravel"
* item[=].text = "6. Source Investigation - International and Domestic Travel"
* item[=].enableWhen.question = "Privacy5"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $enterics-answer-code#yes "Yes"
* item[=].enableBehavior = #all
* item[=].required = false
* item[=].repeats = false
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "FoodAndDrinkingWater1"
* item[=].item[=].text = "Before you became unwell, did you eat out?"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].text.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].text.extension.valueExpression.expression = "'In the ' + %IncubationPeriod + ' before you became unwell, did you eat out e.g. any meals from a restaurant, cafe, event, street vendor, or other food establishment?'"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "FoodAndDrinkingWater2"
* item[=].item[=].text = "Please provide details of the food you ate out and where it was purchased from"
* item[=].item[=].enableWhen.question = "FoodAndDrinkingWater1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].item[0].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].item[=].linkId = "FoodAtHome_CAMP_RawMeat"
* item[=].item[=].item[=].text = "Raw or undercooked meats (with pink flesh or unclear juices)?"
* item[=].item[=].item[=].enableWhen.question = "DiagnosisCode"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerString = "CAMP"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[0].valueCoding = #chicken_poultry "Chicken or other poultry"
* item[=].item[=].item[=].answerOption[+].valueCoding = #lamb_hogget_mutton "Lamb / Hogget / Mutton"
* item[=].item[=].item[=].answerOption[+].valueCoding = #pork_products "Pork or pork products"
* item[=].item[=].item[=].answerOption[+].valueCoding = #beef_products "Beef or beef products, e.g. mince, hamburger, cold beef"
* item[=].item[=].item[=].answerOption[+].valueCoding = #home_kill_game "Any home kill meats or game meat"
* item[=].item[=].item[=].answerOption[+].valueCoding = #liver_products "Liver, e.g. lamb's fry, chicken liver or other liver products (pate)"
* item[=].item[=].item[=].answerOption[+].valueCoding = #deli_meats "Salami, pepperoni or other deli meats"
* item[=].item[=].item[=].answerOption[+].valueCoding = #offal "Offal, e.g. chicken livers"
* item[=].item[=].item[=].answerOption[+].valueCoding = #pet_food "Pet Food"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].item[=].linkId = "FoodAtHome_CAMP_Seafood"
* item[=].item[=].item[=].text = "Raw or undercooked seafood?"
* item[=].item[=].item[=].enableWhen.question = "DiagnosisCode"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerString = "CAMP"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[0].valueCoding = #shellfish "Shellfish, e.g. oysters, clams, crabs, shrimps or prawns"
* item[=].item[=].item[=].answerOption[+].valueCoding = #sushi_sashimi_ceviche "Sushi, sashimi, ceviche"
* item[=].item[=].item[=].answerOption[+].valueCoding = #other_seafood "Other seafood"
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].linkId = "FoodAndDrinkingWater4_CAMP"
* item[=].item[=].item[=].text = "Please provide details of the food products you ate at home"
* item[=].item[=].item[=].enableWhen.question = "DiagnosisCode"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerString = "CAMP"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].type = #group
* item[=].item[=].linkId = "FoodAndDrinkingWater4"
* item[=].item[=].text = "Before you became unwell, did you purchase, handle or eat any of the following products at home products at home? "
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].text.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].text.extension.valueExpression.expression = "'In the ' + %IncubationPeriod + 'b efore you became unwell, did you purchase, handle or eat any of the following products at home products at home?'"
* item[=].item[=].enableWhen.question = "DiagnosisCode"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerString = "CAMP"
* item[=].item[=].enableBehavior = #all
* item[=].item[+].item[0].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].item[=].linkId = "FoodAndDrinkingWater4_1_VTEC"
* item[=].item[=].item[=].text = " Raw or undercooked meats (with pink flesh or unclear juices)?"
* item[=].item[=].item[=].enableWhen.question = "DiagnosisCode"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.display = "VTEC"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[0].valueCoding = #chicken_poultry "Chicken or other poultry"
* item[=].item[=].item[=].answerOption[+].valueCoding = #lamb_hogget_mutton "Lamb"
* item[=].item[=].item[=].answerOption[+].valueCoding = #pork_products "Pork or pork products"
* item[=].item[=].item[=].answerOption[+].valueCoding = #beef_products "Beef or beef products, e.g. mince, hamburger, cold beef"
* item[=].item[=].item[=].answerOption[+].valueCoding = #home_kill_game "Any home kill meats or game meat"
* item[=].item[=].item[=].answerOption[+].valueCoding = #liver_products "Liver, e.g. lamb's fry, chicken liver or other liver products (pate)"
* item[=].item[=].item[=].answerOption[+].valueCoding = #deli_meats "Salami, pepperoni or other deli meats"
* item[=].item[=].item[=].answerOption[+].valueCoding = #offal "Offal, e.g. chicken livers"
* item[=].item[=].item[=].answerOption[+].valueCoding = #pet_food "Pet Food"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].item[=].linkId = "FoodAndDrinkingWater4_2_VTECH"
* item[=].item[=].item[=].text = "Raw or unwashed vegetables/fruit"
* item[=].item[=].item[=].enableWhen.question = "DiagnosisCode"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.display = "VTEC"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[0].valueCoding = #Tomatoes "Tomatoes"
* item[=].item[=].item[=].answerOption[+].valueCoding = #"Spring Onions" "Spring Onions"
* item[=].item[=].item[=].answerOption[+].valueCoding = #Carrots "Carrots"
* item[=].item[=].item[=].answerOption[+].valueCoding = #Greens "Leafy greens, e.g. Lettuce, Spinach"
* item[=].item[=].item[=].answerOption[+].valueCoding = #Salads "Packaged Salad"
* item[=].item[=].item[=].answerOption[+].valueCoding = #Microgreens "Sprouts, microgreens "
* item[=].item[=].item[=].answerOption[+].valueCoding = #Fruits " Fresh cut fruit, e.g. watermelon or berries"
* item[=].item[=].item[=].answerOption[+].valueCoding = #Berries "Berries"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].linkId = "FoodAndDrinkingWater4_3_VTECH"
* item[=].item[=].item[=].text = "Unpasteurised or fermented Juices"
* item[=].item[=].item[=].enableWhen.question = "DiagnosisCode"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.display = "VTEC"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[0].valueCoding = #VegJuice "Vegetable juice/s e.g. carrot juice, beet juice or mixed"
* item[=].item[=].item[=].answerOption[+].valueCoding = #FruitJuice " Freshly squeezed juice, e.g. Apple juice"
* item[=].item[=].item[=].answerOption[+].valueCoding = #FermentedJuice " Freshly prepared fermented juice, e.g. Kombucha "
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].item[=].linkId = "FoodAndDrinkingWater4_4_VTEC"
* item[=].item[=].item[=].text = "Other"
* item[=].item[=].item[=].enableWhen.question = "DiagnosisCode"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.display = "VTEC"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[0].valueCoding = #EggProd "Eat uncooked or runny eggs, homemade mayonnaise"
* item[=].item[=].item[=].answerOption[+].valueCoding = #FlourProd "Dough/batter, uncooked cake, biscuit mixture"
* item[=].item[=].type = #group
* item[=].item[=].linkId = "FoodAndDrinkingWater4_VTEC"
* item[=].item[=].enableWhen.question = "DiagnosisCode"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "VTEC"
* item[=].item[=].enableBehavior = #all
* item[=].item[+].item[0].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].item[=].linkId = "FoodAndDrinkingWater4_1_SALM"
* item[=].item[=].item[=].text = " Raw or undercooked meats (with pink flesh or unclear juices)?"
* item[=].item[=].item[=].enableWhen.question = "DiagnosisCode"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.display = "SALM"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[0].valueCoding = #chicken_poultry "Chicken or other poultry"
* item[=].item[=].item[=].answerOption[+].valueCoding = #lamb_hogget_mutton "Lamb"
* item[=].item[=].item[=].answerOption[+].valueCoding = #pork_products "Pork or pork products"
* item[=].item[=].item[=].answerOption[+].valueCoding = #beef_products "Beef or beef products, e.g. mince, hamburger, cold beef"
* item[=].item[=].item[=].answerOption[+].valueCoding = #home_kill_game "Any home kill meats or game meat"
* item[=].item[=].item[=].answerOption[+].valueCoding = #liver_products "Liver, e.g. lamb's fry, chicken liver or other liver products (pate)"
* item[=].item[=].item[=].answerOption[+].valueCoding = #deli_meats "Salami, pepperoni or other deli meats"
* item[=].item[=].item[=].answerOption[+].valueCoding = #offal "Offal, e.g. chicken livers"
* item[=].item[=].item[=].answerOption[+].valueCoding = #pet_food "Pet Food"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].item[=].linkId = "FoodAndDrinkingWater4_2_SALM"
* item[=].item[=].item[=].text = "Raw or unwashed vegetables/fruit"
* item[=].item[=].item[=].enableWhen.question = "DiagnosisCode"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.display = "SALM"
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[0].valueCoding = #Tomatoes "Tomatoes"
* item[=].item[=].item[=].answerOption[+].valueCoding = #"Spring Onions" "Spring Onions"
* item[=].item[=].item[=].answerOption[+].valueCoding = #Carrots "Carrots"
* item[=].item[=].item[=].answerOption[+].valueCoding = #Greens "Leafy greens, e.g. Lettuce, Spinach"
* item[=].item[=].item[=].answerOption[+].valueCoding = #Salads "Packaged Salad"
* item[=].item[=].item[=].answerOption[+].valueCoding = #Microgreens "Sprouts, microgreens "
* item[=].item[=].item[=].answerOption[+].valueCoding = #Fruits " Fresh cut fruit, e.g. watermelon or berries"
* item[=].item[=].item[=].answerOption[+].valueCoding = #Berries "Berries"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].linkId = "FoodAndDrinkingWater4_3_SALM"
* item[=].item[=].item[=].text = "Unpasteurised or fermented Juices"
* item[=].item[=].item[=].enableWhen.question = "DiagnosisCode"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.display = "SALM"
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption.valueCoding = #VegJuice "Vegetable juice/s e.g. carrot juice, beet juice or mixed"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].item[=].linkId = "FoodAndDrinkingWater4_4_SALM"
* item[=].item[=].item[=].text = "Other"
* item[=].item[=].item[=].enableWhen.question = "DiagnosisCode"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.display = "SALM"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[0].valueCoding = #EggProd "Eat uncooked or runny eggs, homemade mayonnaise"
* item[=].item[=].item[=].answerOption[+].valueCoding = #FlourProd "Dough/batter, uncooked cake, biscuit mixture"
* item[=].item[=].item[=].answerOption[+].valueCoding = #SeedProd " Sesame seed products e.g. bread, buns, salads, pretzels, hummus, tahini, halva"
* item[=].item[=].item[=].answerOption[+].valueCoding = #OtherSeed "Other seeds or seed products, e.g. chia, sunflower "
* item[=].item[=].item[=].answerOption[+].valueCoding = #SoyProd "Tofu or other soy based products"
* item[=].item[=].type = #group
* item[=].item[=].linkId = "FoodAndDrinkingWater4_SALM"
* item[=].item[=].enableWhen.question = "DiagnosisCode"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "SALM"
* item[=].item[=].enableBehavior = #all
* item[=].item[+].item[0].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].item[=].linkId = "FoodAndDrinkingWater4_1YERS"
* item[=].item[=].item[=].text = " Raw or undercooked meats (with pink flesh or unclear juices)?"
* item[=].item[=].item[=].enableWhen.question = "DiagnosisCode"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.display = "YERS"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[0].valueCoding = #pork_products "Pork or pork products"
* item[=].item[=].item[=].answerOption[+].valueCoding = #home_kill_game "Any home kill meats or game meat"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].item[=].linkId = "FoodAndDrinkingWater4_2YERS"
* item[=].item[=].item[=].text = "Raw or unwashed vegetables/fruit"
* item[=].item[=].item[=].enableWhen.question = "DiagnosisCode"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.display = "YERS"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[0].valueCoding = #Tomatoes "Tomatoes"
* item[=].item[=].item[=].answerOption[+].valueCoding = #"Spring Onions" "Spring Onions"
* item[=].item[=].item[=].answerOption[+].valueCoding = #Carrots "Carrots"
* item[=].item[=].item[=].answerOption[+].valueCoding = #Greens "Leafy greens, e.g. Lettuce, Spinach"
* item[=].item[=].item[=].answerOption[+].valueCoding = #Salads "Packaged Salad"
* item[=].item[=].item[=].answerOption[+].valueCoding = #Microgreens "Sprouts, microgreens "
* item[=].item[=].item[=].answerOption[+].valueCoding = #Fruits " Fresh cut fruit, e.g. watermelon or berries"
* item[=].item[=].item[=].answerOption[+].valueCoding = #Berries "Berries"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].linkId = "DeliFood_YERS"
* item[=].item[=].item[=].text = "Eat any of the following deli foods?"
* item[=].item[=].item[=].enableWhen.question = "DiagnosisCode"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.display = "YERS"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[0].valueCoding = #DeliFood1 "Sandwiches"
* item[=].item[=].item[=].answerOption[+].valueCoding = #DeliFood2 "Prepared salads, e.g. potato salad, chicken salad, or pasta salad"
* item[=].item[=].item[=].answerOption[+].valueCoding = #DeliFood3 "Salami, pepperoni or other deli meats"
* item[=].item[=].item[=].answerOption[+].valueCoding = #DeliFood4 "Sushi, sashimi"
* item[=].item[=].item[=].answerOption[+].valueCoding = #DeliFood5 "Cream filled pastries"
* item[=].item[=].item[=].answerOption[+].valueCoding = #DeliFood5 "Freshly prepared dips"
* item[=].item[=].type = #group
* item[=].item[=].linkId = "FoodAndDrinkingWater4_YERS"
* item[=].item[=].enableWhen.question = "DiagnosisCode"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "YERS"
* item[=].item[=].enableBehavior = #all
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "FoodAndDrinkingWater5"
* item[=].item[=].text = "Before you became unwell, did you consume untreated/raw (unpasteurised) milk or products made with raw milk?"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].text.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].text.extension.valueExpression.expression = "'In the ' + %IncubationPeriod + ' before you became unwell, did you consume untreated/raw (unpasteurised) milk or products made with raw milk, e.g. cheese, yoghurt?'"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "FoodAndDrinkingWater6"
* item[=].item[=].text = "Can you provide details of the untreated/raw (unpasteurised) milk or products you consumed?"
* item[=].item[=].enableWhen.question = "FoodAndDrinkingWater5"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "FoodAndDrinkingWater7"
* item[=].item[=].text = "What is your usual drinking water supply at home? e.g. council supply, bore, rainwater, etc…"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "FoodAndDrinkingWater8"
* item[=].item[=].text = "Before you became unwell, did you consume untreated water?"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].text.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].text.extension.valueExpression.expression = "'In the ' + %IncubationPeriod + ' before you became unwell, did you consume untreated water? E.g. untreated tank water?'"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "FoodAndDrinkingWater9"
* item[=].item[=].text = "Can you provide details of the untreated water you've consumed?"
* item[=].item[=].enableWhen.question = "FoodAndDrinkingWater8"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].type = #group
* item[=].linkId = "FoodAndDrinkingWater"
* item[=].text = "7. Source Investigation - Food and Drinking water"
* item[=].enableWhen.question = "Privacy5"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $enterics-answer-code#yes "Yes"
* item[=].enableBehavior = #all
* item[=].required = false
* item[=].repeats = false
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "RecreationalWater1"
* item[=].item[=].text = "Before you became unwell, did you go swimming or spend time in recreational water?"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].text.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].text.extension.valueExpression.expression = "'In the ' + %IncubationPeriod + ' before you became unwell, did you have any recreational contact with water? e.g. swimming, fishing, beach activities, kayaking, splash pad, spa pools'"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "RecreationalWater2"
* item[=].item[=].text = "Please provide details of your recreational contact with water"
* item[=].item[=].enableWhen.question = "RecreationalWater1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "RecreationalWater"
* item[=].text = "8. Source Investigation - Recreational Water"
* item[=].enableWhen.question = "Privacy5"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $enterics-answer-code#yes "Yes"
* item[=].enableBehavior = #all
* item[=].required = false
* item[=].repeats = false
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "ContactWithAnimals1"
* item[=].item[=].text = "Before you became unwell, did you have contact with any animals or their faeces? "
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].text.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].text.extension.valueExpression.expression = "'In the ' + %IncubationPeriod + ' before you became unwell, did you have any contact with animals or their faeces? This includes pets, birds, turtles/reptiles or farm animals?'"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "ContactWithAnimals2"
* item[=].item[=].text = "Please provide details of the contact you've had with animals or their faeces"
* item[=].item[=].enableWhen.question = "ContactWithAnimals1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "ContactWithAnimals"
* item[=].text = "9. Source Investigation - Contact with Animals"
* item[=].enableWhen.question = "Privacy5"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $enterics-answer-code#yes "Yes"
* item[=].enableBehavior = #all
* item[=].required = false
* item[=].repeats = false
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "ContactWithFaecalMatter1"
* item[=].item[=].text = "Before you became unwell, did you have any contact with human sources of faeces?"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].text.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].text.extension.valueExpression.expression = "'In the ' + %IncubationPeriod + ' before you became unwell, have you had any contact with human sources of faeces e.g. nappy changing, dirty public toilets or sewage?'"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "ContactWithFaecalMatter2"
* item[=].item[=].text = "Please provide details of the contact you've had with human sources of faeces"
* item[=].item[=].enableWhen.question = "ContactWithFaecalMatter1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "ContactWithFaecalMatter"
* item[=].text = "10. Source Investigation - Contact with Faecal Matter"
* item[=].enableWhen.question = "Privacy5"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $enterics-answer-code#yes "Yes"
* item[=].enableBehavior = #all
* item[=].required = false
* item[=].repeats = false
* item[+].item.type = #text
* item[=].item.linkId = "OtherPotentialSources1"
* item[=].item.text = "Do you have any ideas about what you think might have made you unwell?"
* item[=].item.required = false
* item[=].item.repeats = false
* item[=].type = #group
* item[=].linkId = "OtherPotentialSources"
* item[=].text = "11. Source Investigation - Other Potential Sources"
* item[=].enableWhen.question = "Privacy5"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $enterics-answer-code#yes "Yes"
* item[=].enableBehavior = #all
* item[=].required = false
* item[=].repeats = false
* item[+].type = #display
* item[=].linkId = "ThankYouMessage"
* item[=].text = "Thank you for taking the time to answer these questions that help in the investigation of this disease."
* item[=].enableWhen.question = "Privacy5"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $enterics-answer-code#yes "Yes"
* item[=].enableBehavior = #all
* extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension.valueExpression.name = "IncubationPeriod"
* extension.valueExpression.language = #text/fhirpath
* extension.valueExpression.expression = "iif(%resource.item.where(linkId='DiagnosisCode').answer.valueString = 'CAMP','1-10 days',iif(%resource.item.where(linkId='DiagnosisCode').answer.valueString = 'CRYP','1-12 days',iif(%resource.item.where(linkId='DiagnosisCode').answer.valueString = 'GIAR','3-25 days',iif(%resource.item.where(linkId='DiagnosisCode').answer.valueString = 'YERS','3-10 days',iif(%resource.item.where(linkId='DiagnosisCode').answer.valueString = 'SALM','1-7 days',iif(%resource.item.where(linkId='DiagnosisCode').answer.valueString = 'VTEC','2-10 days',''))))))"