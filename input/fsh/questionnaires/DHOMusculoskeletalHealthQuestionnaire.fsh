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

//===== Header  =====
* item[0].type = #group
* item[=].linkId = "q1778122074450_ee71ofhbn"
* item[=].text = "This questionnaire is about your joint, bone, muscle and nerve symptoms such as aches, pains, pins and needles and/or stiffness, or other health problems. Please focus on the particular health problem(s) for which you sought treatment from this service."
* item[=].required = false
* item[=].repeats = false

//===== Intro  =====
* item[=].item[0].type = #display
* item[=].item[=].linkId = "Intro2"
* item[=].item[=].text = "For each question, select one option that best describes how you have felt over the past 2 weeks."

//Q1
* item[=].item[+].type = #group
* item[=].item[=].linkId = "DayPainStiffness"
* item[=].item[=].text = "1. Pain/stiffness/pins and needles/other health problem symptoms during the day."
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].linkId = "painStiffnessPinsAndNeedlesDay"
* item[=].item[=].item[=].text = "How severe were your usual symptoms overall during the day in the past 2 weeks?"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].item[=].answerOption[0].valueCoding = $general#4 "4 -- Not at all"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#3 "3 -- Slightly"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#2 "2 -- Moderately"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#1 "1 -- Fairly severe"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#0 "0 -- Very severe"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 0

///Q2
* item[=].item[+].type = #group
* item[=].item[=].linkId = "NightPainStiffness"
* item[=].item[=].text = "2. Pain/stiffness/pins and needles/other health problem symptoms during the night."
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].linkId = "painStiffnessPinsAndNeedlesNight"
* item[=].item[=].item[=].text = "How severe were your usual symptoms overall during the night in the past 2 weeks?"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].item[=].answerOption[0].valueCoding = $general#4 "4 -- Not at all"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#3 "3 -- Slightly"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#2 "2 -- Moderately"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#1 "1 -- Fairly severe"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#0 "0 -- Very severe"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 0

//Q3
* item[=].item[+].type = #group
* item[=].item[=].linkId = "Walking"
* item[=].item[=].text = "3. Walking."
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].linkId = "walking"
* item[=].item[=].item[=].text = "How much have your symptoms interfered with your ability to walk in the past 2 weeks?"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].item[=].answerOption[0].valueCoding = $general#4 "4 -- Not at all"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#3 "3 -- Slightly"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#2 "2 -- Moderately"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#1 "1 -- Severely"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#0 "0 -- Not able to walk"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 0

//Q4
* item[=].item[+].type = #group
* item[=].item[=].linkId = "Washing"
* item[=].item[=].text = "4. Washing/Dressing."
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].linkId = "washingDressing"
* item[=].item[=].item[=].prefix = "4. Washing/Dressing."
* item[=].item[=].item[=].text = "How much have your symptoms interfered with your ability to wash or dress yourself in the past 2 weeks?"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].item[=].answerOption[0].valueCoding = $general#4 "4 -- Not at all"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#3 "3 -- Slightly"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#2 "2 -- Moderately"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#1 "1 -- Severely"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#0 "0 -- Unable to was or dress myself"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 0

//Q5
* item[=].item[+].type = #group
* item[=].item[=].linkId = "PhysicalActivity"
* item[=].item[=].text = "5. Physical activity levels."
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].linkId = "physicalActivityLevels"
* item[=].item[=].item[=].text = "How much has it been a problem for you to do physical activities (e.g. going for walk, jogging, gardening, or gym) to the level you want because of your joint, muscle, nerve or other health problem symptoms in the past 2 weeks?"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].item[=].answerOption[0].valueCoding = $general#4 "4 -- Not at all"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#3 "3 -- Slightly"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#2 "2 -- Moderately"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#1 "1 -- Very much"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#0 "0 -- Unable to do physicial activities"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 0

///Q6
* item[=].item[+].type = #group
* item[=].item[=].linkId = "dailyroutine_11"
* item[=].item[=].text = "6. Work/daily routine."
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].linkId = "workDailyRoutine"
* item[=].item[=].item[=].text = "How much have your joint, muscle, nerve or other symptoms interfered with your work or daily routine in the past 2 weeks (including work & jobs around the house)?"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].item[=].answerOption[0].valueCoding = $general#4 "4 -- Not at all"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#3 "3 -- Slightly"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#2 "2 -- Moderately"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#1 "1 -- Severely"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#0 "0 -- Extremely"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 0

