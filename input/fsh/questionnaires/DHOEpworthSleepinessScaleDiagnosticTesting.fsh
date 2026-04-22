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
  "status": "active",
  "subjectType": [
    "Patient"
  ],
  "description": "Collects Epworth Sleepiness Scale responses and related diagnostic testing details",
  "purpose": "Collects Epworth Sleepiness Scale responses and related diagnostic testing details to support assessment of daytime sleepiness.",
  "contained": [
    {
      "resourceType": "ValueSet",
      "id": "sleep-scale",
      "status": "active",
      "date": "2026-04-13T23:17:04.406Z",
      "expansion": {
        "timestamp": "2026-04-13T23:16:50.164Z",
        "contains": [
          {
            "system": "0",
            "code": "0",
            "display": "0 -- Would never dose"
          },
          {
            "system": "1",
            "code": "1",
            "display": "1 -- Slight chance of dozing"
          },
          {
            "system": "2",
            "code": "2",
            "display": "2 -- Moderate chance of dozing"
          },
          {
            "system": "4",
            "code": "3",
            "display": "3 -- High chance of dozing"
          }
        ]
      }
    }
  ],
  "item": [
    {
      "item": [
        {
          "type": "display",
          "linkId": "header-left",
          "text": "Diagnostic Testing Department\n\nPh: (03) 214 5775"
        },
        {
          "type": "display",
          "linkId": "header-right",
          "text": "Tom McKendrick\nSleep Laboratory\nDunedin Hospital\n\nPh: (03) 470 9742"
        }
      ],
      "type": "group",
      "linkId": "header",
      "text": "Epworth Scale"
    },
    {
      "item": [
        {
          "type": "string",
          "linkId": "patient-name",
          "text": "Patient"
        },
        {
          "type": "string",
          "linkId": "nhi-number",
          "text": "NHI No"
        },
        {
          "type": "string",
          "linkId": "physician",
          "text": "Physician"
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
          "type": "string",
          "linkId": "current-pressure-setting",
          "text": "Current Pressure Setting"
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
                    "code": "drop-down",
                    "display": "Drop down"
                  }
                ]
              }
            }
          ],
          "linkId": "sitting-reading",
          "text": "Sitting and reading",
          "required": true,
          "answerValueSet": "#sleep-scale"
        },
        {
          "type": "choice",
          "linkId": "Watchingtv",
          "text": "Watching TV",
          "required": true,
          "answerValueSet": "#sleep-scale"
        },
        {
          "type": "choice",
          "linkId": "sittinginactive",
          "text": "Sitting, inactive in a public place (e.g., a theatre or meeting)",
          "required": true,
          "answerValueSet": "#sleep-scale"
        },
        {
          "type": "choice",
          "linkId": "passengercarbreak",
          "text": "As a passenger in a car for an hour without a break",
          "required": true,
          "answerValueSet": "#sleep-scale"
        },
        {
          "type": "choice",
          "linkId": "restintheafternoon",
          "text": "Lying down to rest in the afternoon when circumstances permit",
          "required": true,
          "answerValueSet": "#sleep-scale"
        },
        {
          "type": "choice",
          "linkId": "sittingandtalking",
          "text": "Sitting and talking",
          "required": true,
          "answerValueSet": "#sleep-scale"
        },
        {
          "type": "choice",
          "linkId": "sittingquietly",
          "text": "Sitting quietly after a lunch without alcohol",
          "required": true,
          "answerValueSet": "#sleep-scale"
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