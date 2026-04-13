{
  "resourceType": "Questionnaire",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
    ]
  },
  "url": "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOPreoperativeQuestionnaireDaySurgeryDunedinHospital",
  "version": "1.0",
  "name": "DHOPreoperativeQuestionnaireDaySurgeryDunedinHospital",
  "title": "Preoperative Questionnaire Day Surgery Dunedin Hospital",
  "status": "active",
  "description": "Pre-operative assessment questionnaire for day surgery patients at Dunedin Hospital.",
  "purpose": "To collect pre-operative clinical and risk information prior to day surgery.",
  "item": [
    {
      "type": "group",
      "linkId": "patientInfo",
      "text": "Patient Information",
      "item": [
        {
          "type": "string",
          "linkId": "surname_01",
          "text": "Surname"
        },
        {
          "type": "string",
          "linkId": "nhi_02",
          "text": "NHI"
        },
        {
          "type": "string",
          "linkId": "othernames_03",
          "text": "Other Names"
        },
        {
          "type": "date",
          "linkId": "dob_04",
          "text": "DOB"
        },
        {
          "type": "integer",
          "linkId": "age_05",
          "text": "Age"
        },
        {
          "type": "string",
          "linkId": "ward_06",
          "text": "Ward"
        },
        {
          "type": "string",
          "linkId": "consultant_07",
          "text": "Consultant"
        },
        {
          "type": "string",
          "linkId": "adreess_08",
          "text": "Address"
        },
        {
          "type": "string",
          "linkId": "phonenumber_09",
          "text": "Phone Number"
        }
      ]
    },
    {
      "item": [
        {
          "type": "boolean",
          "linkId": "operation_10",
          "text": "Have you ever had an operation and/or anaesthetic?",
          "required": false,
          "repeats": false
        },
        {
          "type": "boolean",
          "linkId": "closerelative",
          "text": "Have you or a close relative ever had problems with an anaesthetic?",
          "required": false,
          "repeats": false
        },
        {
          "type": "string",
          "linkId": "problemdescribe",
          "text": "If YES, describe the problem:",
          "enableWhen": [
            {
              "question": "852788868684",
              "operator": "=",
              "answerBoolean": true
            }
          ],
          "enableBehavior": "all",
          "required": false,
          "repeats": false
        },
        {
          "type": "boolean",
          "linkId": "medicationsallergy",
          "text": "Are you allergic to any medications or other substances?",
          "required": false,
          "repeats": false
        },
        {
          "type": "string",
          "linkId": "answerallergy",
          "text": "If YES, please list:",
          "enableWhen": [
            {
              "question": "463827774956",
              "operator": "=",
              "answerBoolean": true
            }
          ],
          "enableBehavior": "all",
          "required": false,
          "repeats": false
        },
        {
          "type": "boolean",
          "linkId": "anymedications",
          "text": "Are you taking or have you taken any medications in the last 6 months?"
        },
        {
          "type": "string",
          "linkId": "allmedications",
          "text": "If YES, please list all medications:",
          "enableWhen": [
            {
              "question": "796544660002",
              "operator": "=",
              "answerBoolean": true
            }
          ],
          "enableBehavior": "all"
        },
        {
          "type": "boolean",
          "linkId": "hadmdro",
          "text": "Have you ever had MDRO? (Superbug infection)"
        },
        {
          "type": "boolean",
          "linkId": "workedorpatient",
          "text": "Have you worked or been a patient in a hospital in NZ or overseas in the last 6 months? "
        },
        {
          "type": "string",
          "linkId": "answerwhen",
          "text": "If YES, state when and where:",
          "enableWhen": [
            {
              "question": "204699377255",
              "operator": "=",
              "answerBoolean": true
            }
          ],
          "enableBehavior": "all"
        },
        {
          "type": "boolean",
          "linkId": "artificialjoint",
          "text": "Do you have an artificial joint, heart valve or a pacemaker?"
        },
        {
          "type": "boolean",
          "linkId": "looseteeth",
          "text": "Do you have dentures, partial plate, loose teeth?"
        },
        {
          "type": "boolean",
          "linkId": "smoke",
          "text": "Do you smoke?"
        },
        {
          "type": "string",
          "linkId": "howmanysmoke",
          "text": "If YES, how many per day?",
          "enableWhen": [
            {
              "question": "450367581447",
              "operator": "=",
              "answerBoolean": true
            }
          ],
          "enableBehavior": "all"
        },
        {
          "type": "boolean",
          "linkId": "sufferingcold",
          "text": "Are you suffering from or recovering from a cold, sore throat, flu or covid19?"
        },
        {
          "type": "boolean",
          "linkId": "pregnant",
          "text": "Are you or could you be pregnant?"
        }
      ],
      "type": "group",
      "linkId": "sectioone_01",
      "text": "Section One",
      "readOnly": false
    },
    {
      "item": [
        {
          "type": "display",
          "linkId": "symptoms",
          "text": "Have you suffered from any of these symptoms or medical conditions?"
        },
        {
          "type": "boolean",
          "linkId": "heartcondition",
          "text": "Heart condition"
        },
        {
          "type": "boolean",
          "linkId": "angina",
          "text": "Chest pain/angina"
        },
        {
          "type": "boolean",
          "linkId": "bloodpressure",
          "text": "High blood pressure"
        },
        {
          "type": "boolean",
          "linkId": "ankleswelling",
          "text": "Ankle swelling"
        },
        {
          "type": "boolean",
          "linkId": "shortnessbreath",
          "text": "Abnormal shortness of breath"
        },
        {
          "type": "boolean",
          "linkId": "bloodclots",
          "text": "Blood clots in legs/lungs"
        },
        {
          "type": "boolean",
          "linkId": "rheumaticfever",
          "text": "Rheumatic fever"
        },
        {
          "type": "boolean",
          "linkId": "pcough",
          "text": "Persistent cough"
        },
        {
          "type": "boolean",
          "linkId": "asthma",
          "text": "Asthma"
        },
        {
          "type": "boolean",
          "linkId": "lungproblem",
          "text": "Other lung problems"
        },
        {
          "type": "boolean",
          "linkId": "reflux",
          "text": "Heartburn/reflux"
        },
        {
          "type": "boolean",
          "linkId": "sulcer",
          "text": "Stomach ulcer"
        },
        {
          "type": "boolean",
          "linkId": "bleedingdisorder",
          "text": "Bleeding disorders"
        },
        {
          "type": "boolean",
          "linkId": "anaemia",
          "text": "Anaemia"
        },
        {
          "type": "boolean",
          "linkId": "stroke",
          "text": "Stroke/blackouts"
        },
        {
          "type": "boolean",
          "linkId": "kidneydisorder",
          "text": "Kidney disorders"
        },
        {
          "type": "boolean",
          "linkId": "jaundice",
          "text": "Hepatitis/jaundice"
        },
        {
          "type": "boolean",
          "linkId": "efits",
          "text": "Epilepsy/fits"
        },
        {
          "type": "boolean",
          "linkId": "migraine_01",
          "text": "Migraine"
        },
        {
          "type": "boolean",
          "linkId": "diabetestype",
          "text": "Diabetes type 1 / 2"
        },
        {
          "type": "boolean",
          "linkId": "depressionnerves",
          "text": "Depression/nerves"
        },
        {
          "type": "boolean",
          "linkId": "arthritis",
          "text": "Arthritis"
        },
        {
          "type": "boolean",
          "linkId": "alcoholrelated",
          "text": "Alcohol related problems"
        },
        {
          "type": "boolean",
          "linkId": "motionsickness",
          "text": "Motion sickness"
        },
        {
          "type": "string",
          "linkId": "other",
          "text": "Other"
        }
      ],
      "type": "group",
      "linkId": "sectiontwo",
      "text": "Section Two",
      "required": false,
      "repeats": false
    },
    {
      "item": [
        {
          "type": "display",
          "linkId": "adultdrive",
          "text": "Following surgery I will have a responsible adult drive me home and stay with me for 24hrs."
        },
        {
          "type": "string",
          "linkId": "supportpersonname",
          "text": "Support Person Name:"
        },
        {
          "type": "string",
          "linkId": "contactphone",
          "text": "Contact Phone:"
        },
        {
          "type": "string",
          "linkId": "patientsignature",
          "text": "Patient Signature:"
        },
        {
          "type": "date",
          "linkId": "date",
          "text": "Date"
        },
        {
          "type": "display",
          "linkId": "smokingcessation",
          "text": "ABC for Smoking Cessation"
        },
        {
          "type": "boolean",
          "linkId": "eversmoked",
          "text": "Has the patient ever smoked?"
        },
        {
          "type": "string",
          "linkId": "lastsmoke",
          "text": "When did they last smoke?"
        },
        {
          "type": "boolean",
          "linkId": "quitadvise",
          "text": "Advised to quit?"
        },
        {
          "type": "boolean",
          "linkId": "vape",
          "text": "Does the patient vape?"
        },
        {
          "type": "boolean",
          "linkId": "withnicotine",
          "text": "with nicotine?"
        },
        {
          "type": "display",
          "linkId": "quitsupport",
          "text": "Supported to quit (tick all that apply)"
        },
        {
          "type": "boolean",
          "linkId": "quitcard",
          "text": "NRT or Quitcard provided"
        },
        {
          "type": "boolean",
          "linkId": "referraltossss",
          "text": "Referral to SSSS"
        },
        {
          "type": "boolean",
          "linkId": "supportdeclined",
          "text": "Support declined"
        },
        {
          "type": "boolean",
          "linkId": "cessationprogramme",
          "text": "Already on cessation programme"
        },
        {
          "type": "date",
          "linkId": "date_11",
          "text": "Date"
        },
        {
          "type": "string",
          "linkId": "sign_12",
          "text": "Sign"
        },
        {
          "type": "display",
          "linkId": "fallsriskassessment",
          "text": "Falls Risk Assessment"
        },
        {
          "type": "display",
          "linkId": "fallsriskalert",
          "text": "If “yes” to the last question, write ‘falls risk’ in orange alert box on the front of the Day Surgery Clinical Pathway & place a red bracelet on pt."
        },
        {
          "type": "boolean",
          "linkId": "agemore55",
          "text": ">55yrs & Maori or Pacific Islander"
        },
        {
          "type": "boolean",
          "linkId": "agemore75",
          "text": ">75yrs (Other Ethnicity)"
        },
        {
          "type": "boolean",
          "linkId": "ptfallenpast",
          "text": "Pt has fallen in past year"
        },
        {
          "type": "boolean",
          "linkId": "assessordeemspt",
          "text": "Assessor deems pt requires a full assessment"
        },
        {
          "type": "date",
          "linkId": "date_21",
          "text": "Date"
        },
        {
          "type": "string",
          "linkId": "sign_22",
          "text": "Sign:"
        }
      ],
      "type": "group",
      "linkId": "sectionthree",
      "text": "Section Three",
      "required": false,
      "repeats": false
    }
  ]
}