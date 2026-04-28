Instance: DHOHowDoesYourConditionAffectYourLife
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOHowDoesYourConditionAffectYourLife"
* version = "1.0"
* name = "DHOHowDoesYourConditionAffectYourLife"
* title = "How does your condition affect your life?"
* status = #active
* description = "This form collects information about how a health condition affects different aspects of a person’s sleep, daily functioning, and overall quality of life."


// ================= FORM GROUP =================

* item[0].type = #group
* item[=].linkId = "formheading"
* item[=].text = "How does your condition affect your life?"

// Q1
* item[=].item[0].type = #choice
* item[=].item[=].extension.url = $qic-ext
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].linkId = "socialinteractions"
* item[=].item[=].text = "How much does your condition affect your social interactions? (Examples: meeting friends, going out, joining in groups, going shopping, everyday activities outside the home)"
* item[=].item[=].required = true
* item[=].item[=].readOnly = false
* item[=].item[=].answerOption[0].valueCoding = $difficulty-scale#1 "1 -- No difficulty"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#2 "2 -- Little difficulty"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#3 "3 -- Some difficulty"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#4 "4 -- Quite difficult"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#5 "5 -- Very difficult"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#6 "6 -- Extremely difficult"

// Q2
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = $qic-ext
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].linkId = "personalrelationships"
* item[=].item[=].text = "How much does your condition affect your personal relationships? (Examples: personal relations with partner, family members, close personal friends)"
* item[=].item[=].required = true
* item[=].item[=].readOnly = false
* item[=].item[=].answerOption[0].valueCoding = $difficulty-scale#1 "1 -- No difficulty"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#2 "2 -- Little difficulty"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#3 "3 -- Some difficulty"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#4 "4 -- Quite difficult"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#5 "5 -- Very difficult"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#6 "6 -- Extremely difficult"

// Q3
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = $qic-ext
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].linkId = "responsibilitiestoothers_05"
* item[=].item[=].text = "How much does your condition affect your ability to meet your responsibilities to others? (Examples: doing meaningful things for yourself or others, including caring for children, grandchildren or partner, work (paid and unpaid), including how having to rely on others may have an impact on you)"
* item[=].item[=].required = true
* item[=].item[=].readOnly = false
* item[=].item[=].answerOption[0].valueCoding = $difficulty-scale#1 "1 -- No difficulty"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#2 "2 -- Little difficulty"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#3 "3 -- Some difficulty"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#4 "4 -- Quite difficult"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#5 "5 -- Very difficult"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#6 "6 -- Extremely difficult"

// Q4
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = $qic-ext
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].linkId = "personalcare_07"
* item[=].item[=].text = "How much does your condition affect your personal care? (Examples: looking after yourself, your health, personal hygiene, need for aids or special clothing)"
* item[=].item[=].required = true
* item[=].item[=].readOnly = false
* item[=].item[=].answerOption[0].valueCoding = $difficulty-scale#1 "1 -- No difficulty"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#2 "2 -- Little difficulty"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#3 "3 -- Some difficulty"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#4 "4 -- Quite difficult"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#5 "5 -- Very difficult"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#6 "6 -- Extremely difficult"

// Q5
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = $qic-ext
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].linkId = "personalsafety_08"
* item[=].item[=].text = "How much does your condition affect your personal safety? (Examples: being safe from injury and harm, from yourself or others and in your surroundings)"
* item[=].item[=].required = true
* item[=].item[=].readOnly = false
* item[=].item[=].answerOption[0].valueCoding = $difficulty-scale#1 "1 -- No difficulty"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#2 "2 -- Little difficulty"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#3 "3 -- Some difficulty"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#4 "4 -- Quite difficult"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#5 "5 -- Very difficult"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#6 "6 -- Extremely difficult"

// Q6
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = $qic-ext
* item[=].item[=].extension.valueCodeableConcept = $qic#drop-down "Drop down"
* item[=].item[=].linkId = "leisure_09"
* item[=].item[=].text = "How much does your condition affect your leisure activities? (Examples: getting exercise, hobbies, sporting activities, gardening, do-it-yourself activities, crafts and travel)"
* item[=].item[=].required = true
* item[=].item[=].readOnly = false
* item[=].item[=].answerOption[0].valueCoding = $difficulty-scale#1 "1 -- No difficulty"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#2 "2 -- Little difficulty"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#3 "3 -- Some difficulty"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#4 "4 -- Quite difficult"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#5 "5 -- Very difficult"
* item[=].item[=].answerOption[+].valueCoding = $difficulty-scale#6 "6 -- Extremely difficult"