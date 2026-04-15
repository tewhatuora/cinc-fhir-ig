Instance: DHOPatientScreeningToolIPC
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOPatientScreeningToolIPC"
* version = "1.0"
* name = "DHOPatientScreeningToolIPC"
* title = "Patient Screening Tool IPC (District)"
* status = #draft
* subjectType = #Patient
* description = "Patient infection prevention and control screening tool for district use."
* purpose = "Patient infection prevention and control screening tool for district use."
* item[0].item[0].type = #date
* item[=].item[=].linkId = "date_01"
* item[=].item[=].text = "Date"
* item[=].item[+].type = #time
* item[=].item[=].linkId = "time_02"
* item[=].item[=].text = "Time"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "areacompleted_03"
* item[=].item[=].text = "Area completed"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "assessor_04"
* item[=].item[=].text = "Assessor"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "sign_05"
* item[=].item[=].text = "sign"
* item[=].type = #string
* item[=].linkId = "assessordetails_06"
* item[=].text = "Assessor Details"
* item[+].item[0].type = #string
* item[=].item[=].linkId = "surname"
* item[=].item[=].text = "Surname"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "first-names"
* item[=].item[=].text = "First Names"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "nhi"
* item[=].item[=].text = "NHI"
* item[=].item[+].type = #date
* item[=].item[=].linkId = "date-of-birth"
* item[=].item[=].text = "Date of Birth"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "gender"
* item[=].item[=].text = "Gender"
* item[=].type = #string
* item[=].linkId = "patientdetails"
* item[=].text = "Patient Details"
* item[+].item.item[0].type = #boolean
* item[=].item.item[=].linkId = "a1"
* item[=].item.item[=].text = "Has an MDRO alert (SPICS/HCS) or been previously MDRO positive?"
* item[=].item.item[+].type = #boolean
* item[=].item.item[=].linkId = "a2"
* item[=].item.item[=].text = "Been admitted overnight in any North Island hospital in the last 12 months?"
* item[=].item.item[+].type = #boolean
* item[=].item.item[=].linkId = "a3"
* item[=].item.item[=].text = "Been admitted overnight to an overseas hospital in the last 12 months?"
* item[=].item.item[+].type = #boolean
* item[=].item.item[=].linkId = "a4"
* item[=].item.item[=].text = "Resided/travelled to the Indian subcontinent or South-East Asia in the last 12 months? Refer to MDRO-Admission-assessment-flowchart.dox (200982) for countries"
* item[=].item.item[+].type = #boolean
* item[=].item.item[=].linkId = "a5"
* item[=].item.item[=].text = "In the last 6 months been a resident at Marne Street Hospital (Otago)?"
* item[=].item.item[+].item.type = #display
* item[=].item.item[=].item.linkId = "a-action"
* item[=].item.item[=].item.text = "If answered yes, refer to MDRO-Admission-assessment-flowchart.dox (200982) for testing and placement."
* item[=].item.item[=].type = #boolean
* item[=].item.item[=].linkId = "a6"
* item[=].item.item[=].text = "In the last 6 months been a resident at Longwood Care Home (Southland)?"
* item[=].item.type = #boolean
* item[=].item.linkId = "question-a-info"
* item[=].item.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].item.prefix.extension.valueString = "font-weight: bold;"
* item[=].item.text = "A: MDRO? Multi Drug Resistant Organism (e.g., MRSA, ESBL, VRE, CPO)"
* item[=].type = #group
* item[=].linkId = "question-a-group"
* item[=].text = "Question A – Required for all overnight admissions, plus dialysis outpatients, and Oncology outpatients"
* item[+].item[0].item.item.type = #display
* item[=].item[=].item.item.linkId = "b-action"
* item[=].item[=].item.item.prefix = "B – Contact"
* item[=].item[=].item.item.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[=].item[=].item.item.prefix.extension.valueString = "font-weight: bold;"
* item[=].item[=].item.item.text = " precautions Single room, stool chart"
* item[=].item[=].item.item.enableWhen.question = "b-more-than-3"
* item[=].item[=].item.item.enableWhen.operator = #=
* item[=].item[=].item.item.enableWhen.answerBoolean = true
* item[=].item[=].item.item.enableBehavior = #any
* item[=].item[=].item.type = #boolean
* item[=].item[=].item.linkId = "b-more-than-3"
* item[=].item[=].item.text = ">3 watery bowel motions or any episodes in the past 24 hours"
* item[=].item[=].type = #boolean
* item[=].item[=].linkId = "b"
* item[=].item[=].text = "B: Diarrhoea / vomiting?"
* item[=].item[+].item.type = #display
* item[=].item[=].item.linkId = "DiseaseSpecificIsolation"
* item[=].item[=].item.text = "Refer to Disease Specific Isolation Guidelines (20435) for isolation period or discuss with IPC team. "
* item[=].item[=].item.enableWhen.question = "Infectious Disease"
* item[=].item[=].item.enableWhen.operator = #=
* item[=].item[=].item.enableWhen.answerBoolean = false
* item[=].item[=].item.enableBehavior = #any
* item[=].item[=].type = #boolean
* item[=].item[=].linkId = "Infectious Disease"
* item[=].item[=].text = "C: Other Infectious Disease"
* item[=].item[+].type = #display
* item[=].item[=].linkId = "Acuterespiratoryillnesses"
* item[=].item[=].text = "Acute respiratory illnesses"
* item[=].item[+].item.item[0].type = #string
* item[=].item[=].item.item[=].linkId = "d-respiratory-organism"
* item[=].item[=].item.item[=].text = "Respiratory organism"
* item[=].item[=].item.item[=].enableWhen.question = "d-positive-test-detail"
* item[=].item[=].item.item[=].enableWhen.operator = #=
* item[=].item[=].item.item[=].enableWhen.answerBoolean = true
* item[=].item[=].item.item[=].enableBehavior = #any
* item[=].item[=].item.item[+].type = #date
* item[=].item[=].item.item[=].linkId = "d-positive-test-date"
* item[=].item[=].item.item[=].text = "Date of positive test"
* item[=].item[=].item.item[=].enableWhen.question = "d-positive-test-detail"
* item[=].item[=].item.item[=].enableWhen.operator = #=
* item[=].item[=].item.item[=].enableWhen.answerBoolean = true
* item[=].item[=].item.item[=].enableBehavior = #any
* item[=].item[=].item.item[+].type = #display
* item[=].item[=].item.item[=].linkId = "d-action"
* item[=].item[=].item.item[=].text = "Refer to Disease Specific Isolation Guidelines (20435) for isolation period or discuss with IPC team."
* item[=].item[=].item.item[=].enableWhen.question = "d-positive-test-detail"
* item[=].item[=].item.item[=].enableWhen.operator = #=
* item[=].item[=].item.item[=].enableWhen.answerBoolean = true
* item[=].item[=].item.item[=].enableBehavior = #any
* item[=].item[=].item.type = #boolean
* item[=].item[=].item.linkId = "d-positive-test-detail"
* item[=].item[=].item.text = "Had a positive respiratory test in the past 10 days (or 14 days if immune compromised)"
* item[=].item[=].type = #string
* item[=].item[=].linkId = "acuterespiratoryillness"
* item[=].item[=].text = "D: Positive test for acute respiratory illness? E.g., COVID / Influenza / RSV"
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "e-runny-nose"
* item[=].item[=].item[=].text = "Runny nose/congestion"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "e-sore-throat"
* item[=].item[=].item[=].text = "Sore/scratchy throat"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "e-new-cough"
* item[=].item[=].item[=].text = "New cough"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "e-shortness-breath"
* item[=].item[=].item[=].text = "New shortness of breath"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "e-unexplained-fever"
* item[=].item[=].item[=].text = "Unexplained fever"
* item[=].item[=].item[+].item.type = #display
* item[=].item[=].item[=].item.linkId = "covid-rat-display"
* item[=].item[=].item[=].item.text = "All RAT results (positive or negative) are to be uploaded to Eclair (20435).  Note -- Influenza/RSV RATs are unreliable, PCR required for diagnosis. Inpatients – If RAT negative then complete a COVID PCR. If patient is COVID negative, place in droplet precautions and discuss with IPC."
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].linkId = "covid-rat-instructions"
* item[=].item[=].item[=].text = "Yes to E -- COVID RAT Test"
* item[=].item[=].type = #boolean
* item[=].item[=].linkId = "e"
* item[=].item[=].text = "E: Respiratory symptoms? Any new or worsening symptoms in the past 10 days (14 if immune compromised)"
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "f-household-contact"
* item[=].item[=].item[=].text = "A household contact or living in a communal situation with a person who has a confirmed COVID infection?"
* item[=].item[=].item[=].enableWhen.question = "f"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[+].type = #display
* item[=].item[=].item[=].linkId = "f-action-display"
* item[=].item[=].item[=].text = "Yes to F -- Droplet isolation for 5 days, staff to wear N95 mask. Only test if symptoms develop."
* item[=].item[=].type = #boolean
* item[=].item[=].linkId = "f"
* item[=].item[=].text = "F: Contact with COVID?"
* item[=].type = #group
* item[=].linkId = "questions-b-f-group"
* item[=].text = "Questions B–F – Ask all patients in all clinical areas, including all inpatients and outpatients"
* item[+].type = #display
* item[=].linkId = "all-no-action"
* item[=].text = "If no to all questions, Standard Precautions"