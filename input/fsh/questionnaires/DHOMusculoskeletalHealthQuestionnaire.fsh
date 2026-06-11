Instance: DHOMusculoskeletalHealthQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOMusculoskeletalHealthQuestionnaire"
* identifier.use = #official
* identifier.value = "DHOMusculoskeletalHealthQuestionnaire"
* version = "1.0.0"
* name = "DHOMusculoskeletalHealthQuestionnaire"
* title = "MUSCULOSKELETAL HEALTH QUESTIONNAIRE (MSK-HQ)"
* status = #active
* description = "This questionnaire is about your joint, bone, muscle and nerve symptoms such as aches, pains, pins and needles and/or stiffness, or other health problem symptoms."
* item.item[0].linkId = "Intro2"
* item.item[=].text = "This questionnaire is about your joint, bone, muscle and nerve symptoms such as aches, pains, pins and needles and/or stiffness, or other health problems. Please focus on the particular health problem(s) for which you sought treatment from this service. "
* item.item[=].type = #display
* item.item[+].linkId = "DayPainStiffness"
* item.item[=].text = "1. Pain/stiffness/pins and needles/other health problem symptoms during the day"
* item.item[=].type = #display
* item.item[+].repeats = false
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].linkId = "painStiffnessPinsAndNeedlesDay"
* item.item[=].text = "How severe were your usual symptoms overall during the day in the past 2 weeks?"
* item.item[=].type = #choice
* item.item[=].answerOption[0].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].valueCoding = $general-scale#3 "Slightly"
* item.item[=].answerOption[+].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].valueCoding = $general-scale#1 "Fairly severe"
* item.item[=].answerOption[+].valueCoding = $general-scale#0 "Very severe"
* item.item[=].required = false
* item.item[+].linkId = "NightPainStiffness"
* item.item[=].text = "2. Pain/stiffness/pins and needles/other health problem symptoms during the night"
* item.item[=].type = #display
* item.item[+].repeats = false
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].linkId = "painStiffnessPinsAndNeedlesNight"
* item.item[=].text = "How severe were your usual symptoms overall during the night in the past 2 weeks?"
* item.item[=].type = #choice
* item.item[=].answerOption[0].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].valueCoding = $general-scale#3 "Slightly"
* item.item[=].answerOption[+].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].valueCoding = $general-scale#1 "Fairly severe"
* item.item[=].answerOption[+].valueCoding = $general-scale#0 "Very severe"
* item.item[=].required = false
* item.item[+].linkId = "Walking"
* item.item[=].text = "3. Walking"
* item.item[=].type = #display
* item.item[+].repeats = false
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].linkId = "walking"
* item.item[=].text = "How much have your symptoms interfered with your ability to walk in the past 2 weeks?"
* item.item[=].type = #choice
* item.item[=].answerOption[0].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].valueCoding = $general-scale#3 "Slightly"
* item.item[=].answerOption[+].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].valueCoding = $general-scale#1 "Severely"
* item.item[=].answerOption[+].valueCoding = $general-scale#0 "Not able to walk"
* item.item[=].required = false
* item.item[+].linkId = "Washing"
* item.item[=].text = "4. Washing/Dressing"
* item.item[=].type = #display
* item.item[+].repeats = false
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].linkId = "washingDressing"
* item.item[=].prefix = "4. Washing/Dressing."
* item.item[=].text = "How much have your symptoms interfered with your ability to wash or dress yourself in the past 2 weeks?"
* item.item[=].type = #choice
* item.item[=].answerOption[0].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].valueCoding = $general-scale#3 "Slightly"
* item.item[=].answerOption[+].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].valueCoding = $general-scale#1 "Severely"
* item.item[=].answerOption[+].valueCoding = $general-scale#0 "Unable to wash or dress myself"
* item.item[=].required = false
* item.item[+].linkId = "PhysicalActivity"
* item.item[=].text = "5. Physical activity levels"
* item.item[=].type = #display
* item.item[+].repeats = false
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].linkId = "physicalActivityLevels"
* item.item[=].text = "How much has it been a problem for you to do physical activities (e.g. going for walk, jogging, gardening, or gym) to the level you want because of your joint, muscle, nerve or other health problem symptoms in the past 2 weeks?"
* item.item[=].type = #choice
* item.item[=].answerOption[0].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].valueCoding = $general-scale#3 "Slightly"
* item.item[=].answerOption[+].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].valueCoding = $general-scale#1 "Very much"
* item.item[=].answerOption[+].valueCoding = $general-scale#0 "Unable to do physicial activities"
* item.item[=].required = false
* item.item[+].linkId = "dailyroutine_11"
* item.item[=].text = "6. Work/daily routine"
* item.item[=].type = #display
* item.item[+].repeats = false
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].linkId = "workDailyRoutine"
* item.item[=].text = "How much have your joint, muscle, nerve or other symptoms interfered with your work or daily routine in the past 2 weeks (including work & jobs around the house)?"
* item.item[=].type = #choice
* item.item[=].answerOption[0].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].valueCoding = $general-scale#3 "Slightly"
* item.item[=].answerOption[+].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].valueCoding = $general-scale#1 "Severely"
* item.item[=].answerOption[+].valueCoding = $general-scale#0 "Extremely"
* item.item[=].required = false
* item.item[+].linkId = "SocialActivity"
* item.item[=].text = "7. Social activities and hobbies"
* item.item[=].type = #display
* item.item[+].repeats = false
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].linkId = "socialActivitiesAndHobbies"
* item.item[=].text = "How much have your joint, muscle, nerve or other symptoms interfered with your social activities and hobbies in the past 2 weeks?"
* item.item[=].type = #choice
* item.item[=].answerOption[0].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].valueCoding = $general-scale#3 "Slightly"
* item.item[=].answerOption[+].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].valueCoding = $general-scale#1 "Severely"
* item.item[=].answerOption[+].valueCoding = $general-scale#0 "Extremely"
* item.item[=].required = false
* item.item[+].linkId = "ImpactOnOthers"
* item.item[=].text = "8. Impact on others around me"
* item.item[=].type = #display
* item.item[+].repeats = false
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].linkId = "impactOnOthersAroundMe"
* item.item[=].text = "How have your whānau, family, friends or carers been impacted by your joint, muscle, nerve or other symptoms in the past 2 weeks?"
* item.item[=].type = #choice
* item.item[=].answerOption[0].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].valueCoding = $general-scale#3 "Rarely"
* item.item[=].answerOption[+].valueCoding = $general-scale#2 "Sometimes"
* item.item[=].answerOption[+].valueCoding = $general-scale#1 "Frequently"
* item.item[=].answerOption[+].valueCoding = $general-scale#0 "All the time"
* item.item[=].required = false
* item.item[+].linkId = "Sleep"
* item.item[=].text = "9. Sleep"
* item.item[=].type = #display
* item.item[+].repeats = false
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].linkId = "sleep"
* item.item[=].text = "How often have you had trouble with either falling asleep or staying asleep because of your joint, muscle, nerve or other symptoms in the past 2 weeks?"
* item.item[=].type = #choice
* item.item[=].answerOption[0].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].valueCoding = $general-scale#3 "Rarely"
* item.item[=].answerOption[+].valueCoding = $general-scale#2 "Sometimes"
* item.item[=].answerOption[+].valueCoding = $general-scale#1 "Frequently"
* item.item[=].answerOption[+].valueCoding = $general-scale#0 "Every night"
* item.item[=].required = false
* item.item[+].linkId = "Fatigue"
* item.item[=].text = "10. Fatigue or low energy"
* item.item[=].type = #display
* item.item[+].repeats = false
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].linkId = "fatigueOrLowEnergy"
* item.item[=].text = "How much fatigue or low energy have you felt in the past 2 weeks?"
* item.item[=].type = #choice
* item.item[=].answerOption[0].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].valueCoding = $general-scale#3 "Slight"
* item.item[=].answerOption[+].valueCoding = $general-scale#2 "Moderate"
* item.item[=].answerOption[+].valueCoding = $general-scale#1 "Severe"
* item.item[=].answerOption[+].valueCoding = $general-scale#0 "Extreme"
* item.item[=].required = false
* item.item[+].linkId = "EmotionalImpact"
* item.item[=].text = "11. Emotional well-being"
* item.item[=].type = #display
* item.item[+].repeats = false
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].linkId = "emotionalWellBeing"
* item.item[=].text = "How much have you felt anxious or low in your mood because of your joint, muscle, nerve or other health problem symptoms in the past 2 weeks?"
* item.item[=].type = #choice
* item.item[=].answerOption[0].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].valueCoding = $general-scale#3 "Slightly"
* item.item[=].answerOption[+].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].valueCoding = $general-scale#1 "Severely"
* item.item[=].answerOption[+].valueCoding = $general-scale#0 "Extremely"
* item.item[=].required = false
* item.item[+].linkId = "Currentconditions"
* item.item[=].text = "12. Understanding of your condition and any current treatment"
* item.item[=].type = #display
* item.item[+].repeats = false
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].linkId = "understandingOfYourConditionAndCurrentTreatment"
* item.item[=].prefix = "12. Understanding of your condition and any current treatment."
* item.item[=].text = "Thinking about your joint, muscle, nerve or other symptoms, how well do you feel you understand your condition and any current treatment (including your diagnosis and medication)?"
* item.item[=].type = #choice
* item.item[=].answerOption[0].valueCoding = $general-scale#4 "Completely"
* item.item[=].answerOption[+].valueCoding = $general-scale#3 "Very well"
* item.item[=].answerOption[+].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].valueCoding = $general-scale#1 "Slightly"
* item.item[=].answerOption[+].valueCoding = $general-scale#0 "Not at all"
* item.item[=].required = false
* item.item[+].linkId = "managesymptoms_12"
* item.item[=].text = "13. Confidence in being able to manage your symptoms"
* item.item[=].type = #display
* item.item[+].repeats = false
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].linkId = "confidenceInBeingAbleToManageYourSymptoms"
* item.item[=].text = "How confident have you felt in being able to manage your joint, muscle, nerve or other health problem symptoms in the past 2 weeks (e.g. exercises, medication, changing lifestyle, assistive devices)?"
* item.item[=].type = #choice
* item.item[=].answerOption[0].valueCoding = $general-scale#4 "Extremely"
* item.item[=].answerOption[+].valueCoding = $general-scale#3 "Very"
* item.item[=].answerOption[+].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].valueCoding = $general-scale#1 "Slightly"
* item.item[=].answerOption[+].valueCoding = $general-scale#0 "Not at all"
* item.item[=].required = false
* item.item[+].linkId = "OverallImpact"
* item.item[=].text = "14. Overall impact"
* item.item[=].type = #display
* item.item[+].repeats = false
* item.item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].linkId = "overallImpact"
* item.item[=].text = "How much have your joint, muscle, nerve or other health problem symptoms bothered you overall in the past 2 weeks?"
* item.item[=].type = #choice
* item.item[=].answerOption[0].valueCoding = $general-scale#4 "Not at all"
* item.item[=].answerOption[+].valueCoding = $general-scale#3 "Slightly"
* item.item[=].answerOption[+].valueCoding = $general-scale#2 "Moderately"
* item.item[=].answerOption[+].valueCoding = $general-scale#1 "Very much"
* item.item[=].answerOption[+].valueCoding = $general-scale#0 "Extremely"
* item.item[=].required = false
* item.item[+].type = #display
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].extension.valueBoolean = true
* item.item[=].linkId = "total-score-display"
* item.item[=].text = "Total score"
* item.item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item.item[=].text.extension.valueExpression.language = #text/fhirpath
* item.item[=].text.extension.valueExpression.expression = "iif(%mskTotal = 0, '0', iif(%mskTotal = 1, '1', iif(%mskTotal = 2, '2', iif(%mskTotal = 3, '3', iif(%mskTotal = 4, '4', iif(%mskTotal = 5, '5', iif(%mskTotal = 6, '6', iif(%mskTotal = 7, '7', iif(%mskTotal = 8, '8', iif(%mskTotal = 9, '9', iif(%mskTotal = 10, '10', iif(%mskTotal = 11, '11', iif(%mskTotal = 12, '12', iif(%mskTotal = 13, '13', iif(%mskTotal = 14, '14', iif(%mskTotal = 15, '15', iif(%mskTotal = 16, '16', iif(%mskTotal = 17, '17', iif(%mskTotal = 18, '18', iif(%mskTotal = 19, '19', iif(%mskTotal = 20, '20', iif(%mskTotal = 21, '21', iif(%mskTotal = 22, '22', iif(%mskTotal = 23, '23', iif(%mskTotal = 24, '24', iif(%mskTotal = 25, '25', iif(%mskTotal = 26, '26', iif(%mskTotal = 27, '27', iif(%mskTotal = 28, '28', iif(%mskTotal = 29, '29', iif(%mskTotal = 30, '30', iif(%mskTotal = 31, '31', iif(%mskTotal = 32, '32', iif(%mskTotal = 33, '33', iif(%mskTotal = 34, '34', iif(%mskTotal = 35, '35', iif(%mskTotal = 36, '36', iif(%mskTotal = 37, '37', iif(%mskTotal = 38, '38', iif(%mskTotal = 39, '39', iif(%mskTotal = 40, '40', iif(%mskTotal = 41, '41', iif(%mskTotal = 42, '42', iif(%mskTotal = 43, '43', iif(%mskTotal = 44, '44', iif(%mskTotal = 45, '45', iif(%mskTotal = 46, '46', iif(%mskTotal = 47, '47', iif(%mskTotal = 48, '48', iif(%mskTotal = 49, '49', iif(%mskTotal = 50, '50', iif(%mskTotal = 51, '51', iif(%mskTotal = 52, '52', iif(%mskTotal = 53, '53', iif(%mskTotal = 54, '54', iif(%mskTotal = 55, '55', iif(%mskTotal = 56, '56', '')))))))))))))))))))))))))))))))))))))))))))))))))))))))))"
* item.linkId = "Intro1"
* item.text = "Please complete the following questions. "
* item.type = #group
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "header"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId='Intro1').item"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "painStiffnessPinsAndNeedlesDayScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='painStiffnessPinsAndNeedlesDay').answer.valueCoding.code.exists(), %header.where(linkId='painStiffnessPinsAndNeedlesDay').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "painStiffnessPinsAndNeedlesNightScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='painStiffnessPinsAndNeedlesNight').answer.valueCoding.code.exists(), %header.where(linkId='painStiffnessPinsAndNeedlesNight').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "walkingScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='walking').answer.valueCoding.code.exists(), %header.where(linkId='walking').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "washingDressingScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='washingdressing').answer.valueCoding.code.exists(), %header.where(linkId='washingdressing').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "physicalActivityLevelsScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='physicalactivitylevels').answer.valueCoding.code.exists(), %header.where(linkId='physicalactivitylevels').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "workDailyRoutineScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='workDailyRoutine').answer.valueCoding.code.exists(), %header.where(linkId='workDailyRoutine').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "socialActivitiesAndHobbiesScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='socialActivitiesAndHobbies').answer.valueCoding.code.exists(), %header.where(linkId='socialActivitiesAndHobbies').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "impactOnOthersAroundMeScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='impactOnOthersAroundMe').answer.valueCoding.code.exists(), %header.where(linkId='impactOnOthersAroundMe').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "sleepScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='sleep').answer.valueCoding.code.exists(), %header.where(linkId='sleep').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "fatigueOrLowEnergyScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='fatigueOrLowEnergy').answer.valueCoding.code.exists(), %header.where(linkId='fatigueOrLowEnergy').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "emotionalWellBeingScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='emotionalWellBeing').answer.valueCoding.code.exists(), %header.where(linkId='emotionalWellBeing').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "understandingOfYourConditionAndCurrentTreatmentScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='understandingOfYourConditionAndCurrentTreatment').answer.valueCoding.code.exists(), %header.where(linkId='understandingOfYourConditionAndCurrentTreatment').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "confidenceInBeingAbleToManageYourSymptomsScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='confidenceInBeingAbleToManageYourSymptoms').answer.valueCoding.code.exists(), %header.where(linkId='confidenceInBeingAbleToManageYourSymptoms').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "overallImpactScore"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%header.where(linkId='overallImpact').answer.valueCoding.code.exists(), %header.where(linkId='overallImpact').answer.valueCoding.code.toInteger(), 0)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "mskTotal"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%painStiffnessPinsAndNeedlesDayScore + %painStiffnessPinsAndNeedlesNightScore + %walkingScore + %washingDressingScore + %physicalActivityLevelsScore + %workDailyRoutineScore + %socialActivitiesAndHobbiesScore + %impactOnOthersAroundMeScore+ %sleepScore + %fatigueOrLowEnergyScore + %emotionalWellBeingScore + %understandingOfYourConditionAndCurrentTreatmentScore+ %confidenceInBeingAbleToManageYourSymptomsScore + %overallImpactScore"