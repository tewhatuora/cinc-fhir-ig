{
  "resourceType": "Questionnaire",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
    ]
  },
  "url": "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOSleepQuestionnaire",
  "version": "1.0",
  "name": "DHOSleepQuestionnaire",
  "title": "Sleep Questionnaire",
  "status": "active",
  "subjectType": [
    "Patient"
  ],
  "description": "The Questionnaire collects patient-reported sleep symptoms, habits, and risk factors to support assessment of sleep disorders such as sleep apnoea.",
  "purpose": "Enables clinicians to evaluate risk and guide further investigation and care.",
  "contained": [
    {
      "resourceType": "ValueSet",
      "id": "epworth-sleep-scale",
      "status": "draft",
      "date": "2026-04-14T02:03:51.418Z",
      "expansion": {
        "timestamp": "2026-04-14T02:03:49.587Z",
        "contains": [
          {
            "code": "0",
            "display": "0 -- NEVER doze"
          },
          {
            "code": "1",
            "display": "1 -- SLIGHT chance of dozing  "
          },
          {
            "code": "2",
            "display": "2.-- MODERATE chance of dozing  "
          },
          {
            "code": "3",
            "display": "3 -- HIGH chance of dozing  "
          }
        ]
      }
    },
    {
      "resourceType": "ValueSet",
      "id": "general-scale",
      "status": "draft",
      "date": "2026-04-14T02:08:31.235Z",
      "expansion": {
        "timestamp": "2026-04-14T02:08:29.128Z",
        "contains": [
          {
            "code": "4",
            "display": "Always"
          },
          {
            "code": "3",
            "display": "Often"
          },
          {
            "code": "2",
            "display": "Sometimes"
          },
          {
            "code": "1",
            "display": "Rarely"
          },
          {
            "code": "0",
            "display": "Never"
          }
        ]
      }
    },
    {
      "resourceType": "ValueSet",
      "id": "boolen-choice",
      "status": "draft",
      "date": "2026-04-14T02:10:27.587Z",
      "expansion": {
        "timestamp": "2026-04-14T02:10:26.293Z",
        "contains": [
          {
            "display": "Yes"
          },
          {
            "display": "No"
          }
        ]
      }
    }
  ],
  "item": [
    {
      "type": "display",
      "linkId": "intro",
      "text": "Epworth Scale"
    },
    {
      "item": [
        {
          "type": "string",
          "linkId": "name",
          "text": "Name"
        },
        {
          "type": "string",
          "linkId": "address",
          "text": "Address"
        },
        {
          "type": "string",
          "linkId": "nhi",
          "text": "NHI"
        },
        {
          "type": "date",
          "linkId": "dob",
          "text": "Date Completed"
        }
      ],
      "type": "group",
      "linkId": "patient-details",
      "text": "Patient Details"
    },
    {
      "item": [
        {
          "type": "decimal",
          "linkId": "weight",
          "text": "Weight (kg)"
        },
        {
          "type": "decimal",
          "linkId": "height",
          "text": "Height (cm)"
        },
        {
          "type": "decimal",
          "linkId": "neck",
          "text": "Neck circumference (cm) - Please use tape measure provided  "
        },
        {
          "type": "string",
          "linkId": "dentures",
          "text": "Do you have dentures? (full or partial) "
        }
      ],
      "type": "group",
      "linkId": "measurements",
      "text": "Measurements"
    },
    {
      "item": [
        {
          "type": "open-choice",
          "linkId": "snoring",
          "text": "According to what others have told you, how often do you think you snore? ",
          "answerValueSet": "#general-scale"
        },
        {
          "type": "boolean",
          "linkId": "stop-breathing",
          "text": "Has anyone heard you stop breathing in your sleep?"
        },
        {
          "type": "boolean",
          "linkId": "choking",
          "text": "Do you sometimes wake with a choking or gasping sensation?"
        },
        {
          "type": "boolean",
          "linkId": "family",
          "text": "Does anyone in your family have obstructive sleep apnoea?"
        },
        {
          "type": "boolean",
          "linkId": "toilet",
          "text": "Do you get up to go to the toilet more than once a night?"
        },
        {
          "type": "boolean",
          "linkId": "headache",
          "text": "Do you regularly wake with headaches in the morning?"
        }
      ],
      "type": "group",
      "linkId": "sleep-apnoea",
      "text": "Sleep Apnoea"
    },
    {
      "item": [
        {
          "type": "choice",
          "linkId": "refreshed",
          "text": "Do you wake feeling refreshed?",
          "answerValueSet": "#general-scale"
        },
        {
          "type": "choice",
          "linkId": "sleepy",
          "text": "How often do you feel sleepy and want to fall asleep in the daytime? ",
          "answerValueSet": "#general-scale"
        }
      ],
      "type": "group",
      "linkId": "daytime",
      "text": "Sleepiness during the Day "
    },
    {
      "item": [
        {
          "type": "display",
          "linkId": "fallasleep",
          "text": "How likely are you to doze off or fall asleep in the following situations - in contrast to feeling tired. This    refers to your usual way of life in recent times. Even if you have not done some of these things    recently, try to work out how they would have affected you.  "
        },
        {
          "type": "choice",
          "linkId": "sittingandreading",
          "text": "Sitting & Reading",
          "answerValueSet": "#epworth-sleep-scale"
        },
        {
          "type": "choice",
          "linkId": "reading",
          "text": "Watching TV",
          "answerValueSet": "#epworth-sleep-scale"
        },
        {
          "type": "choice",
          "linkId": "sittingactivity",
          "text": "Sitting inactive in a public place (theatre, meeting, etc)",
          "answerValueSet": "#epworth-sleep-scale"
        },
        {
          "type": "choice",
          "linkId": "incarforanhour",
          "text": " A passenger in a car for one hour",
          "answerValueSet": "#epworth-sleep-scale"
        },
        {
          "type": "choice",
          "linkId": "lyingdown",
          "text": "Lying down in the afternoon (if circumstances permit)",
          "answerValueSet": "#epworth-sleep-scale"
        },
        {
          "type": "choice",
          "linkId": "sittingtalking",
          "text": "Sitting talking to someone",
          "answerValueSet": "#epworth-sleep-scale"
        },
        {
          "type": "choice",
          "linkId": "trafficlights",
          "text": "In a car whilst stopped in traffic or traffic lights",
          "answerValueSet": "#epworth-sleep-scale"
        }
      ],
      "type": "group",
      "linkId": "epworth",
      "text": "Epworth Sleepiness Score"
    },
    {
      "item": [
        {
          "type": "boolean",
          "linkId": "hayfever",
          "text": "Hayfever or constantly blocked nose",
          "required": true
        },
        {
          "type": "boolean",
          "linkId": "nasal",
          "text": "Previous nasal surgery"
        },
        {
          "type": "boolean",
          "linkId": "airway",
          "text": "Previous airway surgery? (e.g. tonsils removed)"
        },
        {
          "type": "boolean",
          "linkId": "heart",
          "text": "Heart disease (heart failure, heart attack, angina, arrhythmia e.g. atrial fibrillation, stent or bypass?)   "
        },
        {
          "item": [
            {
              "type": "boolean",
              "linkId": "controldifficulty",
              "text": "If yes, is difficult to control?",
              "enableWhen": [
                {
                  "question": "bp",
                  "operator": "=",
                  "answerBoolean": true
                }
              ],
              "enableBehavior": "all"
            }
          ],
          "type": "boolean",
          "linkId": "bp",
          "text": "High blood pressure"
        },
        {
          "type": "boolean",
          "linkId": "stroke",
          "text": "Previous stroke or TIA ‘mini-stroke’?"
        },
        {
          "item": [
            {
              "type": "boolean",
              "linkId": "yescontroldifficulty",
              "text": "If yes, is it difficult to control?",
              "enableWhen": [
                {
                  "question": "diabetes",
                  "operator": "=",
                  "answerBoolean": true
                }
              ],
              "enableBehavior": "any"
            }
          ],
          "type": "boolean",
          "linkId": "diabetes",
          "text": "Diabetes"
        },
        {
          "item": [
            {
              "type": "boolean",
              "linkId": "depression_11",
              "text": "If yes, is it difficult to control?",
              "enableWhen": [
                {
                  "question": "depression",
                  "operator": "=",
                  "answerBoolean": true
                }
              ],
              "enableBehavior": "any"
            }
          ],
          "type": "boolean",
          "linkId": "depression",
          "text": "Depression"
        },
        {
          "type": "boolean",
          "linkId": "asthma",
          "text": "Asthma/COPD"
        },
        {
          "type": "boolean",
          "linkId": "neuro",
          "text": "Neuromuscular disease"
        },
        {
          "item": [
            {
              "type": "string",
              "linkId": "neurodisease",
              "text": "If yes, is it difficult to control?",
              "enableWhen": [
                {
                  "question": "epilepsy",
                  "operator": "=",
                  "answerBoolean": true
                }
              ],
              "enableBehavior": "any"
            }
          ],
          "type": "boolean",
          "linkId": "epilepsy",
          "text": "Epilepsy"
        }
      ],
      "type": "group",
      "linkId": "medical",
      "text": "Medical History"
    },
    {
      "item": [
        {
          "type": "boolean",
          "linkId": "breath",
          "text": "Do you get short of breath during your daily activities?"
        },
        {
          "type": "string",
          "linkId": "occupation",
          "text": "What is your Occupation?"
        },
        {
          "type": "boolean",
          "linkId": "job-risk",
          "text": "Has your job been at risk due to sleepiness or loss or concentration?"
        },
        {
          "item": [
            {
              "type": "choice",
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
                  "valueCodeableConcept": {
                    "coding": [
                      {
                        "system": "http://hl7.org/fhir/questionnaire-item-control",
                        "code": "radio-button",
                        "display": "Radio Button"
                      }
                    ]
                  }
                }
              ],
              "linkId": "licenseclass",
              "text": "What is your vehicle licence class?",
              "enableWhen": [
                {
                  "question": "doze-driving",
                  "operator": "=",
                  "answerBoolean": true
                }
              ],
              "enableBehavior": "any",
              "answerOption": [
                {
                  "valueCoding": {
                    "display": "Class 1 (motorcar)"
                  }
                },
                {
                  "valueCoding": {
                    "display": "Class 2"
                  }
                },
                {
                  "valueCoding": {
                    "display": "Class 3"
                  }
                },
                {
                  "valueCoding": {
                    "display": "Class 4"
                  }
                },
                {
                  "valueCoding": {
                    "display": "Class 5"
                  }
                },
                {
                  "valueCoding": {
                    "display": "Class 6 (Motorcycle)"
                  }
                }
              ]
            },
            {
              "type": "choice",
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
                  "valueCodeableConcept": {
                    "coding": [
                      {
                        "system": "http://hl7.org/fhir/questionnaire-item-control",
                        "code": "radio-button",
                        "display": "Radio Button"
                      }
                    ]
                  }
                }
              ],
              "linkId": "licenseendorsement",
              "text": "What is your vehicle licence endorsement?",
              "enableWhen": [
                {
                  "question": "doze-driving",
                  "operator": "=",
                  "answerBoolean": true
                }
              ],
              "enableBehavior": "any",
              "answerOption": [
                {
                  "valueCoding": {
                    "display": "P"
                  }
                },
                {
                  "valueCoding": {
                    "display": "V"
                  }
                },
                {
                  "valueCoding": {
                    "display": "D"
                  }
                },
                {
                  "valueCoding": {
                    "display": "F"
                  }
                },
                {
                  "valueCoding": {
                    "display": "R"
                  }
                },
                {
                  "valueCoding": {
                    "display": "T"
                  }
                },
                {
                  "valueCoding": {
                    "display": "W"
                  }
                },
                {
                  "valueCoding": {
                    "display": "I"
                  }
                },
                {
                  "valueCoding": {
                    "display": "O"
                  }
                }
              ]
            }
          ],
          "type": "boolean",
          "linkId": "doze-driving",
          "text": "Do you have a vehicle licence?"
        }
      ],
      "type": "group",
      "linkId": "lifestyle",
      "text": "Lifestyle"
    },
    {
      "item": [
        {
          "item": [
            {
              "type": "text",
              "linkId": "sleeptime",
              "text": "If yes, please describe your symptoms: ",
              "enableWhen": [
                {
                  "question": "sleep-time",
                  "operator": "=",
                  "answerBoolean": true
                }
              ],
              "enableBehavior": "any"
            }
          ],
          "type": "boolean",
          "linkId": "sleep-time",
          "text": "When you try to relax in the evening or sleep at night, do you ever have unpleasant,   restless feelings in your legs that can be relieved by walkin"
        }
      ],
      "type": "group",
      "linkId": "sleep-pattern",
      "text": "Restless Legs"
    },
    {
      "item": [
        {
          "type": "time",
          "linkId": "wake-time",
          "text": "What time do you go to sleep at night?"
        },
        {
          "type": "time",
          "linkId": "shift",
          "text": "What time do you get up in the morning?"
        },
        {
          "type": "boolean",
          "linkId": "shiftwork",
          "text": "Do you do shift work?"
        },
        {
          "type": "text",
          "linkId": "usualhourswork",
          "text": "Please describe your usual hours of work   "
        }
      ],
      "type": "group",
      "linkId": "sleephours",
      "text": "Hours of Sleep "
    },
    {
      "item": [
        {
          "type": "string",
          "linkId": "takelongtosleep",
          "text": "How long does it take you to get to sleep?"
        },
        {
          "type": "string",
          "linkId": "wakeupatnight",
          "text": "How many times do you usually wake up during the night? "
        },
        {
          "type": "string",
          "linkId": "backtosleep",
          "text": "When you wake up, how long does it usually take you to get back to sleep?   "
        },
        {
          "type": "string",
          "linkId": "disturbsyoursleep",
          "text": "Do you have pain that disturbs your sleep?   "
        }
      ],
      "type": "string",
      "linkId": "medications",
      "text": "Difficulty Sleeping  ",
      "repeats": true
    },
    {
      "item": [
        {
          "item": [
            {
              "type": "text",
              "linkId": "hallucinations02",
              "text": "If yes, please describe your symptoms:",
              "enableWhen": [
                {
                  "question": "hallucinations01",
                  "operator": "=",
                  "answerBoolean": true
                }
              ],
              "enableBehavior": "any"
            }
          ],
          "type": "boolean",
          "linkId": "hallucinations01",
          "text": "Do you have hallucinations (you see, feel or hear things that aren’t there) while falling asleep or waking up?"
        },
        {
          "type": "boolean",
          "linkId": "cannotmove",
          "text": "Do you ever feel you can’t move or talk at all for 1 to 2 minutes after you wake up?  "
        },
        {
          "item": [
            {
              "type": "string",
              "linkId": "laughter02",
              "text": "If yes, please describe your symptoms: ",
              "enableWhen": [
                {
                  "question": "laughter01",
                  "operator": "=",
                  "answerBoolean": true
                }
              ],
              "enableBehavior": "any"
            }
          ],
          "type": "boolean",
          "linkId": "laughter01",
          "text": "Do you have sudden bouts of muscle weakness brought on by laughter or emotion?  "
        },
        {
          "type": "boolean",
          "linkId": "sleepdifficulty01",
          "text": "Do you have any other difficulties with sleep, like nightmares, acting out dreams, sleepwalking?",
          "item": [
            {
              "type": "text",
              "linkId": "sleepdifficulty02",
              "text": "If yes, please describe your symptoms: ",
              "enableWhen": [
                {
                  "question": "sleepdifficulty01",
                  "operator": "=",
                  "answerBoolean": true
                }
              ],
              "enableBehavior": "any"
            }
          ]
        }
      ],
      "type": "string",
      "linkId": "othersymptoms",
      "text": "Other Symptoms"
    }
  ]
}