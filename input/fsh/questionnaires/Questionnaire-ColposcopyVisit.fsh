Instance: PrivateColposcopyVisitQuestionnaire
InstanceOf: Questionnaire
Usage: #example
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/PrivateColposcopyVisitQuestionnaire"
* title = "Private Colposcopy Visit Summary Questionnaire"
* version = "0.1.1"
* status = #draft
* publisher = "Te Whatu Ora"
* purpose = "To gather the Visit details of Private Colposcopy procedure."
* experimental = false
* name = "PrivateColposcopyVisitQuestionnaire"
* subjectType = #Patient
* identifier.use = #official
* identifier.value = "PrivateColposcopyVisitQuestionnaire"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* useContext.valueCodeableConcept.text = "Private Colposcopy Visit Summary"
* item[0].linkId = "p01-ClinicInformation"
* item[=].prefix = "page 01"
* item[=].type = #group
* item[=].text = "Clinic Information"
* item[=].item.linkId = "p01-q01-ClinicName"
* item[=].item.prefix = "page 01 question 1"
* item[=].item.type = #reference
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceResource"
* item[=].item.extension.valueCode = #Location
* item[=].item.text = "Colposcopy HPI facility ID"
* item[=].item.repeats = false
* item[+].linkId = "p02-VisitInformation"
* item[=].prefix = "page 02"
* item[=].type = #group
* item[=].text = "Colposcopy Visit"
* item[=].item[0].linkId = "p02-q01-VisitDate"
* item[=].item[=].prefix = "page 02 question 1"
* item[=].item[=].type = #date
* item[=].item[=].text = "Date of Visit"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p02-q02-AdmissionType"
* item[=].item[=].prefix = "page 02 question 2"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Admission Type"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = #O "Outpatient"
* item[=].item[=].answerOption[+].valueCoding = #D "Day Patient"
* item[=].item[=].answerOption[+].valueCoding = #I "Inpatient"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p02-q03-ColposcopyPerformed"
* item[=].item[=].prefix = "page 02 question 3"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Colposcopy Performed"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p02-q04-ColposcopySite"
* item[=].item[=].prefix = "page 02 question 4"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Colposcopy Site"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = #R "Cervical"
* item[=].item[=].answerOption[+].valueCoding = #V "Vaginal"
* item[=].item[=].answerOption[+].valueCoding = #B "Both Cervical and Vaginal"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p02-q05-ColposcopySiteOther"
* item[=].item[=].prefix = "page 02 question 5"
* item[=].item[=].type = #text
* item[=].item[=].text = "Please describe the Alternative Site"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].enableWhen.question = "p02-q04-ColposcopySite"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p02-q06-ResultsDiscussed"
* item[=].item[=].prefix = "page 02 question 6"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Review / Results Discussed?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p02-q07-ArrangedTreatment"
* item[=].item[=].prefix = "page 02 question 7"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Arranged Treatment?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[+].linkId = "p03-ColposcopyFindings"
* item[=].prefix = "page 03"
* item[=].type = #group
* item[=].text = "Colposcopy Findings"
* item[=].item[0].linkId = "p03-q01-HysterectomyStatus"
* item[=].item[=].prefix = "page 03 question 1"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Patient has total hysterectomy?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p03-q02-SquamocolumnarJunction"
* item[=].item[=].prefix = "page 03 question 2"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Squamocolumnar junction visible"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = #COMPL "Completely"
* item[=].item[=].answerOption[+].valueCoding = #PART "Partially"
* item[=].item[=].answerOption[+].valueCoding = #NVIS "Not Visible"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].repeats = false
* item[=].item[=].enableWhen.question = "p03-q01-HysterectomyStatus"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p03-q03-TransformationZone"
* item[=].item[=].prefix = "page 03 question 3"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Transformation Zone type"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = #COMPL "Completely"
* item[=].item[=].answerOption[+].valueCoding = #PART "Partially"
* item[=].item[=].answerOption[+].valueCoding = #NVIS "Not Visible"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].repeats = false
* item[=].item[=].enableWhen.question = "p03-q01-HysterectomyStatus"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p03-q04-LesionPresent"
* item[=].item[=].prefix = "page 03 question 4"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Lesion Present"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = #Y "Yes"
* item[=].item[=].answerOption[+].valueCoding = #N "No"
* item[=].item[=].answerOption[+].valueCoding.display = "Inconclusive"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p03-q05-QuandrantsInvolved"
* item[=].item[=].prefix = "page 03 question 5"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Number of Quadrants Involved"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "1"
* item[=].item[=].answerOption[+].valueCoding.display = "2"
* item[=].item[=].answerOption[+].valueCoding.display = "3"
* item[=].item[=].answerOption[+].valueCoding.display = "4"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].repeats = false
* item[=].item[=].enableWhen.question = "p03-q04-LesionPresent"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #Y "Yes"
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p03-q06-ColposcopicAppearance"
* item[=].item[=].prefix = "page 03 question 6"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].text = "Colposcopic appearance"
* item[=].item[=].answerOption[0].valueCoding = #NRML "Normal"
* item[=].item[=].answerOption[+].valueCoding = #ABML "Abnormal"
* item[=].item[=].answerOption[+].valueCoding = #INCON "Inconclusive"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[+].linkId = "p03-q07-LesionVisible"
* item[=].item[=].prefix = "page 03 question 7"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Limits of Lesion Visible"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].enableWhen.question = "p03-q04-LesionPresent"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #Y "Yes"
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p03-q08-AbnormalityGrade"
* item[=].item[=].prefix = "page 03 question 8"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Predicted Grade of Abnormality"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding = #"Low-Grade Squamous" "Low-Grade Squamous"
* item[=].item[=].answerOption[+].valueCoding = #ABML "High-Grade Squamous"
* item[=].item[=].answerOption[+].valueCoding = #INCON "Glandular (AIS)"
* item[=].item[=].answerOption[+].valueCoding = #INCON "Micro-invasive cancer"
* item[=].item[=].answerOption[+].valueCoding = #INCON "Invasive cancer (squamous/glandular)"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p03-q06-ColposcopicAppearance"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #ABML "Abnormal"
* item[=].item[=].enableBehavior = #all
* item[+].linkId = "p04-ActionsTaken"
* item[=].prefix = "page 04"
* item[=].type = #group
* item[=].text = "Actions Taken"
* item[=].item[0].linkId = "p04-q01-CervicalSample"
* item[=].item[=].prefix = "page 04 question 1"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Cervical / vaginal sample"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = #RPT "Cervical / Vaginal Smear"
* item[=].item[=].answerOption[+].valueCoding = #HPV "HPV test"
* item[=].item[=].answerOption[+].valueCoding.display = "Neither"
* item[=].item[=].answerOption[+].valueCoding.display = "Both"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p04-q02-PunchBiopsy"
* item[=].item[=].prefix = "page 04 question 2"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Punch biopsy"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p04-q03-BiopsySite"
* item[=].item[=].prefix = "page 04 question 3"
* item[=].item[=].type = #text
* item[=].item[=].text = "Site of Biopsy(s)"
* item[=].item[=].required = true
* item[=].item[=].enableWhen.question = "p04-q02-PunchBiopsy"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p04-q04-BiopsyReason"
* item[=].item[=].prefix = "page 04 question 4"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Reason for not taking biopsy(s)"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding.display = "Declined"
* item[=].item[=].answerOption[+].valueCoding.display = "Pregnant"
* item[=].item[=].answerOption[+].valueCoding.display = "Discarded as inadequate"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].enableWhen.question = "p04-q02-PunchBiopsy"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].enableBehavior = #all
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p04-q05-BiopsyReasonOther"
* item[=].item[=].prefix = "page 04 question 5"
* item[=].item[=].type = #text
* item[=].item[=].text = "Other Reason for biopsy not taken"
* item[=].item[=].required = true
* item[=].item[=].enableWhen.question = "p04-q04-BiopsyReason"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p04-q06-TreatmentTaken"
* item[=].item[=].prefix = "page 04 question 6"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Treatment this visit"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p04-q07-TreatmentType"
* item[=].item[=].prefix = "page 04 question 7"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Type of treatment"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = #ELCT "Wireloop excisional procedure"
* item[=].item[=].answerOption[+].valueCoding = #LASA "Laser ablation"
* item[=].item[=].answerOption[+].valueCoding.display = "Ablation by means other than laser"
* item[=].item[=].answerOption[+].valueCoding = #CKNF "Cold knife cone biopsy cervix"
* item[=].item[=].answerOption[+].valueCoding = #DIC "Diathermy cone"
* item[=].item[=].answerOption[+].valueCoding = #LASE "Laser cone"
* item[=].item[=].answerOption[+].valueCoding = #HYST "Total hysterectomy"
* item[=].item[=].answerOption[+].valueCoding = #SUBH "Sub-total hysterectomy"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].repeats = false
* item[=].item[=].enableWhen.question = "p04-q06-TreatmentTaken"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[+].linkId = "p04-q08-AnaesthesiaUsed"
* item[=].item[=].prefix = "page 04 question 8"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Local or general anaesthesia used"
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = #GEN "General"
* item[=].item[=].answerOption[+].valueCoding = #LOCAL "Local"
* item[=].item[=].answerOption[+].valueCoding = #NA "N/A"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p04-q09-AnaesthesiaReason"
* item[=].item[=].prefix = "page 04 question 9"
* item[=].item[=].type = #text
* item[=].item[=].text = "Reason for General Anasthesia"
* item[=].item[=].required = true
* item[=].item[=].enableWhen.question = "p04-q08-AnaesthesiaUsed"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #GEN "General"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].repeats = false
* item[=].item[=].item.linkId = "p04-q09.1-AnaesthesiaReasonHelpText"
* item[=].item[=].item.prefix = "page 04 question 9.1"
* item[=].item[=].item.type = #display
* item[=].item[=].item.text = "This information is required as 80% of anaesthesia should be local"
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[+].linkId = "p05-DataRecieved"
* item[=].prefix = "page 05"
* item[=].type = #group
* item[=].text = "Data Recieved"
* item[=].item[0].linkId = "p05-q01-HistologyReport"
* item[=].item[=].prefix = "page 05 question 1"
* item[=].item[=].type = #date
* item[=].item[=].text = "Date histology specimen report received"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p05-q02-DecisionDate"
* item[=].item[=].prefix = "page 05 question 2"
* item[=].item[=].type = #date
* item[=].item[=].text = "Decision to treat date"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p05-q03-InformParticipantDate"
* item[=].item[=].prefix = "page 05 question 3"
* item[=].item[=].type = #date
* item[=].item[=].text = "Date participant informed"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p05-q04-FollowupRecommended"
* item[=].item[=].prefix = "page 05 question 4"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Follow-up management at colposcopy recommended"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "p05-q05-NextVisit"
* item[=].item[=].prefix = "page 05 question 5"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Next visit recommended in (months"
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
* item[=].item[=].enableWhen.question = "p05-q04-FollowupRecommended"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].repeats = false