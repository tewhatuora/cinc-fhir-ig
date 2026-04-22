{
  "resourceType": "Questionnaire",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/4.0/StructureDefinition/Questionnaire"
    ]
  },
  "url": "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOCataractPatientQuestionnaire",
  "version": "1.0",
  "name": "DHOCataractPatientQuestionnaire",
  "title": "How does your cataract affect your life?",
  "status": "active",
  "experimental": false,
  "subjectType": [
    "Patient"
  ],
  "date": "2026-02-10",
  "publisher": "Health New Zealand | Te Whatu Ora",
  "description": "Patient-reported impact of cataract on daily life.",
  "contained": [
    {
      "resourceType": "ValueSet",
      "id": "difficulty-scale",
      "status": "active",
      "date": "2026-04-13T23:10:03.370Z",
      "expansion": {
        "timestamp": "2026-04-13T23:10:01.648Z",
        "contains": [
          {
            "system": "1",
            "code": "1",
            "display": "1 -- No difficulty"
          },
          {
            "system": "2",
            "code": "2",
            "display": "2 -- Little difficulty"
          },
          {
            "system": "3",
            "code": "3",
            "display": "3 -- Some difficulty"
          },
          {
            "system": "4",
            "code": "4",
            "display": "4 -- Quite difficulty"
          },
          {
            "system": "5",
            "code": "5",
            "display": "5 -- Very difficulty"
          },
          {
            "system": "6",
            "code": "6",
            "display": "6 -- Extremely difficulty"
          }
        ]
      }
    }
  ],
  "item": [
    {
      "type": "text",
      "linkId": "difficultyscale_01",
      "text": "Name"
    },
    {
      "type": "display",
      "linkId": "PatientQuestionnaire_02",
      "text": "Patient Questionnaire Ophthalmology"
    },
    {
      "type": "display",
      "linkId": "cataractcauses_03",
      "text": "Please tell us about how much difficulty your cataract causes in different areas of your life, which may limit the things you can do.    Each question below includes examples to illustrate some of the things this area    of life covers. It is okay if some of these examples don’t apply to you. Please just    think about whatever this area of life means for you."
    },
    {
      "type": "display",
      "linkId": "conditionaffects_04",
      "text": "Please select that most represents how much your condition affects each area of life.   "
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
      "linkId": "social-interactions",
      "text": "How much does your condition affect your social interactions? Examples include meeting friends, going out, joining groups, going shopping, and other everyday activities outside the home.",
      "required": true,
      "repeats": false,
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
      "linkId": "personalrelationships",
      "text": "How much does your condition affect your personal relationships? Examples include personal relationships with a partner, family members, and close personal friends.",
      "required": true,
      "repeats": false,
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
      "linkId": "abilitytomeet",
      "text": "How much does your condition affect your ability to meet your responsibilities to others? Examples include doing meaningful things for yourself or others, such as caring for children, grandchildren or a partner, and work (both paid and unpaid), including how having to rely on others may affect you.",
      "required": true,
      "repeats": false,
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
      "linkId": "personalcare",
      "text": "How much does your condition affect your personal care? Examples include looking after yourself and your health, personal hygiene, and any need for aids or special clothing.",
      "required": true,
      "repeats": false,
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
      "linkId": "personalsafety",
      "text": "How much does your condition affect your personal safety? Examples include being safe from injury or harm, from yourself or others, and in your surroundings.",
      "required": true,
      "repeats": false,
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
      "linkId": "leisureactivities",
      "text": "How much does your condition affect your leisure activities? Examples include getting exercise, hobbies, sporting activities, gardening, do-it-yourself activities, crafts, and travel.",
      "required": true,
      "repeats": false,
      "answerValueSet": "#difficulty-scale"
    }
  ]
}