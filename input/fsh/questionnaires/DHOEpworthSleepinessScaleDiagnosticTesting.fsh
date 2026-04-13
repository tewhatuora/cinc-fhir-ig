{
  "resourceType": "Questionnaire",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
    ]
  },
  "url": "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOEpworthSleepinessScaleDiagnosticTesting",
  "version": "1.0.0",
  "name": "DHOEpworthSleepinessScaleDiagnosticTesting",
  "title": "Epworth Sleepiness Scale - Diagnostic Testing",
  "status": "draft",
  "subjectType": [
    "Patient"
  ],
  "description": "Collects Epworth Sleepiness Scale responses and related diagnostic testing details",
  "purpose": "Collects Epworth Sleepiness Scale responses and related diagnostic testing details to support assessment of daytime sleepiness.",
  "item": [
    {
      "item": [
        {
          "type": "display",
          "linkId": "header-left",
          "text": "Diagnostic Testing Department\n\nPh: (03) 214 5775"
        },
        {
          "linkId": "header-right",
          "text": "Tom McKendrick\nSleep Laboratory\nDunedin Hospital\n\nPh: (03) 470 9742",
          "type": "display"
        }
      ],
      "type": "group",
      "linkId": "header",
      "text": "Epworth Scale"
    },
    {
      "item": [
        {
          "linkId": "patient-name",
          "text": "Patient",
          "type": "string"
        },
        {
          "linkId": "nhi-number",
          "text": "NHI No",
          "type": "string"
        },
        {
          "linkId": "physician",
          "text": "Physician",
          "type": "string"
        }
      ],
      "type": "group",
      "linkId": "patient-info",
      "text": "Patient Information"
    },
    {
      "item": [
        {
          "type": "choice",
          "linkId": "on-cpap-niv",
          "text": "On CPAP / NIV Treatment?"
        },
        {
          "linkId": "current-pressure-setting",
          "text": "Current Pressure Setting",
          "type": "string"
        },
        {
          "type": "date",
          "linkId": "date",
          "text": "Date"
        },
        {
          "type": "display",
          "extension": [
            {
              "url": "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-displayCategory",
              "valueCodeableConcept": {
                "text": "instructions"
              }
            }
          ],
          "linkId": "instructions-display",
          "text": "How likely are you to doze off or fall asleep in the following situations, in contrast to feeling just tired? This refers to your usual way of life in recent times. Even if you have not done some of these things recently, try to work out how they would have affected you. Use the following scale to choose the most appropriate number for each situation.\n\n0 = Would never doze\n1 = Slight chance of dozing\n2 = Moderate chance of dozing\n3 = High chance of dozing"
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
          "linkId": "sitting-reading",
          "text": "Sitting and reading",
          "required": true,
          "answerOption": [
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 0
                }
              ],
              "valueCoding": {
                "display": "0 = Would never dose"
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 1
                }
              ],
              "valueCoding": {
                "display": "1 = Slight chance of dozing"
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 2
                }
              ],
              "valueCoding": {
                "display": "2 = Moderate chance of dozing  "
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 3
                }
              ],
              "valueCoding": {
                "display": "3 = High chance of dozing "
              }
            }
          ]
        },
        {
          "type": "choice",
          "linkId": "Watchingtv",
          "text": "Watching TV",
          "required": true,
          "answerOption": [
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 0
                }
              ],
              "valueCoding": {
                "display": "0 = Would never dose"
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 1
                }
              ],
              "valueCoding": {
                "display": "1 = Slight chance of dozing"
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 2
                }
              ],
              "valueCoding": {
                "display": "2 = Moderate chance of dozing  "
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 3
                }
              ],
              "valueCoding": {
                "display": "3 = High chance of dozing "
              }
            }
          ]
        },
        {
          "type": "choice",
          "linkId": "sittinginactive",
          "text": "Sitting, inactive in a public place (e.g., a theatre or meeting)",
          "required": true,
          "answerOption": [
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 0
                }
              ],
              "valueCoding": {
                "display": "0 = Would never dose"
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 1
                }
              ],
              "valueCoding": {
                "display": "1 = Slight chance of dozing"
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 2
                }
              ],
              "valueCoding": {
                "display": "2 = Moderate chance of dozing  "
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 3
                }
              ],
              "valueCoding": {
                "display": "3 = High chance of dozing "
              }
            }
          ]
        },
        {
          "type": "choice",
          "linkId": "passengercarbreak",
          "text": "As a passenger in a car for an hour without a break",
          "required": true,
          "answerOption": [
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 0
                }
              ],
              "valueCoding": {
                "display": "0 = Would never dose"
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 1
                }
              ],
              "valueCoding": {
                "display": "1 = Slight chance of dozing"
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 2
                }
              ],
              "valueCoding": {
                "display": "2 = Moderate chance of dozing  "
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 3
                }
              ],
              "valueCoding": {
                "display": "3 = High chance of dozing "
              }
            }
          ]
        },
        {
          "type": "choice",
          "linkId": "restintheafternoon",
          "text": "Lying down to rest in the afternoon when circumstances permit",
          "required": true,
          "answerOption": [
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 0
                }
              ],
              "valueCoding": {
                "display": "0 = Would never dose"
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 1
                }
              ],
              "valueCoding": {
                "display": "1 = Slight chance of dozing"
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 2
                }
              ],
              "valueCoding": {
                "display": "2 = Moderate chance of dozing  "
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 3
                }
              ],
              "valueCoding": {
                "display": "3 = High chance of dozing "
              }
            }
          ]
        },
        {
          "type": "choice",
          "linkId": "sittingandtalking",
          "text": "Sitting and talking",
          "required": true,
          "answerOption": [
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 0
                }
              ],
              "valueCoding": {
                "display": "0 = Would never dose"
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 1
                }
              ],
              "valueCoding": {
                "display": "1 = Slight chance of dozing"
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 2
                }
              ],
              "valueCoding": {
                "display": "2 = Moderate chance of dozing  "
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 3
                }
              ],
              "valueCoding": {
                "display": "3 = High chance of dozing "
              }
            }
          ]
        },
        {
          "type": "choice",
          "linkId": "sittingquietly",
          "text": "Sitting quietly after a lunch without alcohol",
          "required": true,
          "answerOption": [
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 0
                }
              ],
              "valueCoding": {
                "display": "0 = Would never dose"
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 1
                }
              ],
              "valueCoding": {
                "display": "1 = Slight chance of dozing"
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 2
                }
              ],
              "valueCoding": {
                "display": "2 = Moderate chance of dozing  "
              }
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/itemWeight",
                  "valueDecimal": 3
                }
              ],
              "valueCoding": {
                "display": "3 = High chance of dozing "
              }
            }
          ]
        },
        {
          "type": "integer",
          "linkId": "total",
          "text": "Total"
        }
      ],
      "type": "group",
      "linkId": "treatment",
      "text": "Please fill in the form below."
    }
  ]
}