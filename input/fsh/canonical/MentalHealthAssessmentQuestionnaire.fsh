Alias: $sct = http://snomed.info/sct

Instance: undefined
InstanceOf: Questionnaire
Usage: #example
* item[0].item[0].type = #text
* item[=].item[=].linkId = "p01-q01-IssueDescription"
* item[=].item[=].prefix = "page 1 question 1"
* item[=].item[=].text = "Description of presenting issue"
* item[=].item[=].required = true
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p01-q02-Mood"
* item[=].item[=].code = $sct#106131003 "Mood finding"
* item[=].item[=].prefix = "page 1 question 2"
* item[=].item[=].text = "Assessment of Mood"
* item[=].item[=].required = true
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p01-q03-SleepHygine"
* item[=].item[=].code = $sct#106168000 "Finding related to sleep"
* item[=].item[=].prefix = "page 1 question 3"
* item[=].item[=].text = "Assessment of sleep hygiene"
* item[=].item[=].required = true
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p01-q04-SupportStructure"
* item[=].item[=].prefix = "page 1 question 4"
* item[=].item[=].text = "Assessment of whanau and support structures"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p01-q05-Trauma"
* item[=].item[=].prefix = "page 1 question 5"
* item[=].item[=].text = "Is there a history of previous trauma and stressors?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p01-q05-1-Trauma.Description"
* item[=].item[=].prefix = "page 1 question 5.1"
* item[=].item[=].text = "Please provide information surrounding this history."
* item[=].item[=].enableWhen.question = "p01-q05-Trauma"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "8567918990548"
* item[=].item[=].code = $sct#23233009 "Previous known suicide attempt"
* item[=].item[=].prefix = "page 1 question 6"
* item[=].item[=].text = "Have there been any previous suicide attempts?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p01-q06-1-SuicideAttemptHistory.Description"
* item[=].item[=].prefix = "page 1 question 6.1"
* item[=].item[=].text = "Please provide details surrounding these attempts"
* item[=].item[=].enableWhen.question = "p01-q06-SuicideAttemptHistory"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p01-q07-CigaretteSmoker"
* item[=].item[=].code = $sct#65568007 "Cigarette smoker"
* item[=].item[=].prefix = "page 1 question 7"
* item[=].item[=].text = "Is the patient smoking cigarettes?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "p01-q01-1-CigaretteSmoker.HowMany"
* item[=].item[=].prefix = "page 1 question 7.1"
* item[=].item[=].text = "How many cigarettes per day?"
* item[=].item[=].enableWhen.question = "p01-q07-CigaretteSmoker"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding.display = "Less than 10"
* item[=].item[=].answerOption[+].valueCoding.display = "10 or more"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p01-q08-CurrentDrinker"
* item[=].item[=].code = $sct#219006 "Current drinker"
* item[=].item[=].prefix = "page 1 question 8"
* item[=].item[=].text = "Does the patient consume alcohol?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #choice
* item[=].item[=].linkId = "p01-q08-1-CurrentDrinker.HowMany"
* item[=].item[=].prefix = "page 1 question 8.1"
* item[=].item[=].text = "How many drinks per week?"
* item[=].item[=].enableWhen.question = "p01-q08-CurrentDrinker"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueCoding.display = "Less than 10"
* item[=].item[=].answerOption[+].valueCoding.display = "10 to 16"
* item[=].item[=].answerOption[+].valueCoding.display = "More than 16"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p01-q09-RecreationalDrugs"
* item[=].item[=].code = $sct#424848002 "Recreational drug user"
* item[=].item[=].prefix = "page 1 question 9"
* item[=].item[=].text = "Does the patient use recreational drugs?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #text
* item[=].item[=].linkId = "p01-q10-PsychiatricMedication"
* item[=].item[=].prefix = "page 1 question 10"
* item[=].item[=].text = "Psychiatric Medication?"
* item[=].type = #group
* item[=].linkId = "p01"
* item[=].prefix = "page 1"
* item[=].text = "History and Examination"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "p02-q01"
* item[=].item[=].code = $sct#304594002 "Suicidal intent"
* item[=].item[=].prefix = "page 2 question 1"
* item[=].item[=].text = "Suicidal Intent?"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "p02-q02"
* item[=].item[=].code = $sct#285261008 "Dangerous and harmful thoughts"
* item[=].item[=].prefix = "page 2 question 2"
* item[=].item[=].text = "Threat to others?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "p02"
* item[=].prefix = "page 2"
* item[=].text = "Risk Assessment"
* item[+].item.item[0].type = #text
* item[=].item.item[=].linkId = "p03-g01-q01"
* item[=].item.item[=].code = $sct#404684003 "Clinical finding"
* item[=].item.item[=].prefix = "page 3 group 1 question 1"
* item[=].item.item[=].text = "Diagnosis"
* item[=].item.item[=].required = true
* item[=].item.item[=].repeats = false
* item[=].item.item[+].type = #date
* item[=].item.item[=].linkId = "p03-g01-q02"
* item[=].item.item[=].prefix = "page 3 group 1 question 2"
* item[=].item.item[=].text = "Year of Diagnosis"
* item[=].item.item[=].required = true
* item[=].item.item[=].repeats = false
* item[=].item.item[+].type = #string
* item[=].item.item[=].linkId = "p03-g01-q03"
* item[=].item.item[=].prefix = "page 3 group 1 question 3"
* item[=].item.item[=].text = "Place of Diagnosis"
* item[=].item.item[=].required = true
* item[=].item.item[=].repeats = false
* item[=].item.item[+].type = #boolean
* item[=].item.item[=].linkId = "p03-g01-q04"
* item[=].item.item[=].prefix = "page 3 group 1 question 4"
* item[=].item.item[=].text = "Hospitalisation?"
* item[=].item.item[=].required = true
* item[=].item.item[=].repeats = false
* item[=].item.item[+].type = #boolean
* item[=].item.item[=].linkId = "p03-g01-q05"
* item[=].item.item[=].prefix = "page 3 group 1 question 5"
* item[=].item.item[=].text = "Active?"
* item[=].item.item[=].required = true
* item[=].item.type = #group
* item[=].item.linkId = "p03-g01"
* item[=].item.prefix = "page 3 group 1"
* item[=].item.text = "Add Diagnosis"
* item[=].item.required = false
* item[=].item.repeats = true
* item[=].type = #group
* item[=].linkId = "p03"
* item[=].prefix = "page 3"
* item[=].text = "Current and past psychiatric diagnosis"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "p04-q01"
* item[=].item[=].prefix = "page 4 question 1"
* item[=].item[=].text = "Send note to GP Inbox?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].initial.valueBoolean = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "p04-q02"
* item[=].item[=].prefix = "page 4 question 2"
* item[=].item[=].text = "GP Practice Name"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "p04-q03"
* item[=].item[=].prefix = "page 4 question 3"
* item[=].item[=].text = "Practice EDI"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "p04"
* item[=].prefix = "page 4"
* item[=].text = "General Practice Information"
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/ActiveMonitoringDay7Survey"
* title = "Mental Health Assessment Survey"
* status = #draft
* description = "Te Whatu Ora Mental health Assessment Survey"