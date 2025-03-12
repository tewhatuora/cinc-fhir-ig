Instance: PrivateColposcopyReferralQuestionnaire
InstanceOf: Questionnaire
Usage: #example
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/PrivateColposcopyReferralQuestionnaire"
* title = "Private Colposcopy Referral Summary Questionnaire"
* version = "0.1.1"
* status = #draft
* publisher = "Te Whatu Ora"
* purpose = "To gather the referral details of Private colposcopy procedure."
* experimental = false
* name = "PrivateColposcopyReferralQuestionnaire"
* subjectType = #Patient
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* useContext.valueCodeableConcept.text = "Private Colposcopy Visit Summary"
* identifier.use = #official
* identifier.value = "PrivateColposcopyReferralQuestionnaire"
* item[0].linkId = "p01-ClinicInformation"
* item[=].prefix = "page 01"
* item[=].type = #group
* item[=].text = "Clinic Information"
* item[=].item.linkId = "p01-q01-FacilityID"
* item[=].item.prefix = "page 01 question 1"
* item[=].item.type = #reference
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceResource"
* item[=].item.extension.valueCode = #Location
* item[=].item.text = "Colposcopy HPI facility ID"
* item[=].item.required = true
* item[+].linkId = "p02-ReferralInformation"
* item[=].prefix = "page 02"
* item[=].type = #group
* item[=].text = "Referral Information"
* item[=].item[0].linkId = "p02-q01-SelfReferral"
* item[=].item[=].prefix = "page 02 question 1"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Self Referral?"
* item[=].item[=].required = true
* item[=].item[=].item.linkId = "p02-q02.1-SelfReferral"
* item[=].item[=].item.prefix = "page 02 question 2.1"
* item[=].item[=].item.type = #display
* item[=].item[=].item.text = "If your patient has self-referred enter in their GP’s HPI-CPN and HPI Health Facility ID"
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[+].linkId = "p02-q02-ReferredByName"
* item[=].item[=].prefix = "page 02 question 2"
* item[=].item[=].type = #reference
* item[=].item[=].required = true
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceResource"
* item[=].item[=].extension.valueCode = #Practitioner
* item[=].item[=].text = "Referred by health worker name"
* item[=].item[+].linkId = "p02-q03-ReferredByFacilityID"
* item[=].item[=].prefix = "page 02 question 3"
* item[=].item[=].type = #reference
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceResource"
* item[=].item[=].extension.valueCode = #Location
* item[=].item[=].text = "Referred by health facility ID"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p02-q04-ReferralDateReceived"
* item[=].item[=].prefix = "page 02 question 5"
* item[=].item[=].type = #date
* item[=].item[=].text = "Referral received date"
* item[=].item[=].required = false
* item[=].item[+].linkId = "p02-q05-ReferralDateAccepted"
* item[=].item[=].prefix = "page 02 question 6"
* item[=].item[=].type = #date
* item[=].item[=].text = "Referral accepted date"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p02-q06-AppointmentDate"
* item[=].item[=].prefix = "page 02 question 7"
* item[=].item[=].type = #date
* item[=].item[=].text = "Appointment date"
* item[=].item[=].required = false
* item[=].item[+].linkId = "p02-q07-FirstVisit"
* item[=].item[=].prefix = "page 02 question 8"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "First colposcopy visit?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p02-q8-FollowUpType"
* item[=].item[=].prefix = "page 02 question 9"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Follow-up Colposcopy Visit"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "1st Follow Up Visit"
* item[=].item[=].answerOption[+].valueCoding.display = "2nd Follow Up Visit"
* item[=].item[=].answerOption[+].valueCoding.display = "3rd Follow Up Visit"
* item[=].item[=].answerOption[+].valueCoding.display = "4th or more Follow up Visit"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].repeats = false
* item[=].item[=].enableWhen.question = "p02-q07-FirstVisit"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p02-q9-FollowUpTimeFrame"
* item[=].item[=].prefix = "page 02 question 9"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Follow-up timeframe"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = #7D "7 Days"
* item[=].item[=].answerOption[+].valueCoding = #2W "2 Weeks"
* item[=].item[=].answerOption[+].valueCoding = #6W "6 Weeks"
* item[=].item[=].answerOption[+].valueCoding = #1M "1 Month"
* item[=].item[=].answerOption[+].valueCoding = #2M "2 Months"
* item[=].item[=].answerOption[+].valueCoding = #3M "3 Months"
* item[=].item[=].answerOption[+].valueCoding = #4M "4 Months"
* item[=].item[=].answerOption[+].valueCoding = #5M "5 Months"
* item[=].item[=].answerOption[+].valueCoding = #6M "6 Months"
* item[=].item[=].answerOption[+].valueCoding = #7M "7 Months"
* item[=].item[=].answerOption[+].valueCoding = #9M "9 Months"
* item[=].item[=].answerOption[+].valueCoding = #12M "12 Months"
* item[=].item[=].answerOption[+].valueCoding = #18M "18 Months"
* item[=].item[=].answerOption[+].valueCoding = #36M "36 Months"
* item[=].item[=].answerOption[+].valueCoding = #60M "60 Months"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].repeats = false
* item[=].item[=].enableWhen.question = "p02-q07-FirstVisit"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].enableBehavior = #all
* item[+].linkId = "p03-RefferalReason"
* item[=].prefix = "page 03"
* item[=].type = #group
* item[=].text = "Reason for Referral"
* item[=].required = true
* item[=].repeats = false
* item[=].item[0].linkId = "p03-q01-AssessmentReason"
* item[=].item[=].prefix = "page 03 question 1"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].text = "Assessment for the reason for referral"
* item[=].item[=].answerOption[0].valueCoding.display = "Any cytological evidence or suspicion of invasion"
* item[=].item[=].answerOption[+].valueCoding.display = "Any cytological glandular abnormality"
* item[=].item[=].answerOption[+].valueCoding.display = "HPV 16/18 with or without cytology"
* item[=].item[=].answerOption[+].valueCoding.display = "HPV other where the participant is immune compromised"
* item[=].item[=].answerOption[+].valueCoding.display = "HPV other with LSIL on two occasions if over 50 and 3 occasions if under 50"
* item[=].item[=].answerOption[+].valueCoding.display = "Positive test of cure"
* item[=].item[=].answerOption[+].valueCoding.display = "Low-grade clinical assessment"
* item[=].item[=].answerOption[+].valueCoding.display = "High-grade clinical assessment"
* item[=].item[=].answerOption[+].valueCoding.display = "Suspicion of an invasive cancer clinical assessment"
* item[=].item[=].answerOption[+].valueCoding.display = "HPV not detected with high-grade cytology"
* item[=].item[=].answerOption[+].valueCoding.display = "HPV not detected with suspicion or evidence of cancer on cytology"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[+].linkId = "p03-q02-OtherReason"
* item[=].item[=].prefix = "page 03 question 2"
* item[=].item[=].type = #string
* item[=].item[=].text = "Other Reason (if Any)"
* item[=].item[=].enableWhen.question = "p03-q01-AssessmentReason"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[=].enableBehavior = #all