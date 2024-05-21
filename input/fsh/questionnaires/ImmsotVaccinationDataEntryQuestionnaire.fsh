Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control
Alias: $air-status-reason-terms = https://standards.digital.health.nz/ns/air-status-reason-terms
Alias: $cvx = http://hl7.org/fhir/sid/cvx
Alias: $immunisation-code = https://standards.digital.health.nz/ns/immunisation-code
Alias: $air-terms-code = https://standards.digital.health.nz/ns/air-terms-code

Instance: ImmsotVaccinationDataEntryQuestionnaire
InstanceOf: Questionnaire
Description: "Submit an overseas, historic, or not-done vaccination to AIR"
Usage: #definition
* title = "AIR - Overseas, Historic, Not Done"
* status = #draft
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/ImmsotVaccinationDataEntryQuestionnaire"
* identifier.period.start = "2023-07-05"
* identifier.use = #usual
* identifier.value = "ImmsotVaccinationDataEntryQuestionnaire"
* item.item[0].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].linkId = "p01-q01-Type"
* item.item[=].prefix = "page 1 question 1"
* item.item[=].text = "Type of vaccination"
* item.item[=].required = true
* item.item[=].answerOption[0].valueCoding.display = "Overseas"
* item.item[=].answerOption[+].valueCoding.display = "Historic"
* item.item[=].answerOption[+].valueCoding.display = "Not done"
* item.item[+].type = #string
* item.item[=].extension.valueBoolean = true
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].linkId = "p01-q02-StatusCompleted"
* item.item[=].prefix = "page 1 question 2"
* item.item[=].text = "Extract - Status completed"
* item.item[=].enableWhen[0].question = "p01-q01-Type"
* item.item[=].enableWhen[=].operator = #=
* item.item[=].enableWhen[=].answerCoding.display = "Overseas"
* item.item[=].enableWhen[+].question = "p01-q01-Type"
* item.item[=].enableWhen[=].operator = #=
* item.item[=].enableWhen[=].answerCoding.display = "Historic"
* item.item[=].enableBehavior = #any
* item.item[=].required = true
* item.item[=].initial.valueString = "completed"
* item.item[=].definition = "http://hl7.org/fhir/StructureDefinition/Immunization#Immunization.status"
* item.item[+].type = #string
* item.item[=].extension.valueBoolean = true
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].linkId = "p01-q03-StatusNotDone"
* item.item[=].prefix = "page 1 question 3"
* item.item[=].text = "Extract - Status not done"
* item.item[=].enableWhen.question = "p01-q01-Type"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding.display = "Not done"
* item.item[=].enableBehavior = #all
* item.item[=].initial.valueString = "not-done"
* item.item[=].definition = "http://hl7.org/fhir/StructureDefinition/Immunization#Immunization.status"
* item.item[+].type = #choice
* item.item[=].extension.valueBoolean = true
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].linkId = "p01-q04-StatusReasonOverseas"
* item.item[=].prefix = "page 1 question 4"
* item.item[=].text = "Extract - Status reason"
* item.item[=].enableWhen.question = "p01-q01-Type"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding.display = "Overseas"
* item.item[=].enableBehavior = #all
* item.item[=].initial.valueCoding = $air-status-reason-terms#GIVNOS "Given overseas"
* item.item[=].definition = "http://hl7.org/fhir/StructureDefinition/Immunization#Immunization.statusReason.coding[]"
* item.item[+].type = #choice
* item.item[=].extension.valueBoolean = true
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].linkId = "p01-q05-StatusReasonHistoric"
* item.item[=].prefix = "page 1 question 5"
* item.item[=].text = "Extract - Status reason"
* item.item[=].enableWhen.question = "p01-q01-Type"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding.display = "Historic"
* item.item[=].enableBehavior = #all
* item.item[=].initial.valueCoding = $air-status-reason-terms#HSTGIVN "Given historically"
* item.item[=].definition = "http://hl7.org/fhir/StructureDefinition/Immunization#Immunization.statusReason.coding[]"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].linkId = "p01-q06-StatusReasonNotDone"
* item.item[=].prefix = "page 1 question 6"
* item.item[=].text = "Status reason"
* item.item[=].enableWhen.question = "p01-q01-Type"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding.display = "Not done"
* item.item[=].enableBehavior = #all
* item.item[=].required = true
* item.item[=].answerOption[0].valueCoding = $air-status-reason-terms#DPC "Declined by parent/guardian"
* item.item[=].answerOption[+].valueCoding = $air-status-reason-terms#DIC "Declined by individual"
* item.item[=].answerOption[+].valueCoding = $air-status-reason-terms#DMC "Permanent contraindication"
* item.item[=].answerOption[+].valueCoding = $air-status-reason-terms#DNI "Immune"
* item.item[=].definition = "http://hl7.org/fhir/StructureDefinition/Immunization#Immunization.statusReason.coding[]"
* item.item[+].type = #choice
* item.item[=].extension.valueBoolean = true
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].linkId = "p01-q07-FacilityOverseas"
* item.item[=].prefix = "page 1 question 7"
* item.item[=].text = "Extract - Overseas facility"
* item.item[=].enableWhen.question = "p01-q01-Type"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding.display = "Overseas"
* item.item[=].enableBehavior = #all
* item.item[=].initial.valueCoding = #F3R789-A "NIR Overseas Clinic"
* item.item[=].definition = "http://hl7.org/fhir/StructureDefinition/Immunization#Immunization.location"
* item.item[+].type = #choice
* item.item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].extension[+].valueBoolean = true
* item.item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].linkId = "p01-q08-FacilityHistoric"
* item.item[=].prefix = "page 1 question 8"
* item.item[=].text = "Extract - Historic facility"
* item.item[=].enableWhen[0].question = "p01-q01-Type"
* item.item[=].enableWhen[=].operator = #=
* item.item[=].enableWhen[=].answerCoding.display = "Historic"
* item.item[=].enableWhen[+].question = "p01-q01-Type"
* item.item[=].enableWhen[=].operator = #=
* item.item[=].enableWhen[=].answerCoding.display = "Not done"
* item.item[=].enableBehavior = #any
* item.item[=].initial.valueCoding = #F3R790-H "NIR Unknown NZ Clinic"
* item.item[=].definition = "http://hl7.org/fhir/StructureDefinition/Immunization#Immunization.location"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].linkId = "p01-q09-Antigens"
* item.item[=].prefix = "page 1 question 9"
* item.item[=].text = "Vaccine antigens"
* item.item[=].required = true
* item.item[=].enableWhen.question = "p01-q01-Type"
* item.item[=].enableWhen.operator = #exists
* item.item[=].enableWhen.answerBoolean = true
* item.item[=].enableBehavior = #all
* item.item[=].answerOption[0].valueCoding = $cvx#03 "03 - MMR"
* item.item[=].answerOption[+].valueCoding = $cvx#05 "05 - Measles"
* item.item[=].answerOption[+].valueCoding = $cvx#06 "06 - Rubella"
* item.item[=].answerOption[+].valueCoding = $cvx#08 "08 - HepB"
* item.item[=].answerOption[+].valueCoding = $cvx#09 "09 - Td"
* item.item[=].answerOption[+].valueCoding = $cvx#10 "10 - IPV"
* item.item[=].answerOption[+].valueCoding = $cvx#19 "19 - BCG"
* item.item[=].answerOption[+].valueCoding = $cvx#20 "20 - DTaP"
* item.item[=].answerOption[+].valueCoding = $cvx#21 "21 - VV"
* item.item[=].answerOption[+].valueCoding = $cvx#22 "22 - DTP-Hib"
* item.item[=].answerOption[+].valueCoding = $cvx#25 "25 - Typhoid"
* item.item[=].answerOption[+].valueCoding = $cvx#26 "26 - Cholera"
* item.item[=].answerOption[+].valueCoding = $cvx#28 "28 - DT"
* item.item[=].answerOption[+].valueCoding = $cvx#30 "30 - HBIG"
* item.item[=].answerOption[+].valueCoding = $cvx#33 "33 - 23PPV"
* item.item[=].answerOption[+].valueCoding = $cvx#35 "35 - Tetanus"
* item.item[=].answerOption[+].valueCoding = $cvx#37 "37 - YFV"
* item.item[=].answerOption[+].valueCoding = $cvx#39 "39 - JEV"
* item.item[=].answerOption[+].valueCoding = $cvx#43 "43 - HepB"
* item.item[=].answerOption[+].valueCoding = $cvx#44 "44 - HepB"
* item.item[=].answerOption[+].valueCoding = $cvx#48 "48 - Hib-PRP-T"
* item.item[=].answerOption[+].valueCoding = $cvx#50 "50 - DTaP-Hib"
* item.item[=].answerOption[+].valueCoding = $cvx#51 "51 - Hib-HepB"
* item.item[=].answerOption[+].valueCoding = $cvx#52 "52 - HepA"
* item.item[=].answerOption[+].valueCoding = $cvx#56 "56 - Dengue"
* item.item[=].answerOption[+].valueCoding = $cvx#62 "62 - HPV4"
* item.item[=].answerOption[+].valueCoding = $cvx#75 "75 - MPX"
* item.item[=].answerOption[+].valueCoding = $cvx#83 "83 - HepA"
* item.item[=].answerOption[+].valueCoding = $cvx#100 "100 - PCV7"
* item.item[=].answerOption[+].valueCoding = $cvx#101 "101 - Typhoid"
* item.item[=].answerOption[+].valueCoding = $cvx#103 "103 - MenC"
* item.item[=].answerOption[+].valueCoding = $cvx#104 "104 - HepB-HepA"
* item.item[=].answerOption[+].valueCoding = $cvx#110 "110 - DTaP-IPV-HepB"
* item.item[=].answerOption[+].valueCoding = $cvx#114 "114 - MenACWY"
* item.item[=].answerOption[+].valueCoding = $cvx#115 "115 - Tdap"
* item.item[=].answerOption[+].valueCoding = $cvx#116 "116 - RV5"
* item.item[=].answerOption[+].valueCoding = $cvx#118 "118 - HPV2"
* item.item[=].answerOption[+].valueCoding = $cvx#119 "119 - RV1"
* item.item[=].answerOption[+].valueCoding = $cvx#120 "120 - DTaP-IPV-Hib"
* item.item[=].answerOption[+].valueCoding = $cvx#121 "121 - rZV"
* item.item[=].answerOption[+].valueCoding = $cvx#127 "127 - Influenza A (H1N1)"
* item.item[=].answerOption[+].valueCoding = $cvx#130 "130 - DTaP-IPV"
* item.item[=].answerOption[+].valueCoding = $cvx#133 "133 - PCV13"
* item.item[=].answerOption[+].valueCoding = $cvx#134 "134 - JEV"
* item.item[=].answerOption[+].valueCoding = $cvx#150 "150 - Influenza"
* item.item[=].answerOption[+].valueCoding = $cvx#160 "160 - Influenza A (H5N1)"
* item.item[=].answerOption[+].valueCoding = $cvx#161 "161 - Influenza"
* item.item[=].answerOption[+].valueCoding = $cvx#163 "163 - MenB"
* item.item[=].answerOption[+].valueCoding = $cvx#165 "165 - HPV9"
* item.item[=].answerOption[+].valueCoding = $cvx#182 "182 - OPV"
* item.item[=].answerOption[+].valueCoding = $cvx#187 "187 - rZV"
* item.item[=].answerOption[+].valueCoding = $cvx#202 "202 - Influenza"
* item.item[=].answerOption[+].valueCoding = $cvx#205 "205 - Influenza"
* item.item[=].answerOption[+].valueCoding = $cvx#208 "208 - COVID-19"
* item.item[=].answerOption[+].valueCoding = $cvx#210 "210 - COVID-19"
* item.item[=].answerOption[+].valueCoding = $cvx#211 "211 - COVID-19"
* item.item[=].answerOption[+].valueCoding = $cvx#217 "217 - COVID-19"
* item.item[=].answerOption[+].valueCoding = $cvx#218 "218 - COVID-19"
* item.item[=].answerOption[+].valueCoding = $cvx#219 "219 - COVID-19"
* item.item[=].answerOption[+].valueCoding = $cvx#222 "222 - TBE"
* item.item[=].answerOption[+].valueCoding = $cvx#300 "300 - COVID-19"
* item.item[=].answerOption[+].valueCoding = $cvx#303 "303 - RSV"
* item.item[=].answerOption[+].valueCoding = $cvx#500 "500 - COVID-19"
* item.item[=].answerOption[+].valueCoding = $immunisation-code#52101 "52101 - HepA-Typhoid"
* item.item[=].answerOption[+].valueCoding = $immunisation-code#090306 "090306 - PCV unspecified"
* item.item[=].answerOption[+].valueCoding = $immunisation-code#90906 "90906 - Td"
* item.item[=].answerOption[+].valueCoding = $immunisation-code#99001 "99001 - DTaP-IPV"
* item.item[=].answerOption[+].valueCoding = $immunisation-code#99002 "99002 - MeNZB"
* item.item[=].answerOption[+].valueCoding = $immunisation-code#99003 "99003 - Diphtheria, paed"
* item.item[=].answerOption[+].valueCoding = $immunisation-code#99004 "99004 - aP"
* item.item[=].answerOption[+].valueCoding = $immunisation-code#99005 "99005 - Diphtheria, adult"
* item.item[=].answerOption[+].valueCoding = $immunisation-code#99006 "99006 - Influenza"
* item.item[=].answerOption[+].valueCoding = $immunisation-code#99007 "99007 - HepA"
* item.item[=].answerOption[+].valueCoding = $immunisation-code#99008 "99008 - MenACWY"
* item.item[=].answerOption[+].valueCoding = $immunisation-code#99009 "99009 - Rabies"
* item.item[=].answerOption[+].valueCoding = $immunisation-code#99010 "99010 - RIG"
* item.item[=].answerOption[+].valueCoding = $immunisation-code#99011 "99011 - Tdap-IPV"
* item.item[=].answerOption[+].valueCoding = $immunisation-code#99012 "99012 - Tdap"
* item.item[=].answerOption[+].valueCoding = $immunisation-code#99013 "99013 - MenC"
* item.item[=].answerOption[+].valueCoding = $immunisation-code#210307 "210307 - DTaP-IPV-HepB/Hib"
* item.item[=].answerOption[+].valueCoding = $immunisation-code#260209 "260209 - PCV10"
* item.item[=].answerOption[+].valueCoding = $immunisation-code#EVPMnC "EVPMnC - MenC"
* item.item[=].definition = "http://hl7.org/fhir/StructureDefinition/Immunization#Immunization.vaccineCode.coding[]"
* item.item[+].type = #integer
* item.item[=].linkId = "p01-q10-DoseNumber"
* item.item[=].prefix = "page 1 question 10"
* item.item[=].text = "Dose number"
* item.item[=].enableWhen[0].question = "p01-q01-Type"
* item.item[=].enableWhen[=].operator = #=
* item.item[=].enableWhen[=].answerCoding.display = "Overseas"
* item.item[=].enableWhen[+].question = "p01-q01-Type"
* item.item[=].enableWhen[=].operator = #=
* item.item[=].enableWhen[=].answerCoding.display = "Historic"
* item.item[=].enableBehavior = #any
* item.item[=].definition = "http://hl7.org/fhir/StructureDefinition/Immunization#Immunization.protocolApplied[].doseNumberPositiveInt"
* item.item[+].type = #integer
* item.item[=].linkId = "p01-q11-DoseNumber"
* item.item[=].prefix = "page 1 question 11"
* item.item[=].text = "Dose number"
* item.item[=].enableWhen.question = "p01-q01-Type"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding.display = "Not done"
* item.item[=].enableBehavior = #all
* item.item[=].required = true
* item.item[=].definition = "http://hl7.org/fhir/StructureDefinition/Immunization#Immunization.protocolApplied[].doseNumberPositiveInt"
* item.item[+].type = #choice
* item.item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item.item[=].linkId = "p01-q12-Indication"
* item.item[=].prefix = "page 1 question 12"
* item.item[=].text = "Indication (reason code)"
* item.item[=].enableWhen.question = "p01-q01-Type"
* item.item[=].enableWhen.operator = #exists
* item.item[=].enableWhen.answerBoolean = true
* item.item[=].enableBehavior = #all
* item.item[=].required = true
* item.item[=].answerOption[0].valueCoding = $air-terms-code#1 "Influenza, eligible over 65 years"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#2 "Influenza, eligible under 18 years"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#3 "Influenza, eligible criteria"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#4 "Sexual or household contact"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#5 "Primary course"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#6 "Booster"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#7 "Post partum"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#8 "Low birth weight"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#9 "HepB carrier mother"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#10 "At risk for TB"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#11 "Pre-post splenectomy schedule"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#12 "At risk, no previous history"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#13 "At risk, previous PCV history"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#14 "At risk, previous 23PPV"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#15 "Pre-emergency"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#16 "Pregnant"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#21 "PCV catch up"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#Pre "Pre-primary course"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#Stn "Funded, if not otherwise specified"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#6W "6 weeks"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#3M "3 months"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#5M "5 months"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#12M "12 months"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#15M "15 months"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#4Y "4 years"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#11Y "11 years"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#14Y "14 years"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#45Y "45 years"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#65Y "65 years"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#96 "HepB high risk, booster or extra dose"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#TPW "Tetanus-prone wound"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#5P "Privately funded, primary course"
* item.item[=].answerOption[+].valueCoding = $air-terms-code#6P "Privately funded, booster"
* item.item[=].definition = "http://hl7.org/fhir/StructureDefinition/Immunization#Immunization.reasonCode[].coding[]"
* item.item[+].type = #date
* item.item[=].linkId = "p01-q13-DateAdministered"
* item.item[=].prefix = "page 1 question 13"
* item.item[=].text = "Date vaccine administered"
* item.item[=].enableWhen[0].question = "p01-q01-Type"
* item.item[=].enableWhen[=].operator = #=
* item.item[=].enableWhen[=].answerCoding.display = "Overseas"
* item.item[=].enableWhen[+].question = "p01-q01-Type"
* item.item[=].enableWhen[=].operator = #=
* item.item[=].enableWhen[=].answerCoding.display = "Historic"
* item.item[=].enableBehavior = #any
* item.item[=].required = true
* item.item[=].definition = "http://hl7.org/fhir/StructureDefinition/Immunization#Immunization.occurrenceDateTime"
* item.item[+].type = #date
* item.item[=].linkId = "p01-q14-DateNotDone"
* item.item[=].prefix = "page 1 question 14"
* item.item[=].text = "Date vaccine determined as not done"
* item.item[=].enableWhen.question = "p01-q01-Type"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding.display = "Not done"
* item.item[=].enableBehavior = #all
* item.item[=].required = true
* item.item[=].definition = "http://hl7.org/fhir/StructureDefinition/Immunization#Immunization.occurrenceDateTime"
* item.item[+].linkId = "p01-q15-SubjectMeta"
* item.item[=].prefix = "page 1 question 15"
* item.item[=].extension[0].extension[0].valueExpression.expression = "QuestionnaireResponse.subject"
* item.item[=].extension[=].extension[=].valueExpression.language = #text/fhirpath
* item.item[=].extension[=].extension[=].url = "source"
* item.item[=].extension[=].extension[+].valueExpression.expression = "Immunization.patient"
* item.item[=].extension[=].extension[=].valueExpression.language = #text/fhirpath
* item.item[=].extension[=].extension[=].url = "destination"
* item.item[=].extension[=].url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-extractMetadata"
* item.item[=].extension[+].valueBoolean = true
* item.item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item.item[=].initial.valueBoolean = true
* item.item[=].type = #boolean
* item.type = #group
* item.linkId = "p01-Immunisation"
* item.prefix = "page 1"
* item.text = "Page 1"
* item.extension.url = "http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item.extension.valueCode = #Immunization