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
      ],
      "type": "group",
      "linkId": "patientInfo",
      "text": "Patient Information"
    },
    {
      "item": [
        {
          "type": "boolean",
          "linkId": "operation_10",
          "text": "Have you ever had an operation and/or anaesthetic?",
          "required": true,
          "repeats": false
        },
        {
          "type": "boolean",
          "linkId": "closerelative",
          "text": "Have you or a close relative ever had problems with an anaesthetic?",
          "required": true,
          "repeats": false
        },
        {
          "type": "string",
          "linkId": "problemdescribe",
          "text": "If YES, describe the problem:",
          "enableWhen": [
            {
              "question": "closerelative",
              "operator": "=",
              "answerBoolean": true
            }
          ],
          "enableBehavior": "any",
          "required": true,
          "repeats": false
        },
        {
          "type": "boolean",
          "linkId": "medicationsallergy",
          "text": "Are you allergic to any medications or other substances?",
          "required": true,
          "repeats": false
        },
        {
          "type": "string",
          "linkId": "answerallergy",
          "text": "If YES, please list:",
          "enableWhen": [
            {
              "question": "medicationsallergy",
              "operator": "=",
              "answerBoolean": true
            }
          ],
          "enableBehavior": "all",
          "required": true,
          "repeats": false
        },
        {
          "type": "boolean",
          "linkId": "anymedications",
          "text": "Are you taking or have you taken any medications in the last 6 months?",
          "required": true,
          "repeats": false
        },
        {
          "type": "string",
          "linkId": "allmedications",
          "text": "If YES, please list all medications:",
          "enableWhen": [
            {
              "question": "anymedications",
              "operator": "=",
              "answerBoolean": true
            }
          ],
          "enableBehavior": "all",
          "repeats": false
        },
        {
          "type": "boolean",
          "linkId": "hadmdro",
          "text": "Have you ever had MDRO? (Superbug infection)",
          "repeats": false
        },
        {
          "type": "boolean",
          "linkId": "workedorpatient",
          "text": "Have you worked or been a patient in a hospital in NZ or overseas in the last 6 months? ",
          "repeats": false
        },
        {
          "type": "string",
          "linkId": "answerwhen",
          "text": "If YES, state when and where:",
          "enableWhen": [
            {
              "question": "workedorpatient",
              "operator": "=",
              "answerBoolean": true
            }
          ],
          "enableBehavior": "all",
          "repeats": false
        },
        {
          "type": "boolean",
          "linkId": "artificialjoint",
          "text": "Do you have an artificial joint, heart valve or a pacemaker?",
          "repeats": false
        },
        {
          "type": "boolean",
          "linkId": "looseteeth",
          "text": "Do you have dentures, partial plate, loose teeth?",
          "repeats": false
        },
        {
          "type": "boolean",
          "linkId": "smoke",
          "text": "Do you smoke?",
          "repeats": false
        },
        {
          "type": "string",
          "linkId": "howmanysmoke",
          "text": "If YES, how many per day?",
          "enableWhen": [
            {
              "question": "smoke",
              "operator": "=",
              "answerBoolean": true
            }
          ],
          "enableBehavior": "all",
          "repeats": false
        },
        {
          "type": "boolean",
          "linkId": "sufferingcold",
          "text": "Are you suffering from or recovering from a cold, sore throat, flu or covid19?",
          "repeats": false
        },
        {
          "type": "boolean",
          "linkId": "pregnant",
          "text": "Are you or could you be pregnant?",
          "repeats": false
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
          "text": "Heart condition",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "angina",
          "text": "Chest pain/angina",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "bloodpressure",
          "text": "High blood pressure",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "ankleswelling",
          "text": "Ankle swelling",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "shortnessbreath",
          "text": "Abnormal shortness of breath",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "bloodclots",
          "text": "Blood clots in legs/lungs",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "rheumaticfever",
          "text": "Rheumatic fever",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "pcough",
          "text": "Persistent cough",
          "required": true,
          "repeats": false
        },
        {
          "type": "boolean",
          "linkId": "asthma",
          "text": "Asthma",
          "required": true,
          "repeats": false
        },
        {
          "type": "boolean",
          "linkId": "lungproblem",
          "text": "Other lung problems",
          "required": true,
          "repeats": false
        },
        {
          "type": "boolean",
          "linkId": "reflux",
          "text": "Heartburn/reflux",
          "required": true,
          "repeats": false
        },
        {
          "type": "boolean",
          "linkId": "sulcer",
          "text": "Stomach ulcer",
          "required": true,
          "repeats": false
        },
        {
          "type": "boolean",
          "linkId": "bleedingdisorder",
          "text": "Bleeding disorders",
          "required": true,
          "repeats": false
        },
        {
          "type": "boolean",
          "linkId": "anaemia",
          "text": "Anaemia",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "stroke",
          "text": "Stroke/blackouts",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "kidneydisorder",
          "text": "Kidney disorders",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "jaundice",
          "text": "Hepatitis/jaundice",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "efits",
          "text": "Epilepsy/fits",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "migraine_01",
          "text": "Migraine",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "diabetestype",
          "text": "Diabetes type 1 / 2",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "depressionnerves",
          "text": "Depression/nerves",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "arthritis",
          "text": "Arthritis",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "alcoholrelated",
          "text": "Alcohol related problems",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "motionsickness",
          "text": "Motion sickness",
          "required": true
        },
        {
          "type": "string",
          "linkId": "other",
          "text": "Other",
          "required": true
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
          "text": "Support Person Name:",
          "required": true
        },
        {
          "type": "string",
          "linkId": "contactphone",
          "text": "Contact Phone:",
          "required": true
        },
        {
          "type": "string",
          "linkId": "patientsignature",
          "text": "Patient Signature:",
          "required": true
        },
        {
          "type": "date",
          "linkId": "date",
          "text": "Date",
          "required": true
        },
        {
          "type": "display",
          "linkId": "smokingcessation",
          "text": "ABC for Smoking Cessation"
        },
        {
          "type": "boolean",
          "linkId": "eversmoked",
          "text": "Has the patient ever smoked?",
          "required": true
        },
        {
          "type": "string",
          "linkId": "lastsmoke",
          "text": "When did they last smoke?",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "quitadvise",
          "text": "Advised to quit?",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "vape",
          "text": "Does the patient vape?",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "withnicotine",
          "text": "with nicotine?",
          "required": true
        },
        {
          "type": "display",
          "linkId": "quitsupport",
          "text": "Supported to quit (tick all that apply)"
        },
        {
          "type": "boolean",
          "linkId": "quitcard",
          "text": "NRT or Quitcard provided",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "referraltossss",
          "text": "Referral to SSSS",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "supportdeclined",
          "text": "Support declined",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "cessationprogramme",
          "text": "Already on cessation programme",
          "required": true
        },
        {
          "type": "date",
          "linkId": "date_11",
          "text": "Date",
          "required": true
        },
        {
          "type": "string",
          "linkId": "sign_12",
          "text": "Sign",
          "required": true
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
          "text": ">55yrs & Maori or Pacific Islander",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "agemore75",
          "text": ">75yrs (Other Ethnicity)",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "ptfallenpast",
          "text": "Pt has fallen in past year",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "assessordeemspt",
          "text": "Assessor deems pt requires a full assessment",
          "required": true
        },
        {
          "type": "date",
          "linkId": "date_21",
          "text": "Date",
          "required": true
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