//Q7
* item[=].item[+].type = #group
* item[=].item[=].linkId = "SocialActivity"
* item[=].item[=].text = "7. Social activities and hobbies."
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].linkId = "socialActivitiesAndHobbies"
* item[=].item[=].item[=].text = "How much have your joint, muscle, nerve or other symptoms interfered with your social activities and hobbies in the past 2 weeks?"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].item[=].answerOption[0].valueCoding = $general#4 "4 -- Not at all"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#3 "3 -- Slightly"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#2 "2 -- Moderately"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#1 "1 -- Severely"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#0 "0 -- Extremely"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 0

//Q8
* item[=].item[+].type = #group
* item[=].item[=].linkId = "ImpactOnOthers"
* item[=].item[=].text = "8. Impact on others around me."
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].linkId = "impactOnOthersAroundMe"
* item[=].item[=].item[=].text = "How have your whānau, family, friends or carers been impacted by your joint, muscle, nerve or other symptoms in the past 2 weeks?"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].item[=].answerOption[0].valueCoding = $general#4 "4 -- Not at all"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#3 "3 -- Rarely"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#2 "2 -- Sometimes"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#1 "1 -- Frequently"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#0 "0 -- All the time"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 0

///Q9
* item[=].item[+].type = #group
* item[=].item[=].linkId = "Sleep"
* item[=].item[=].text = "9. Sleep."
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].linkId = "sleep"
* item[=].item[=].item[=].text = "How often have you had trouble with either falling asleep or staying asleep because of your joint, muscle, nerve or other symptoms in the past 2 weeks?"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].item[=].answerOption[0].valueCoding = $general#4 "4 -- Not at all"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#3 "3 -- Rarely"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#2 "2 -- Sometimes"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#1 "1 -- Frequently"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#0 "0 -- Every night"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 0

//Q10
* item[=].item[+].type = #group
* item[=].item[=].linkId = "Fatigue"
* item[=].item[=].text = "10. Fatigue or low energy."
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].linkId = "fatigueOrLowEnergy"
* item[=].item[=].item[=].text = "How much fatigue or low energy have you felt in the past 2 weeks?"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].item[=].answerOption[0].valueCoding = $general#4 "4 -- Not at all"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#3 "3 -- Slight"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#2 "2 -- Moderate"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#1 "1 -- Severe"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#0 "0 -- Extreme"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 0

//Q11
* item[=].item[+].type = #group
* item[=].item[=].linkId = "EmotionalImpact"
* item[=].item[=].text = "11. Emotional well-being."
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].linkId = "emotionalWellBeing"
* item[=].item[=].item[=].text = "How much have you felt anxious or low in your mood because of your joint, muscle, nerve or other health problem symptoms in the past 2 weeks?"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].item[=].answerOption[0].valueCoding = $general#4 "4 -- Not at all"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#3 "3 -- Slightly"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#2 "2 -- Moderately"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#1 "1 -- Severely"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#0 "0 -- Extremely"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 0

//Q12
* item[=].item[+].type = #group
* item[=].item[=].linkId = "Currentconditions"
* item[=].item[=].text = "12. Understanding of your condition and any current treatment."
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].linkId = "understandingOfYourConditionAndCurrentTreatment"
* item[=].item[=].item[=].prefix = "12. Understanding of your condition and any current treatment."
* item[=].item[=].item[=].text = "Thinking about your joint, muscle, nerve or other symptoms, how well do you feel you understand your condition and any current treatment (including your diagnosis and medication)?"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].item[=].answerOption[0].valueCoding = $general#4 "4 -- Completely"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#3 "3 -- Very well"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#2 "2 -- Moderately"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#1 "1 -- Slightly"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#0 "0 -- Not at all"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 0

//Q13
* item[=].item[+].type = #group
* item[=].item[=].linkId = "managesymptoms_12"
* item[=].item[=].text = "13. Confidence in being able to manage your symptoms."
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].linkId = "confidenceInBeingAbleToManageYourSymptoms"
* item[=].item[=].item[=].text = "How confident have you felt in being able to manage your joint, muscle, nerve or other health problem symptoms in the past 2 weeks (e.g. exercises, medication, changing lifestyle, assistive devices)?"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].item[=].answerOption[0].valueCoding = $general#4 "4 -- Extremely"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#3 "3 -- Very"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#2 "2 -- Moderately"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#1 "1 -- Slightly"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#0 "0 -- Not at all"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 0

