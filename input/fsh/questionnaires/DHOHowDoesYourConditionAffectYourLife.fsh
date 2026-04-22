{
  "resourceType": "Questionnaire",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
    ]
  },
  "url": "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOHowDoesYourConditionAffectYourLife",
  "version": "1.0",
  "name": "DHOHowDoesYourConditionAffectYourLife",
  "title": "How does your condition affect your life?",
  "status": "active",
  "description": "This form collects information about how a health condition affects different aspects of a person’s sleep, daily functioning, and overall quality of life.",
  "contained": [
    {
      "resourceType": "ValueSet",
      "id": "difficulty-scale",
      "status": "draft",
      "date": "2026-04-14T04:39:00.065Z",
      "expansion": {
        "timestamp": "2026-04-14T04:38:58.805Z",
        "contains": [
          {
            "code": "1",
            "display": "1 -- No difficulty"
          },
          {
            "code": "2",
            "display": "2 -- Little difficulty"
          },
          {
            "code": "3",
            "display": "3 -- Some difficulty"
          },
          {
            "code": "4",
            "display": "4 -- Quite difficult"
          },
          {
            "code": "5",
            "display": "5 -- Very difficult"
          },
          {
            "code": "6",
            "display": "6 -- Extremely difficult"
          }
        ]
      }
    }
  ],
  "item": [
    {
      "item": [
        {
          "type": "string",
          "linkId": "prefferdname",
          "text": "Preferred name",
          "required": true
        },
        {
          "type": "string",
          "linkId": "fullname",
          "text": "Full name",
          "required": true
        },
        {
          "type": "string",
          "linkId": "nhinumber",
          "text": "NHI number",
          "required": true
        },
        {
          "type": "date",
          "linkId": "dob_01",
          "text": "DOB",
          "required": true
        },
        {
          "type": "string",
          "linkId": "address_02",
          "text": "Address",
          "required": true
        },
        {
          "type": "string",
          "linkId": "telephonenumber",
          "text": "Telephone Number",
          "required": true
        },
        {
          "type": "date",
          "linkId": "date_03",
          "text": "Date",
          "required": true
        },
        {
          "linkId": "patientlabel",
          "type": "display",
          "text": "Stick patient label here (or fill in the details below if no label is available)"
        }
      ],
      "type": "group",
      "linkId": "patientdetails",
      "text": "Patient details"
    },
    {
      "type": "display",
      "linkId": "introduction_04",
      "text": "Introduction"
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
                    "code": "drop-down",
                    "display": "Drop down"
                  }
                ]
              }
            }
          ],
          "linkId": "socialinteractions",
          "text": "How much does your condition affect your social interactions? (Examples: meeting friends, going out, joining in groups, going shopping, everyday activities outside the home)",
          "required": true,
          "readOnly": false,
          "answerValueSet": "#difficulty-scale"
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
          "linkId": "personalrelationships_05",
          "text": "How much does your condition affect your personal relationships? (Examples: personal relations with partner, family members, close personal friends)",
          "required": true,
          "readOnly": false,
          "answerValueSet": "#difficulty-scale"
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
          "linkId": "responsibilitiestoothers",
          "text": "How much does your condition affect your ability to meet your responsibilities to others? (Examples: doing meaningful things for yourself or others, including caring for children, grandchildren or partner, work (paid and unpaid), including how having to rely on others may have an impact on you))",
          "required": true,
          "readOnly": false,
          "answerValueSet": "#difficulty-scale"
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
          "linkId": "personalcare_06",
          "text": "How much does your condition affect your personal care? (Examples: looking after yourself, your health, personal hygiene, need for aids or special clothing)",
          "required": true,
          "readOnly": false,
          "answerValueSet": "#difficulty-scale"
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
          "linkId": "personalsafety_07",
          "text": "How much does your condition affect your personal safety? (Examples: being safe from injury and harm, from yourself or others and in your surroundings)",
          "required": true,
          "readOnly": false,
          "answerValueSet": "#difficulty-scale"
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
          "linkId": "leisureactivities_08",
          "text": "How much does your condition affect your leisure activities? (Examples: getting exercise, hobbies, sporting activities, gardening, do-it-yourself activities, crafts and travel)",
          "required": true,
          "readOnly": false,
          "answerValueSet": "#difficulty-scale"
        }
      ],
      "type": "group",
      "linkId": "formheading",
      "text": "How does your condition affect your life?"
    }
  ]
}