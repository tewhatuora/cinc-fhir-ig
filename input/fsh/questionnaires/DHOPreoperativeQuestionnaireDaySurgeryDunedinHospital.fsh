Instance: DHOPreoperativeQuestionnaireDaySurgeryDunedinHospital
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOPreoperativeQuestionnaireDaySurgeryDunedinHospital"
* version = "1.0"
* identifier.use = #official
* identifier.value = "DHOPreoperativeQuestionnaireDaySurgeryDunedinHospital"
* name = "DHOPreoperativeQuestionnaireDaySurgeryDunedinHospital"
* title = "Preoperative Questionnaire Day Surgery Dunedin Hospital"
* status = #active
* description = "Pre-operative assessment questionnaire for day surgery patients at Dunedin Hospital."
* purpose = "To collect pre-operative clinical and risk information prior to day surgery."
* item[0].item[0].type = #string
* item[=].item[=].linkId = "surname_01"
* item[=].item[=].text = "Surname"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "nhi_02"
* item[=].item[=].text = "NHI"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "othernames_03"
* item[=].item[=].text = "Other Names"
* item[=].item[+].type = #date
* item[=].item[=].linkId = "dob_04"
* item[=].item[=].text = "DOB"
* item[=].item[+].type = #integer
* item[=].item[=].linkId = "age_05"
* item[=].item[=].text = "Age"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "ward_06"
* item[=].item[=].text = "Ward"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "consultant_07"
* item[=].item[=].text = "Consultant"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "adreess_08"
* item[=].item[=].text = "Address"
* item[=].item[+].type = #string
* item[=].item[=].linkId = "phonenumber_09"
* item[=].item[=].text = "Phone Number"
* item[=].type = #group
* item[=].linkId = "patientInfo"
* item[=].text = "Patient Information"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "operation_10"
* item[=].item[=].text = "Have you ever had an operation and/or anaesthetic?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "closerelative"
* item[=].item[=].text = "Have you or a close relative ever had problems with an anaesthetic?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "problemdescribe"
* item[=].item[=].text = "If YES, describe the problem:"
* item[=].item[=].enableWhen.question = "closerelative"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #any
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "medicationsallergy"
* item[=].item[=].text = "Are you allergic to any medications or other substances?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "answerallergy"
* item[=].item[=].text = "If YES, please list:"
* item[=].item[=].enableWhen.question = "medicationsallergy"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "anymedications"
* item[=].item[=].text = "Are you taking or have you taken any medications in the last 6 months?"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "allmedications"
* item[=].item[=].text = "If YES, please list all medications:"
* item[=].item[=].enableWhen.question = "anymedications"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "hadmdro"
* item[=].item[=].text = "Have you ever had MDRO? (Superbug infection)"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "workedorpatient"
* item[=].item[=].text = "Have you worked or been a patient in a hospital in NZ or overseas in the last 6 months? "
* item[=].item[=].repeats = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "answerwhen"
* item[=].item[=].text = "If YES, state when and where:"
* item[=].item[=].enableWhen.question = "workedorpatient"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "artificialjoint"
* item[=].item[=].text = "Do you have an artificial joint, heart valve or a pacemaker?"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "looseteeth"
* item[=].item[=].text = "Do you have dentures, partial plate, loose teeth?"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "smoke"
* item[=].item[=].text = "Do you smoke?"
* item[=].item[=].repeats = false
* item[=].item[+].type = #string
* item[=].item[=].linkId = "howmanysmoke"
* item[=].item[=].text = "If YES, how many per day?"
* item[=].item[=].enableWhen.question = "smoke"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].enableBehavior = #all
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "sufferingcold"
* item[=].item[=].text = "Are you suffering from or recovering from a cold, sore throat, flu or covid19?"
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "pregnant"
* item[=].item[=].text = "Are you or could you be pregnant?"
* item[=].item[=].repeats = false
* item[=].type = #group
* item[=].linkId = "sectioone_01"
* item[=].text = "Section One"
* item[=].readOnly = false
* item[+].item[0].type = #display
* item[=].item[=].linkId = "symptoms"
* item[=].item[=].text = "Have you suffered from any of these symptoms or medical conditions?"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "heartcondition"
* item[=].item[=].text = "Heart condition"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "angina"
* item[=].item[=].text = "Chest pain/angina"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "bloodpressure"
* item[=].item[=].text = "High blood pressure"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "ankleswelling"
* item[=].item[=].text = "Ankle swelling"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "shortnessbreath"
* item[=].item[=].text = "Abnormal shortness of breath"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "bloodclots"
* item[=].item[=].text = "Blood clots in legs/lungs"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "rheumaticfever"
* item[=].item[=].text = "Rheumatic fever"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "pcough"
* item[=].item[=].text = "Persistent cough"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "asthma"
* item[=].item[=].text = "Asthma"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "lungproblem"
* item[=].item[=].text = "Other lung problems"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "reflux"
* item[=].item[=].text = "Heartburn/reflux"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "sulcer"
* item[=].item[=].text = "Stomach ulcer"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "bleedingdisorder"
* item[=].item[=].text = "Bleeding disorders"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "anaemia"
* item[=].item[=].text = "Anaemia"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "stroke"
* item[=].item[=].text = "Stroke/blackouts"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "kidneydisorder"
* item[=].item[=].text = "Kidney disorders"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "jaundice"
* item[=].item[=].text = "Hepatitis/jaundice"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "efits"
* item[=].item[=].text = "Epilepsy/fits"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "migraine_01"
* item[=].item[=].text = "Migraine"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "diabetestype"
* item[=].item[=].text = "Diabetes type 1 / 2"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "depressionnerves"
* item[=].item[=].text = "Depression/nerves"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "arthritis"
* item[=].item[=].text = "Arthritis"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "alcoholrelated"
* item[=].item[=].text = "Alcohol related problems"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "motionsickness"
* item[=].item[=].text = "Motion sickness"
* item[=].item[=].required = true
* item[=].item[+].type = #string
* item[=].item[=].linkId = "other"
* item[=].item[=].text = "Other"
* item[=].item[=].required = true
* item[=].type = #group
* item[=].linkId = "sectiontwo"
* item[=].text = "Section Two"
* item[=].required = false
* item[=].repeats = false
* item[+].item[0].type = #display
* item[=].item[=].linkId = "adultdrive"
* item[=].item[=].text = "Following surgery I will have a responsible adult drive me home and stay with me for 24hrs."
* item[=].item[+].type = #string
* item[=].item[=].linkId = "supportpersonname"
* item[=].item[=].text = "Support Person Name:"
* item[=].item[=].required = true
* item[=].item[+].type = #string
* item[=].item[=].linkId = "contactphone"
* item[=].item[=].text = "Contact Phone:"
* item[=].item[=].required = true
* item[=].item[+].type = #string
* item[=].item[=].linkId = "patientsignature"
* item[=].item[=].text = "Patient Signature:"
* item[=].item[=].required = true
* item[=].item[+].type = #date
* item[=].item[=].linkId = "date"
* item[=].item[=].text = "Date"
* item[=].item[=].required = true
* item[=].item[+].type = #display
* item[=].item[=].linkId = "smokingcessation"
* item[=].item[=].text = "ABC for Smoking Cessation"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "eversmoked"
* item[=].item[=].text = "Has the patient ever smoked?"
* item[=].item[=].required = true
* item[=].item[+].type = #string
* item[=].item[=].linkId = "lastsmoke"
* item[=].item[=].text = "When did they last smoke?"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "quitadvise"
* item[=].item[=].text = "Advised to quit?"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "vape"
* item[=].item[=].text = "Does the patient vape?"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "withnicotine"
* item[=].item[=].text = "with nicotine?"
* item[=].item[=].required = true
* item[=].item[+].type = #display
* item[=].item[=].linkId = "quitsupport"
* item[=].item[=].text = "Supported to quit (tick all that apply)"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "quitcard"
* item[=].item[=].text = "NRT or Quitcard provided"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "referraltossss"
* item[=].item[=].text = "Referral to SSSS"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "supportdeclined"
* item[=].item[=].text = "Support declined"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "cessationprogramme"
* item[=].item[=].text = "Already on cessation programme"
* item[=].item[=].required = true
* item[=].item[+].type = #date
* item[=].item[=].linkId = "date_11"
* item[=].item[=].text = "Date"
* item[=].item[=].required = true
* item[=].item[+].type = #string
* item[=].item[=].linkId = "sign_12"
* item[=].item[=].text = "Sign"
* item[=].item[=].required = true
* item[=].item[+].type = #display
* item[=].item[=].linkId = "fallsriskassessment"
* item[=].item[=].text = "Falls Risk Assessment"
* item[=].item[+].type = #display
* item[=].item[=].linkId = "fallsriskalert"
* item[=].item[=].text = "If “yes” to the last question, write ‘falls risk’ in orange alert box on the front of the Day Surgery Clinical Pathway & place a red bracelet on pt."
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "agemore55"
* item[=].item[=].text = ">55yrs & Maori or Pacific Islander"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "agemore75"
* item[=].item[=].text = ">75yrs (Other Ethnicity)"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "ptfallenpast"
* item[=].item[=].text = "Pt has fallen in past year"
* item[=].item[=].required = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "assessordeemspt"
* item[=].item[=].text = "Assessor deems pt requires a full assessment"
* item[=].item[=].required = true
* item[=].item[+].type = #date
* item[=].item[=].linkId = "date_21"
* item[=].item[=].text = "Date"
* item[=].item[=].required = true
* item[=].item[+].type = #string
* item[=].item[=].linkId = "sign_22"
* item[=].item[=].text = "Sign:"
* item[=].type = #group
* item[=].linkId = "sectionthree"
* item[=].text = "Section Three"
* item[=].required = false
* item[=].repeats = false