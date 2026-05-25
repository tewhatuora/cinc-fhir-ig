Instance: CampylobacterEntericsDiseaseQuestionnaire
InstanceOf: Questionnaire
Usage: #example
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/CampylobacterEntericsDiseaseQuestionnaire"
* identifier.use = #official
* identifier.value = "CampylobacterEntericsDiseaseQuestionnaire"
* version = "1.0.0"
* name = "CampylobacterEntericsDiseaseQuestionnaire"
* title = "Campylobacter Enterics Disease Questionnaire"
* status = #active
* date = "2026-05-19T04:56:47.775Z"
* description = "Te Whatu Ora survey of Campylobacter Enterics Disease Symptoms and source locations"
* item[0].item[0].type = #display
* item[=].item[=].linkId = "Privacy1"
* item[=].item[=].text = "We may need to share some of your personal information with other agencies for health purposes and to ensure we meet our legal obligations. We may also share information for statistical and research purposes, but no information will be published in a form that could reasonably be expected to identify any individual.  To prevent the spread of disease, we may need to talk to your contacts, and information about where you’ve been and your movements while infectious may need to be shared with others. While we do everything we can to make sure that you remain anonymous, in certain situations more information may need to be given to contacts to prevent or reduce a serious threat to public health – this will always be discussed with you first.   If you would like more information about how your personal information is managed, please go to the Te Whatu Ora website, and look for our 'privacy & security' webpage.    Please note: If you are completing this questionnaire on behalf of someone else, (e.g. your child) the 'you/your' refers to the person who was unwell, not the person completing it.  "
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
* item[=].text = "Privacy statement"
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
* item[=].text = "1. Contact details"
* item[=].enableWhen.question = "Privacy5"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $enterics-answer-code#yes "Yes"
* item[=].enableBehavior = #all
* item[=].required = false
* item[=].repeats = false
* item[+].item[0].type = #string
* item[=].item[=].linkId = "Occupation1"
* item[=].item[=].text = "What is your primary occupation?"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "Occupation2"
* item[=].item[=].text = "Does your work (outside of your home) or activities (e.g. volunteer work) involve any of the following:  - Handling unwrapped food that will be eaten raw or without further cooking?  - Providing direct, hands on care to unwell people in healthcare facilities?   - Providing direct, hands on care to other people at increased risk due to age or disability?  - An early childhood service or group, e.g. kindergarten, play centre or day care?"
* item[=].item[=].required = false
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
* item[=].item[=].required = false
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
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].linkId = "Symptom2"
* item[=].item[=].text = "Which of the following symptoms have you experienced? Select all that apply"
* item[=].item[=].enableWhen.question = "Symptom1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].required = false
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
* item[=].item[=].required = false
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
* item[=].item[=].required = false
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
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "Symptom7"
* item[=].item[=].text = "What date did the diarrhoea start?"
* item[=].item[=].enableWhen.question = "Symptom2"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #option1 "Diarrhoea"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "Symptom8"
* item[=].item[=].text = "Has the diarrhoea stopped?"
* item[=].item[=].enableWhen.question = "Symptom2"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #option1 "Diarrhoea"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "Symptom9"
* item[=].item[=].text = "What date did the diarrhoea stop?"
* item[=].item[=].enableWhen.question = "Symptom8"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].enableBehavior = #all
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "Symptom10"
* item[=].item[=].text = "Have all your symptoms stopped?"
* item[=].item[=].enableWhen.question = "Symptom1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "Symptom11"
* item[=].item[=].text = "What date did your symptoms stop?"
* item[=].item[=].enableWhen.question = "Symptom10"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
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
* item[=].item[=].text = "In the 1-10 days before you became unwell have you had contact with a confirmed case?"
* item[=].item[=].required = false
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
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "ContactWithOthers6"
* item[=].item[=].text = "Where did you last have contact with them?"
* item[=].item[=].enableWhen.question = "ContactWithOthers2"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
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
* item[=].item[=].text = "In the 1-10 days before you became unwell, have you had any contact with people with a similar illness?"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "ContactWithOthers9"
* item[=].item[=].text = "What was their name?"
* item[=].item[=].enableWhen.question = "ContactWithOthers10"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "ContactWithOthers10"
* item[=].item[=].text = "In the 1-10 days before you became unwell have you been to any particular places where you might have been exposed to the illness? This might include an early childhood centre, a school or kura, a university, a hospital, doctors waiting room."
* item[=].item[=].enableWhen.question = "ContactWithOthers8"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "ContactWithOthers11"
* item[=].item[=].text = "Please provide details of the place / setting and date/s."
* item[=].item[=].enableWhen.question = "ContactWithOthers10"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "ContactWithOthers12"
* item[=].item[=].text = "In the 1-10 days before you became unwell, did you have any visitors from overseas?"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "ContactWithOthers13"
* item[=].item[=].text = "Please provide details of the visitors, including their country of origin and the nature of contact."
* item[=].item[=].enableWhen.question = "ContactWithOthers12"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "ContactWithOthers"
* item[=].text = "5. Source investigation - contact with others"
* item[=].enableWhen.question = "Privacy5"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $enterics-answer-code#yes "Yes"
* item[=].enableBehavior = #all
* item[=].required = false
* item[=].repeats = false
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "InternationalAndDomesticTravel1"
* item[=].item[=].text = "In the 1-10 days before you became unwell, were you overseas? "
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "InternationalAndDomesticTravel2"
* item[=].item[=].text = "If usually residing in New Zealand, what date did you leave? "
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "InternationalAndDomesticTravel3"
* item[=].item[=].text = "What date did you arrive in New Zealand?"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].linkId = "InternationalAndDomesticTravel4"
* item[=].item[=].text = "Last Country Visited (ISO 3166 list)"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #option1 "Option 1"
* item[=].item[=].answerOption[+].valueCoding = #option2 "Option 2"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "InternationalAndDomesticTravel5"
* item[=].item[=].text = "What region/city did you visit in this country?"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "InternationalAndDomesticTravel7"
* item[=].item[=].text = "What date did you enter this country?"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "InternationalAndDomesticTravel8"
* item[=].item[=].text = "What date did you leave this country?"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
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
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].linkId = "InternationalAndDomesticTravel10"
* item[=].item[=].text = "2nd Last Country Visited (ISO 3166 list)"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel9"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #option1 "Option 1"
* item[=].item[=].answerOption[+].valueCoding = #option2 "Option 2"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "InternationalAndDomesticTravel11"
* item[=].item[=].text = "What City/Region in that country?"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel9"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "InternationalAndDomesticTravel12"
* item[=].item[=].text = "What date did you enter this country?"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel9"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "InternationalAndDomesticTravel14"
* item[=].item[=].text = "What date did you leave this country?"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel9"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "InternationalAndDomesticTravel15"
* item[=].item[=].text = "Did you visit any additional countries?"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel9"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].linkId = "InternationalAndDomesticTravel16"
* item[=].item[=].text = "3rd last Country Visited (ISO Country list)"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel15"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #option1 "Option 1"
* item[=].item[=].answerOption[+].valueCoding = #option2 "Option 2"
* item[=].item[+].type = #text
* item[=].item[=].linkId = "InternationalAndDomesticTravel17"
* item[=].item[=].text = "What City/Region in that country"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel15"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "InternationalAndDomesticTravel18"
* item[=].item[=].text = "What date did you enter this country?"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel15"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #date
* item[=].item[=].linkId = "InternationalAndDomesticTravel19"
* item[=].item[=].text = "What date did you leave this country"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel15"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "InternationalAndDomesticTravel20"
* item[=].item[=].text = "Considering that the incubation period (the time between you being exposed to the illness and you developing symptoms) may be longer than 1-10 days in some situations, do you have a history of overseas travel that could explain this infection, even if the travel was not recent?"
* item[=].item[=].required = false
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
* item[=].item[=].text = "In the 1-10 days before you became unwell, did you travel within New Zealand?"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "InternationalAndDomesticTravel24"
* item[=].item[=].text = "Please provide details of your travel within New Zealand"
* item[=].item[=].enableWhen.question = "InternationalAndDomesticTravel23"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "InternationalAndDomesticTravel"
* item[=].text = "6. Source investigation - international and domestic travel"
* item[=].enableWhen.question = "Privacy5"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $enterics-answer-code#yes "Yes"
* item[=].enableBehavior = #all
* item[=].required = false
* item[=].repeats = false
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "FoodAndDrinkingWater1"
* item[=].item[=].text = "In the 1-10 days before you became unwell, did you eat out e.g. any meals from a restaurant, cafe, event, street vendor, or other food establishment?"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "FoodAndDrinkingWater2"
* item[=].item[=].text = "Please provide details of the food you ate out and where it was purchased from"
* item[=].item[=].enableWhen.question = "FoodAndDrinkingWater1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].item[0].type = #open-choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].item[=].linkId = "FoodAndDrinkingWater3_1"
* item[=].item[=].item[=].text = "Raw or undercooked meats (with pink flesh or unclear juices)? "
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[0].valueCoding = #RawMeat1 "Chicken or other poultry"
* item[=].item[=].item[=].answerOption[+].valueCoding = #RawMeat2 "Lamb / Hogget / Mutton"
* item[=].item[=].item[=].answerOption[+].valueCoding = #RawMeat3 "Pork or pork products"
* item[=].item[=].item[=].answerOption[+].valueCoding = #RawMeat4 "Beef or beef products, e.g. mince, hamburger, cold beef"
* item[=].item[=].item[=].answerOption[+].valueCoding = #RawMeat5 "Any home kill meats or game meat"
* item[=].item[=].item[=].answerOption[+].valueCoding = #RawMeat6 "Liver, e.g. lamb's fry, chicken liver or other liver products (pate)"
* item[=].item[=].item[=].answerOption[+].valueCoding = #RawMeat7 "Salami, pepperoni or other deli meats"
* item[=].item[=].item[=].answerOption[+].valueCoding = #RawMeat8 " Offal, e.g. chicken livers"
* item[=].item[=].item[=].answerOption[+].valueCoding = #RawMeat9 "Pet Food"
* item[=].item[=].item[+].type = #open-choice
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $qic#check-box "Check-box"
* item[=].item[=].item[=].linkId = "FoodAndDrinkingWater3_2"
* item[=].item[=].item[=].text = "Raw or undercooked seafood?"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[0].valueCoding = #RawSeafood1 "Shellfish, e.g. oysters, clams, crabs, shrimps or prawns"
* item[=].item[=].item[=].answerOption[+].valueCoding = #RawSeafood2 "Sushi, sashimi, ceviche"
* item[=].item[=].item[=].answerOption[+].valueCoding = #RawSeafood3 "Other seafood"
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].linkId = "FoodAndDrinkingWater3_3"
* item[=].item[=].item[=].text = "Please provide details of the food products you ate at home"
* item[=].item[=].type = #group
* item[=].item[=].linkId = "FoodAndDrinkingWater3"
* item[=].item[=].text = "In the 1-10 days before you became unwell, did you purchase, handle or eat any of the following products at home products at home?"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "FoodAndDrinkingWater5"
* item[=].item[=].text = "In the 1-10 days before you became unwell, did you consume untreated/raw (unpasteurised) milk or products made with raw milk, e.g. cheese, yoghurt?"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "FoodAndDrinkingWater6"
* item[=].item[=].text = "Can you provide details of the untreated/raw (unpasteurised) milk or products you consumed?"
* item[=].item[=].enableWhen.question = "FoodAndDrinkingWater5"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "FoodAndDrinkingWater7"
* item[=].item[=].text = "What is your usual drinking water supply at home? \nTool tip: examples include: council supply, bore, rainwater etc"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "FoodAndDrinkingWater8"
* item[=].item[=].text = "In the 1-10 days before you became unwell, did you consume untreated water? E.g. untreated tank water"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "FoodAndDrinkingWater9"
* item[=].item[=].text = "Can you provide details of the untreated water you've consumed?"
* item[=].item[=].enableWhen.question = "FoodAndDrinkingWater8"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "FoodAndDrinkingWater"
* item[=].text = "7. Source investigation - food and drinking water"
* item[=].enableWhen.question = "Privacy5"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $enterics-answer-code#yes "Yes"
* item[=].enableBehavior = #all
* item[=].required = false
* item[=].repeats = false
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "RecreationalWater1"
* item[=].item[=].text = "In the 1-10 days before you became unwell, did you have any recreational contact with water e.g. swimming, fishing, beach activities, kayaking, splash pad, spa pools"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "RecreationalWater2"
* item[=].item[=].text = "Please provide details of your recreational contact with water"
* item[=].item[=].enableWhen.question = "RecreationalWater1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "RecreationalWater"
* item[=].text = "8. Source investigation - recreational water"
* item[=].enableWhen.question = "Privacy5"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $enterics-answer-code#yes "Yes"
* item[=].enableBehavior = #all
* item[=].required = false
* item[=].repeats = false
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "ContactWithAnimals1"
* item[=].item[=].text = "In the 1-10 days before you became unwell, did you have any contact with animals or their faeces? This includes pets, birds, turtles/reptiles or farm animals"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "ContactWithAnimals2"
* item[=].item[=].text = "Please provide details of the contact you've had with animals or their faeces"
* item[=].item[=].enableWhen.question = "ContactWithAnimals1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "ContactWithAnimals"
* item[=].text = "9. Source investigation - contact with animals"
* item[=].enableWhen.question = "Privacy5"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $enterics-answer-code#yes "Yes"
* item[=].enableBehavior = #all
* item[=].required = false
* item[=].repeats = false
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "ContactWithFaecalMatter1"
* item[=].item[=].text = "In the 1-10 days before you became unwell, have you had any contact with human sources of faeces e.g. nappy changing, dirty public toilets or sewage?"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "ContactWithFaecalMatter2"
* item[=].item[=].text = "Please provide details of the contact you've had with human sources of faeces"
* item[=].item[=].enableWhen.question = "ContactWithFaecalMatter1"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "ContactWithFaecalMatter"
* item[=].text = "10. Source investigation - contact with faecal matter"
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
* item[=].text = "11. Source investigation - other potential sources"
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