//Q14
* item[=].item[+].type = #group
* item[=].item[=].linkId = "OverallImpact"
* item[=].item[=].text = "14. Overall impact."
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].linkId = "overallImpact"
* item[=].item[=].item[=].text = "How much have your joint, muscle, nerve or other health problem symptoms bothered you overall in the past 2 weeks?"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].item[=].answerOption[0].valueCoding = $general#4 "4 -- Not at all"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 4
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#3 "3 -- Slightly"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 3
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#2 "2 -- Moderately"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 2
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#1 "1 -- Very much"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 1
* item[=].item[=].item[=].answerOption[+].valueCoding = $general#0 "0 -- Extremely"
* item[=].item[=].item[=].answerOption[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].item[=].answerOption[=].extension[=].valueDecimal = 0

//total score
* item[=].item[+].type = #integer
* item[=].item[=].linkId = "total"
* item[=].item[=].text = "Total"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].extension[0].url = $sdc-calc
* item[=].item[=].extension[=].valueExpression.language = ##text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "iif(%resource.item.descendants().where(linkId='painStiffnessPinsAndNeedlesDay').answer.value.exists(), %resource.item.descendants().where(linkId='painStiffnessPinsAndNeedlesDay').answer.value.ordinal(), 0) +\niif(%resource.item.descendants().where(linkId='painStiffnessPinsAndNeedlesNight').answer.value.exists(), %resource.item.descendants().where(linkId='painStiffnessPinsAndNeedlesNight').answer.value.ordinal(), 0) +\niif(%resource.item.descendants().where(linkId='walking').answer.value.exists(), %resource.item.descendants().where(linkId='walking').answer.value.ordinal(), 0) +\niif(%resource.item.descendants().where(linkId='washingDressing').answer.value.exists(), %resource.item.descendants().where(linkId='washingDressing').answer.value.ordinal(), 0) +\niif(%resource.item.descendants().where(linkId='physicalActivityLevels').answer.value.exists(), %resource.item.descendants().where(linkId='physicalActivityLevels').answer.value.ordinal(), 0) +\niif(%resource.item.descendants().where(linkId='workDailyRoutine').answer.value.exists(), %resource.item.descendants().where(linkId='workDailyRoutine').answer.value.ordinal(), 0) +\niif(%resource.item.descendants().where(linkId='socialActivitiesAndHobbies').answer.value.exists(), %resource.item.descendants().where(linkId='socialActivitiesAndHobbies').answer.value.ordinal(), 0) +\niif(%resource.item.descendants().where(linkId='impactOnOthersAroundMe').answer.value.exists(), %resource.item.descendants().where(linkId='impactOnOthersAroundMe').answer.value.ordinal(), 0) +\niif(%resource.item.descendants().where(linkId='sleep').answer.value.exists(), %resource.item.descendants().where(linkId='sleep').answer.value.ordinal(), 0) +\niif(%resource.item.descendants().where(linkId='fatigueOrLowEnergy').answer.value.exists(), %resource.item.descendants().where(linkId='fatigueOrLowEnergy').answer.value.ordinal(), 0) +\niif(%resource.item.descendants().where(linkId='emotionalWellBeing').answer.value.exists(), %resource.item.descendants().where(linkId='emotionalWellBeing').answer.value.ordinal(), 0) +\niif(%resource.item.descendants().where(linkId='understandingOfYourConditionAndCurrentTreatment').answer.value.exists(), %resource.item.descendants().where(linkId='understandingOfYourConditionAndCurrentTreatment').answer.value.ordinal(), 0) +\niif(%resource.item.descendants().where(linkId='confidenceInBeingAbleToManageYourSymptoms').answer.value.exists(), %resource.item.descendants().where(linkId='confidenceInBeingAbleToManageYourSymptoms').answer.value.ordinal(), 0) +\niif(%resource.item.descendants().where(linkId='overallImpact').answer.value.exists(), %resource.item.descendants().where(linkId='overallImpact').answer.value.ordinal(), 0)"

