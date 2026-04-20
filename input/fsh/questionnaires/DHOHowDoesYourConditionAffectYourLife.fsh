Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

Instance: DHOHowDoesYourConditionAffectYourLife
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DHOHowDoesYourConditionAffectYourLife"
* version = "1.0"
* name = "DHOHowDoesYourConditionAffectYourLife"
* title = "How does your condition affect your life?"
* status = #active
* description = "This form collects information about how a health condition affects different aspects of a person’s sleep, daily functioning, and overall quality of life."
* contained = difficulty-scale
* item[0].item[0].type = #string
* item[=].item[=].linkId = "prefferdname"
* item[=].item[=].text = "Preferred name"
* item[=].item[=].required = true
* item[=].item[+].type = #string
* item[=].item[=].linkId = "fullname"
* item[=].item[=].text = "Full name"
* item[=].item[=].required = true
* item[=].item[+].type = #string
* item[=].item[=].linkId = "nhinumber"
* item[=].item[=].text = "NHI number"
* item[=].item[=].required = true
* item[=].item[+].type = #date
* item[=].item[=].linkId = "dob_01"
* item[=].item[=].text = "DOB"
* item[=].item[=].required = true
* item[=].item[+].type = #string
* item[=].item[=].linkId = "address_02"
* item[=].item[=].text = "Address"
* item[=].item[=].required = true
* item[=].item[+].type = #string
* item[=].item[=].linkId = "telephonenumber"
* item[=].item[=].text = "Telephone Number"
* item[=].item[=].required = true
* item[=].item[+].type = #date
* item[=].item[=].linkId = "date_03"
* item[=].item[=].text = "Date"
* item[=].item[=].required = true
* item[=].item[+].linkId = "patientlabel"
* item[=].item[=].type = #display
* item[=].item[=].text = "Stick patient label here (or fill in the details below if no label is available)"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[=].extension.valueCodeableConcept.text = "Help-Button"
* item[=].type = #group
* item[=].linkId = "patientdetails"
* item[=].text = "Patient details"
* item[+].type = #group
* item[=].linkId = "introduction_04"
* item[=].text = "Introduction"
* item[+].item[0].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].linkId = "socialinteractions"
* item[=].item[=].text = "How much does your condition affect your social interactions? (Examples: meeting friends, going out, joining in groups, going shopping, everyday activities outside the home)"
* item[=].item[=].required = true
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = "#difficulty-scale"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].linkId = "personalrelationships_05"
* item[=].item[=].text = "How much does your condition affect your personal relationships? (Examples: personal relations with partner, family members, close personal friends)"
* item[=].item[=].required = true
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = "#difficulty-scale"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].linkId = "responsibilitiestoothers"
* item[=].item[=].text = "How much does your condition affect your ability to meet your responsibilities to others? (Examples: doing meaningful things for yourself or others, including caring for children, grandchildren or partner, work (paid and unpaid), including how having to rely on others may have an impact on you))"
* item[=].item[=].required = true
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = "#difficulty-scale"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].linkId = "personalcare_06"
* item[=].item[=].text = "How much does your condition affect your personal care? (Examples: looking after yourself, your health, personal hygiene, need for aids or special clothing)"
* item[=].item[=].required = true
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = "#difficulty-scale"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].linkId = "personalsafety_07"
* item[=].item[=].text = "How much does your condition affect your personal safety? (Examples: being safe from injury and harm, from yourself or others and in your surroundings)"
* item[=].item[=].required = true
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = "#difficulty-scale"
* item[=].item[+].type = #choice
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].linkId = "leisureactivities_08"
* item[=].item[=].text = "How much does your condition affect your leisure activities? (Examples: getting exercise, hobbies, sporting activities, gardening, do-it-yourself activities, crafts and travel)"
* item[=].item[=].required = true
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = "#difficulty-scale"
* item[=].type = #group
* item[=].linkId = "formheading"
* item[=].text = "How does your condition affect your life?"

Instance: difficulty-scale
InstanceOf: ValueSet
Usage: #inline
* status = #active
* date = "2026-04-13T23:10:03.370Z"
* expansion.timestamp = "2026-04-13T23:10:01.648Z"
* expansion.contains[0].system = "1"
* expansion.contains[=].code = #1
* expansion.contains[=].display = "1 -- No difficulty"
* expansion.contains[+].system = "2"
* expansion.contains[=].code = #2
* expansion.contains[=].display = "2 -- Little difficulty"
* expansion.contains[+].system = "3"
* expansion.contains[=].code = #3
* expansion.contains[=].display = "3 -- Some difficulty"
* expansion.contains[+].system = "4"
* expansion.contains[=].code = #4
* expansion.contains[=].display = "4 -- Quite difficulty"
* expansion.contains[+].system = "5"
* expansion.contains[=].code = #5
* expansion.contains[=].display = "5 -- Very difficulty"
* expansion.contains[+].system = "6"
* expansion.contains[=].code = #6
* expansion.contains[=].display = "6 -- Extremely difficulty"