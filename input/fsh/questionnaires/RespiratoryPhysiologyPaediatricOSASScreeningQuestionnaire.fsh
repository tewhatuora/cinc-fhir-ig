{
  "resourceType": "Questionnaire",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
    ]
  },
  "title": " Respiratory Physiology Paediatric OSAS Screening Questionnaire",
  "status": "active",
  "description": "A Respiratory Physiology Paediatric OSAS Screening Questionnaire.",
  "item": [
    {
      "type": "display",
      "linkId": "patientformcomplete",
      "text": "Please ensure patient details are completed here"
    },
    {
      "type": "string",
      "linkId": "surname_11",
      "text": "Surname"
    },
    {
      "type": "string",
      "linkId": "fullname_12",
      "text": "Full Name"
    },
    {
      "type": "string",
      "linkId": "nhinumber_13",
      "text": "NHI number"
    },
    {
      "type": "date",
      "linkId": "dob_14",
      "text": "DOB"
    },
    {
      "type": "choice",
      "linkId": "sex_15",
      "text": "Sex",
      "answerOption": [
        {
          "valueCoding": {
            "code": "male",
            "display": "Male"
          }
        },
        {
          "valueCoding": {
            "system": "Female",
            "code": "female"
          }
        }
      ]
    },
    {
      "type": "string",
      "linkId": "caregivername",
      "text": "Caregiver Name"
    },
    {
      "type": "date",
      "linkId": "date_31",
      "text": "Date"
    },
    {
      "type": "display",
      "linkId": "answeronbehalf",
      "text": "Please answer on behalf of your child for the past month."
    },
    {
      "type": "display",
      "linkId": "options_31",
      "text": "Does your child have any of the following:"
    },
    {
      "type": "choice",
      "linkId": "runnynose",
      "text": "A constant blocked or runny nose?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "chestinfections",
      "text": "Recurrent chest infections/pneumonia?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "airwaynrrowing",
      "text": "An airway narrowing or abnormality?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "syndromemajor",
      "text": "A syndrome or other major health problem?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "string",
      "linkId": "type_01",
      "text": "Type"
    },
    {
      "type": "choice",
      "linkId": "tonsils",
      "text": "Does your child have large tonsils?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "tonsilsremoved",
      "text": "Has your child had their adenoids or tonsils removed?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "display",
      "linkId": "whilesleeping",
      "text": "While sleeping, does your child"
    },
    {
      "type": "choice",
      "linkId": "snore_22",
      "text": "snore more than half the time?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "alwayssnore",
      "text": "always snore?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "snoreloundly",
      "text": "snore loudly?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "troublebreathing",
      "text": "have trouble breathing, or struggle to breathe?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "loudbreathing",
      "text": "have \"heavy\" or loud breathing?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "stopbreathingnight",
      "text": "Have you ever seen your child stop breathing during the night?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "display",
      "linkId": "followingoptions",
      "text": "Does your child has the following"
    },
    {
      "type": "choice",
      "linkId": "breathethroughmouth",
      "text": "tend to breathe through the mouth during the day?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "wetthebed",
      "text": "occasionally wet the bed?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "unrefreshedmorning",
      "text": "wake up feeling unrefreshed in the morning?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "sleepinessduringday",
      "text": "have a problem with sleepiness during the day?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "sleepyatnight",
      "text": "Has a teacher commented that your child appears sleepy during the day?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "hardtowakeup",
      "text": "Is it hard to wake your child up in the morning?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "headachesinthemorning",
      "text": "Does your child wake up with headaches in the morning?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "stopgrowing",
      "text": "Did your child stop growing at a normal rate at any time since birth?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "childoverweight",
      "text": "Is your child overweight?",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "display",
      "linkId": "childoftenhas",
      "text": "My child often ."
    },
    {
      "type": "choice",
      "linkId": "listenissues",
      "text": "does not seem to listen when spoken to directly.",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "difficultyinorganizing",
      "text": "has difficulty organizing task and activities.",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "stimulieasily",
      "text": "is easily distracted by extraneous stimuli.",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "squirmsseat",
      "text": "fidgets with hands or feet or squirms in seat.",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "drivenbyamotor",
      "text": "is 'on the go' or often acts as if 'driven by a motor'.",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    },
    {
      "type": "choice",
      "linkId": "intrudesother",
      "text": "interrupts or intrudes on others (e.g. butts into conversations or games).",
      "answerOption": [
        {
          "valueCoding": {
            "code": "yes",
            "display": "Yes"
          }
        },
        {
          "valueCoding": {
            "code": "no",
            "display": "No"
          }
        },
        {
          "valueCoding": {
            "code": "unknown",
            "display": "Unknown"
          }
        }
      ]
    }
  ]
}