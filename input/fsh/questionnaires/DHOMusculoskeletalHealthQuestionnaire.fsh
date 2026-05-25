Instance: DHOMusculoskeletalHealthQuestionnaire
InstanceOf: Questionnaire
Usage: #definition

* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOMusculoskeletalHealthQuestionnaire"
* version = "1.0.0"
* identifier.use = #official
* identifier.value = "DHOMusculoskeletalHealthQuestionnaire"
* name = "DHOMusculoskeletalHealthQuestionnaire"
* title = "MUSCULOSKELETAL HEALTH QUESTIONNAIRE (MSK-HQ)"
* status = #active
* description = "This questionnaire is about your joint, bone, muscle and nerve symptoms such as aches, pains, pins and needles and/or stiffness, or other health problem symptoms."

* item.item[0].type = #display
* item.item[=].linkId = "Intro2"
* item.item[=].text = "This questionnaire is about your joint, bone, muscle and nerve symptoms such as aches, pains, pins and needles and/or stiffness, or other health problems. Please focus on the particular health problem(s) for which you sought treatment from this service."
* item.item[+].type = #display
* item.item[=].linkId = "DayPainStiffness"
* item.item[=].text = "1. Pain/stiffness/pins and needles/other health problem symptoms during the day"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "painStiffnessPinsAndNeedlesDay"
* item.item[=].text = "How severe were your usual symptoms overall during the day in the past 2 weeks?"
* item.item[=].required = false
* item.item[=].repeats = false
* item.item[=].answerOption[0].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 4
* item.item[=].answerOption[=].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 3
* item.item[=].answerOption[=].valueCoding = $general-scale#3 "Slightly"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 2
* item.item[=].answerOption[=].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 1
* item.item[=].answerOption[=].valueCoding = $general-scale#1 "Fairly severe"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 0
* item.item[=].answerOption[=].valueCoding = $general-scale#0 "Very severe"
* item.item[+].type = #display
* item.item[=].linkId = "NightPainStiffness"
* item.item[=].text = "2. Pain/stiffness/pins and needles/other health problem symptoms during the night"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "painStiffnessPinsAndNeedlesNight"
* item.item[=].text = "How severe were your usual symptoms overall during the night in the past 2 weeks?"
* item.item[=].required = false
* item.item[=].repeats = false
* item.item[=].answerOption[0].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 4
* item.item[=].answerOption[=].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 3
* item.item[=].answerOption[=].valueCoding = $general-scale#3 "Slightly"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 2
* item.item[=].answerOption[=].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 1
* item.item[=].answerOption[=].valueCoding = $general-scale#1 "Fairly severe"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 0
* item.item[=].answerOption[=].valueCoding = $general-scale#0 "Very severe"
* item.item[+].type = #display
* item.item[=].linkId = "Walking"
* item.item[=].text = "3. Walking"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "walking"
* item.item[=].text = "How much have your symptoms interfered with your ability to walk in the past 2 weeks?"
* item.item[=].required = false
* item.item[=].repeats = false
* item.item[=].answerOption[0].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 4
* item.item[=].answerOption[=].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 3
* item.item[=].answerOption[=].valueCoding = $general-scale#3 "Slightly"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 2
* item.item[=].answerOption[=].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 1
* item.item[=].answerOption[=].valueCoding = $general-scale#1 "Severely"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 0
* item.item[=].answerOption[=].valueCoding = $general-scale#0 "Not able to walk"
* item.item[+].type = #display
* item.item[=].linkId = "Washing"
* item.item[=].text = "4. Washing/Dressing"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "washingDressing"
* item.item[=].prefix = "4. Washing/Dressing."
* item.item[=].text = "How much have your symptoms interfered with your ability to wash or dress yourself in the past 2 weeks?"
* item.item[=].required = false
* item.item[=].repeats = false
* item.item[=].answerOption[0].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 4
* item.item[=].answerOption[=].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 3
* item.item[=].answerOption[=].valueCoding = $general-scale#3 "Slightly"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 2
* item.item[=].answerOption[=].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 1
* item.item[=].answerOption[=].valueCoding = $general-scale#1 "Severely"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 0
* item.item[=].answerOption[=].valueCoding = $general-scale#0 "Unable to was or dress myself"
* item.item[+].type = #display
* item.item[=].linkId = "PhysicalActivity"
* item.item[=].text = "5. Physical activity levels"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "physicalActivityLevels"
* item.item[=].text = "How much has it been a problem for you to do physical activities (e.g. going for walk, jogging, gardening, or gym) to the level you want because of your joint, muscle, nerve or other health problem symptoms in the past 2 weeks?"
* item.item[=].required = false
* item.item[=].repeats = false
* item.item[=].answerOption[0].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 4
* item.item[=].answerOption[=].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 3
* item.item[=].answerOption[=].valueCoding = $general-scale#3 "Slightly"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 2
* item.item[=].answerOption[=].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 1
* item.item[=].answerOption[=].valueCoding = $general-scale#1 "Very much"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 0
* item.item[=].answerOption[=].valueCoding = $general-scale#0 "Unable to do physicial activities"
* item.item[+].type = #display
* item.item[=].linkId = "dailyroutine_11"
* item.item[=].text = "6. Work/daily routine"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "workDailyRoutine"
* item.item[=].text = "How much have your joint, muscle, nerve or other symptoms interfered with your work or daily routine in the past 2 weeks (including work & jobs around the house)?"
* item.item[=].required = false
* item.item[=].repeats = false
* item.item[=].answerOption[0].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 4
* item.item[=].answerOption[=].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 3
* item.item[=].answerOption[=].valueCoding = $general-scale#3 "Slightly"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 2
* item.item[=].answerOption[=].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 1
* item.item[=].answerOption[=].valueCoding = $general-scale#1 "Severely"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 0
* item.item[=].answerOption[=].valueCoding = $general-scale#0 "Extremely"
* item.item[+].type = #display
* item.item[=].linkId = "SocialActivity"
* item.item[=].text = "7. Social activities and hobbies"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "socialActivitiesAndHobbies"
* item.item[=].text = "How much have your joint, muscle, nerve or other symptoms interfered with your social activities and hobbies in the past 2 weeks?"
* item.item[=].required = false
* item.item[=].repeats = false
* item.item[=].answerOption[0].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 4
* item.item[=].answerOption[=].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 3
* item.item[=].answerOption[=].valueCoding = $general-scale#3 "Slightly"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 2
* item.item[=].answerOption[=].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 1
* item.item[=].answerOption[=].valueCoding = $general-scale#1 "Severely"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 0
* item.item[=].answerOption[=].valueCoding = $general-scale#0 "Extremely"
* item.item[+].type = #display
* item.item[=].linkId = "ImpactOnOthers"
* item.item[=].text = "8. Impact on others around me"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "impactOnOthersAroundMe"
* item.item[=].text = "How have your whānau, family, friends or carers been impacted by your joint, muscle, nerve or other symptoms in the past 2 weeks?"
* item.item[=].required = false
* item.item[=].repeats = false
* item.item[=].answerOption[0].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 4
* item.item[=].answerOption[=].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 3
* item.item[=].answerOption[=].valueCoding = $general-scale#3 "Rarely"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 2
* item.item[=].answerOption[=].valueCoding = $general-scale#2 "Sometimes"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 1
* item.item[=].answerOption[=].valueCoding = $general-scale#1 "Frequently"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 0
* item.item[=].answerOption[=].valueCoding = $general-scale#0 "All the time"
* item.item[+].type = #display
* item.item[=].linkId = "Sleep"
* item.item[=].text = "9. Sleep"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "sleep"
* item.item[=].text = "How often have you had trouble with either falling asleep or staying asleep because of your joint, muscle, nerve or other symptoms in the past 2 weeks?"
* item.item[=].required = false
* item.item[=].repeats = false
* item.item[=].answerOption[0].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 4
* item.item[=].answerOption[=].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 3
* item.item[=].answerOption[=].valueCoding = $general-scale#3 "Rarely"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 2
* item.item[=].answerOption[=].valueCoding = $general-scale#2 "Sometimes"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 1
* item.item[=].answerOption[=].valueCoding = $general-scale#1 "Frequently"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 0
* item.item[=].answerOption[=].valueCoding = $general-scale#0 "Every night"
* item.item[+].type = #display
* item.item[=].linkId = "Fatigue"
* item.item[=].text = "10. Fatigue or low energy"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "fatigueOrLowEnergy"
* item.item[=].text = "How much fatigue or low energy have you felt in the past 2 weeks?"
* item.item[=].required = false
* item.item[=].repeats = false
* item.item[=].answerOption[0].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 4
* item.item[=].answerOption[=].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 3
* item.item[=].answerOption[=].valueCoding = $general-scale#3 "Slight"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 2
* item.item[=].answerOption[=].valueCoding = $general-scale#2 "Moderate"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 1
* item.item[=].answerOption[=].valueCoding = $general-scale#1 "Severe"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 0
* item.item[=].answerOption[=].valueCoding = $general-scale#0 "Extreme"
* item.item[+].type = #display
* item.item[=].linkId = "EmotionalImpact"
* item.item[=].text = "11. Emotional well-being"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "emotionalWellBeing"
* item.item[=].text = "How much have you felt anxious or low in your mood because of your joint, muscle, nerve or other health problem symptoms in the past 2 weeks?"
* item.item[=].required = false
* item.item[=].repeats = false
* item.item[=].answerOption[0].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 4
* item.item[=].answerOption[=].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 3
* item.item[=].answerOption[=].valueCoding = $general-scale#3 "Slightly"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 2
* item.item[=].answerOption[=].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 1
* item.item[=].answerOption[=].valueCoding = $general-scale#1 "Severely"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 0
* item.item[=].answerOption[=].valueCoding = $general-scale#0 "Extremely"
* item.item[+].type = #display
* item.item[=].linkId = "Currentconditions"
* item.item[=].text = "12. Understanding of your condition and any current treatment"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "understandingOfYourConditionAndCurrentTreatment"
* item.item[=].prefix = "12. Understanding of your condition and any current treatment."
* item.item[=].text = "Thinking about your joint, muscle, nerve or other symptoms, how well do you feel you understand your condition and any current treatment (including your diagnosis and medication)?"
* item.item[=].required = false
* item.item[=].repeats = false
* item.item[=].answerOption[0].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 4
* item.item[=].answerOption[=].valueCoding = $general-scale#4 "Completely"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 3
* item.item[=].answerOption[=].valueCoding = $general-scale#3 "Very well"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 2
* item.item[=].answerOption[=].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 1
* item.item[=].answerOption[=].valueCoding = $general-scale#1 "Slightly"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 0
* item.item[=].answerOption[=].valueCoding = $general-scale#0 "Not at all"
* item.item[+].type = #display
* item.item[=].linkId = "managesymptoms_12"
* item.item[=].text = "13. Confidence in being able to manage your symptoms"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "confidenceInBeingAbleToManageYourSymptoms"
* item.item[=].text = "How confident have you felt in being able to manage your joint, muscle, nerve or other health problem symptoms in the past 2 weeks (e.g. exercises, medication, changing lifestyle, assistive devices)?"
* item.item[=].required = false
* item.item[=].repeats = false
* item.item[=].answerOption[0].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 4
* item.item[=].answerOption[=].valueCoding = $general-scale#4 "Extremely"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 3
* item.item[=].answerOption[=].valueCoding = $general-scale#3 "Very"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 2
* item.item[=].answerOption[=].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 1
* item.item[=].answerOption[=].valueCoding = $general-scale#1 "Slightly"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 0
* item.item[=].answerOption[=].valueCoding = $general-scale#0 "Not at all"
* item.item[+].type = #display
* item.item[=].linkId = "OverallImpact"
* item.item[=].text = "14. Overall impact"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].linkId = "overallImpact"
* item.item[=].text = "How much have your joint, muscle, nerve or other health problem symptoms bothered you overall in the past 2 weeks?"
* item.item[=].required = false
* item.item[=].repeats = false
* item.item[=].answerOption[0].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 4
* item.item[=].answerOption[=].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 3
* item.item[=].answerOption[=].valueCoding = $general-scale#3 "Slightly"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 2
* item.item[=].answerOption[=].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 1
* item.item[=].answerOption[=].valueCoding = $general-scale#1 "Very much"
* item.item[=].answerOption[+].extension.url = $ordinal
* item.item[=].answerOption[=].extension.valueDecimal = 0
* item.item[=].answerOption[=].valueCoding = $general-scale#0 "Extremely"
* item.item[+].type = #integer
* item.item[=].linkId = "total"
* item.item[=].text = "Total"
* item.item[=].readOnly = true
* item.item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].extension[=].valueBoolean = true
* item.item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item.item[=].extension[=].valueExpression.language = #text/fhirpath
* item.item[=].extension[=].valueExpression.expression = "YOUR_TOTAL_EXPRESSION_HERE"
* item.type = #group
* item.linkId = "Intro1"
* item.text = "Please complete the following questions."