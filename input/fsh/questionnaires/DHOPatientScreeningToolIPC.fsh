{
  "resourceType": "Questionnaire",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
    ]
  },
  "url": "https://tewhatuora.govt.nz/fhir/Questionnaire/DHOPatientScreeningToolIPC",
  "version": "1.0",
  "name": "DHOPatientScreeningToolIPC",
  "title": "Patient Screening Tool IPC (District)",
  "status": "draft",
  "subjectType": [
    "Patient"
  ],
  "description": "Patient infection prevention and control screening tool for district use.",
  "purpose": "Patient infection prevention and control screening tool for district use.",
  "item": [
    {
      "item": [
        {
          "type": "date",
          "linkId": "date_01",
          "text": "Date"
        },
        {
          "type": "time",
          "linkId": "time_02",
          "text": "Time"
        },
        {
          "type": "string",
          "linkId": "areacompleted_03",
          "text": "Area completed"
        },
        {
          "type": "string",
          "linkId": "assessor_04",
          "text": "Assessor"
        },
        {
          "type": "string",
          "linkId": "sign_05",
          "text": "sign"
        }
      ],
      "type": "string",
      "linkId": "assessordetails_06",
      "text": "Assessor Details",
      "_text": {
        "extension": [
          {
            "url": "http://hl7.org/fhir/StructureDefinition/rendering-style",
            "valueString": "font-weight: bold"
          }
        ]
      }
    },
    {
      "item": [
        {
          "type": "string",
          "linkId": "surname",
          "text": "Surname"
        },
        {
          "type": "string",
          "linkId": "first-names",
          "text": "First Names"
        },
        {
          "type": "string",
          "linkId": "nhi",
          "text": "NHI"
        },
        {
          "type": "date",
          "linkId": "date-of-birth",
          "text": "Date of Birth"
        },
        {
          "type": "string",
          "linkId": "gender",
          "text": "Gender"
        }
      ],
      "type": "string",
      "linkId": "patientdetails",
      "text": "Patient Details",
      "_text": {
        "extension": [
          {
            "url": "http://hl7.org/fhir/StructureDefinition/rendering-style",
            "valueString": "font-weight: bold;"
          }
        ]
      }
    },
    {
      "item": [
        {
          "type": "boolean",
          "linkId": "question-a-info",
          "_prefix": {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/rendering-style",
                "valueString": "font-weight: bold;"
              }
            ]
          },
          "text": "A: MDRO? Multi Drug Resistant Organism (e.g., MRSA, ESBL, VRE, CPO)",
          "_text": {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/rendering-style",
                "valueString": "font-weight: bold;"
              }
            ]
          },
          "item": [
            {
              "type": "boolean",
              "linkId": "a1",
              "text": "Has an MDRO alert (SPICS/HCS) or been previously MDRO positive?"
            },
            {
              "type": "boolean",
              "linkId": "a2",
              "text": "Been admitted overnight in any North Island hospital in the last 12 months?"
            },
            {
              "type": "boolean",
              "linkId": "a3",
              "text": "Been admitted overnight to an overseas hospital in the last 12 months?"
            },
            {
              "type": "boolean",
              "linkId": "a4",
              "text": "Resided/travelled to the Indian subcontinent or South-East Asia in the last 12 months? Refer to MDRO-Admission-assessment-flowchart.dox (200982) for countries"
            },
            {
              "type": "boolean",
              "linkId": "a5",
              "text": "In the last 6 months been a resident at Marne Street Hospital (Otago)?"
            },
            {
              "item": [
                {
                  "type": "display",
                  "linkId": "a-action",
                  "prefix": "If answered yes,",
                  "_prefix": {
                    "extension": [
                      {
                        "url": "http://hl7.org/fhir/StructureDefinition/rendering-style",
                        "valueString": "font-weight: bold"
                      }
                    ]
                  },
                  "text": "refer to MDRO-Admission-assessment-flowchart.dox (200982) for testing and placement."
                }
              ],
              "type": "boolean",
              "linkId": "a6",
              "text": "In the last 6 months been a resident at Longwood Care Home (Southland)?"
            }
          ]
        }
      ],
      "type": "group",
      "linkId": "question-a-group",
      "text": "Question A – Required for all overnight admissions, plus dialysis outpatients, and Oncology outpatients",
      "_text": {
        "extension": [
          {
            "url": "http://hl7.org/fhir/StructureDefinition/rendering-style",
            "valueString": "font-weight: bold;"
          }
        ]
      }
    },
    {
      "item": [
        {
          "item": [
            {
              "item": [
                {
                  "type": "display",
                  "linkId": "b-action",
                  "prefix": "B – Contact",
                  "_prefix": {
                    "extension": [
                      {
                        "url": "http://hl7.org/fhir/StructureDefinition/rendering-style",
                        "valueString": "font-weight: bold;"
                      }
                    ]
                  },
                  "text": " precautions Single room, stool chart",
                  "enableWhen": [
                    {
                      "question": "b-more-than-3",
                      "operator": "=",
                      "answerBoolean": true
                    }
                  ],
                  "enableBehavior": "any"
                }
              ],
              "type": "boolean",
              "linkId": "b-more-than-3",
              "text": ">3 watery bowel motions or any episodes in the past 24 hours",
              "enableBehavior": "any"
            }
          ],
          "type": "boolean",
          "linkId": "b",
          "text": "B: Diarrhoea / vomiting?",
          "_text": {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/rendering-style",
                "valueString": "font-weight: bold;"
              }
            ]
          }
        },
        {
          "item": [
            {
              "type": "display",
              "linkId": "DiseaseSpecificIsolation",
              "text": "Refer to Disease Specific Isolation Guidelines (20435) for isolation period or discuss with IPC team. ",
              "enableWhen": [
                {
                  "question": "557106351405",
                  "operator": "=",
                  "answerBoolean": true
                }
              ],
              "enableBehavior": "any"
            }
          ],
          "type": "boolean",
          "linkId": "Infectious Disease",
          "text": "C: Other Infectious Disease",
          "_text": {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/rendering-style",
                "valueString": "font-weight: bold;"
              }
            ]
          },
          "enableBehavior": "any"
        },
        {
          "type": "display",
          "linkId": "Acuterespiratoryillnesses",
          "text": "Acute respiratory illnesses"
        },
        {
          "item": [
            {
              "item": [
                {
                  "type": "string",
                  "linkId": "d-respiratory-organism",
                  "text": "Respiratory organism",
                  "enableWhen": [
                    {
                      "question": "d-positive-test-detail",
                      "operator": "=",
                      "answerBoolean": true
                    }
                  ],
                  "enableBehavior": "any"
                },
                {
                  "type": "date",
                  "linkId": "d-positive-test-date",
                  "text": "Date of positive test",
                  "enableWhen": [
                    {
                      "question": "d-positive-test-detail",
                      "operator": "=",
                      "answerBoolean": true
                    }
                  ],
                  "enableBehavior": "any"
                },
                {
                  "type": "display",
                  "linkId": "d-action",
                  "text": "Refer to Disease Specific Isolation Guidelines (20435) for isolation period or discuss with IPC team.",
                  "enableWhen": [
                    {
                      "question": "d-positive-test-detail",
                      "operator": "=",
                      "answerBoolean": true
                    }
                  ],
                  "enableBehavior": "any"
                }
              ],
              "type": "boolean",
              "linkId": "d-positive-test-detail",
              "text": "Had a positive respiratory test in the past 10 days (or 14 days if immune compromised)"
            }
          ],
          "type": "string",
          "linkId": "acuterespiratoryillness",
          "text": "D: Positive test for acute respiratory illness? E.g., COVID / Influenza / RSV",
          "_text": {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/rendering-style",
                "valueString": "font-weight: bold;"
              }
            ]
          }
        },
        {
          "item": [
            {
              "type": "boolean",
              "linkId": "e-runny-nose",
              "text": "Runny nose/congestion"
            },
            {
              "type": "boolean",
              "linkId": "e-sore-throat",
              "text": "Sore/scratchy throat"
            },
            {
              "type": "boolean",
              "linkId": "e-new-cough",
              "text": "New cough"
            },
            {
              "type": "boolean",
              "linkId": "e-shortness-breath",
              "text": "New shortness of breath"
            },
            {
              "type": "boolean",
              "linkId": "e-unexplained-fever",
              "text": "Unexplained fever"
            },
            {
              "item": [
                {
                  "type": "display",
                  "linkId": "covid-rat-display",
                  "text": "All RAT results (positive or negative) are to be uploaded to Eclair (20435).  Note -- Influenza/RSV RATs are unreliable, PCR required for diagnosis. Inpatients – If RAT negative then complete a COVID PCR. If patient is COVID negative, place in droplet precautions and discuss with IPC."
                }
              ],
              "type": "group",
              "linkId": "covid-rat-instructions",
              "text": "Yes to E -- COVID RAT Test",
              "_text": {
                "extension": [
                  {
                    "url": "http://hl7.org/fhir/StructureDefinition/rendering-style",
                    "valueString": "font-weight: bold;"
                  }
                ]
              },
              "enableBehavior": "any"
            }
          ],
          "type": "boolean",
          "linkId": "e",
          "text": "E: Respiratory symptoms? Any new or worsening symptoms in the past 10 days (14 if immune compromised)",
          "_text": {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/rendering-style",
                "valueString": "font-weight: bold;"
              }
            ]
          }
        },
        {
          "item": [
            {
              "type": "boolean",
              "linkId": "f-household-contact",
              "text": "A household contact or living in a communal situation with a person who has a confirmed COVID infection?",
              "enableWhen": [
                {
                  "question": "f",
                  "operator": "=",
                  "answerBoolean": true
                }
              ],
              "enableBehavior": "any"
            },
            {
              "type": "display",
              "linkId": "f-action-display",
              "text": "Yes to F -- Droplet isolation for 5 days, staff to wear N95 mask. Only test if symptoms develop.",
              "_text": {
                "extension": [
                  {
                    "url": "http://hl7.org/fhir/StructureDefinition/rendering-style",
                    "valueString": "font-weight: bold;"
                  }
                ]
              },
              "enableBehavior": "any"
            }
          ],
          "type": "boolean",
          "linkId": "f",
          "text": "F: Contact with COVID?",
          "_text": {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/rendering-style",
                "valueString": "font-weight: bold;"
              }
            ]
          }
        }
      ],
      "type": "group",
      "linkId": "questions-b-f-group",
      "text": "Questions B–F – Ask all patients in all clinical areas, including all inpatients and outpatients",
      "_text": {
        "extension": [
          {
            "url": "http://hl7.org/fhir/StructureDefinition/rendering-style",
            "valueString": "font-weight: bold;"
          }
        ]
      }
    },
    {
      "type": "display",
      "linkId": "all-no-action",
      "text": "If no to all questions, Standard Precautions"
    }
  ]
}