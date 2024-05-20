Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type

Instance: COVIDRATResultQuestionnaire
InstanceOf: Questionnaire
Description: "Questionnaire for assisted channel or aged residential care facilities to report a COVID-19 rapid antigen test (RAT) result."
Usage: #definition
* identifier.period.start = "2023-07-05"
* identifier.use = #usual
* identifier.value = "COVIDRATResultQuestionnaire"
* item[0].item.item[0].linkId = "p01-Consent-q01-1"
* item[=].item.item[=].prefix = "page 1 question 1.1"
* item[=].item.item[=].text = "This report is confidential, and your/the patient's information will be kept safe in accordance with the New Zealand Privacy Act."
* item[=].item.item[=].type = #display
* item[=].item.item[+].linkId = "p01-Consent-q01-2"
* item[=].item.item[=].prefix = "page 1 question 1.2"
* item[=].item.item[=].text = "When we collect your/the patient's information, we can only use it for the purposes for which it was collected.  For COVID RAT tests, this means we will only use the information to:"
* item[=].item.item[=].type = #display
* item[=].item.item[+].linkId = "p01-Consent-q01-3"
* item[=].item.item[=].prefix = "page 1 question 1.3"
* item[=].item.item[=].text = "● Inform you about your/the patient's COVID-19 status"
* item[=].item.item[=].type = #display
* item[=].item.item[+].linkId = "p01-Consent-q01-4"
* item[=].item.item[=].prefix = "page 1 question 1.4"
* item[=].item.item[=].text = "● Inform your/the patient's enrolled general practice team and general practitioner (where applicable)"
* item[=].item.item[=].type = #display
* item[=].item.item[+].linkId = "p01-Consent-q01-5"
* item[=].item.item[=].prefix = "page 1 question 1.5"
* item[=].item.item[=].text = "● Ensure accurate national reporting of COVID-19 results and informing decisions regarding New Zealand’s response to COVID-19."
* item[=].item.item[=].type = #display
* item[=].item.item[+].linkId = "p01-Consent-q01-6"
* item[=].item.item[=].prefix = "page 1 question 1.6"
* item[=].item.item[=].text = "● Perform anonymous statistical analysis and research purposes in line with usual processes and where permitted by the Privacy Act 2020 and Health Information Privacy Code 2020."
* item[=].item.item[=].type = #display
* item[=].item.item[+].linkId = "p01-Consent-q01-7"
* item[=].item.item[=].prefix = "page 1 question 1.7"
* item[=].item.item[=].text = "We may need to share some of your/the patient's personal information with other agencies for health purposes and to ensure we meet our legal obligations."
* item[=].item.item[=].type = #display
* item[=].item.item[+].linkId = "p01-Consent-q01-8"
* item[=].item.item[=].prefix = "page 1 question 1.8"
* item[=].item.item[=].text = "If you would like more information about how your/the patient's personal information is managed, please go to the Te Whatu Ora website, and look for our ‘privacy & security’ webpage."
* item[=].item.item[=].type = #display
* item[=].item.item[+].linkId = "p01-Consent-q01-9"
* item[=].item.item[=].prefix = "page 1 question 1.9"
* item[=].item.item[=].text = "Do you wish to continue and consent to collection of your/the patient's information?"
* item[=].item.item[=].type = #display
* item[=].item.linkId = "p01-Consent-q01"
* item[=].item.prefix = "page 1 question 1"
* item[=].item.text = "Consent to share information"
* item[=].item.type = #group
* item[=].linkId = "p01-Consent"
* item[=].prefix = "page 1"
* item[=].text = "1. Consent"
* item[=].type = #group
* item[+].item[0].item[0].linkId = "p02-Test-Details-Role"
* item[=].item[=].item[=].prefix = "page 2 question 1.1"
* item[=].item[=].item[=].text = "What is your role?"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[0].valueCoding.display = "Assisted channel"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Aged residential care"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].linkId = "p02-Test-Details-Source"
* item[=].item[=].item[=].enableWhen.question = "p02-Test-Details-Role"
* item[=].item[=].item[=].enableWhen.answerCoding.display = "Assisted channel"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].prefix = "page 2 question 1.2"
* item[=].item[=].item[=].text = "Who are you receiving this RAT report from?"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[0].valueCoding.display = "Individual"
* item[=].item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Someone else"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].extension[0].valueCode = #Observation
* item[=].item[=].item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[+].valueString = "urn:uuid:observation-phone"
* item[=].item[=].item[=].extension[=].url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-extractUrn"
* item[=].item[=].item[=].linkId = "p02-Test-Details-Mobile"
* item[=].item[=].item[=].enableWhen.question = "p02-Test-Details-Role"
* item[=].item[=].item[=].enableWhen.answerCoding.display = "Assisted channel"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].prefix = "page 2 question 1.3"
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/ManaakiNgaTahiObservation#Observation.valueString"
* item[=].item[=].item[=].text = "Mobile number"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].extension.valueBoolean = true
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].item[=].linkId = "p02-Test-Details-MobileCode"
* item[=].item[=].item[=].enableWhen.question = "p02-Test-Details-Role"
* item[=].item[=].item[=].enableWhen.answerCoding.display = "Assisted channel"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].initial.valueCoding = #8497 "Text patient com"
* item[=].item[=].item[=].prefix = "page 2 question 1.4"
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/ManaakiNgaTahiObservation#Observation.code.coding[]"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[+].linkId = "p02-Test-Details-MobileNote"
* item[=].item[=].item[=].enableWhen.question = "p02-Test-Details-Role"
* item[=].item[=].item[=].enableWhen.answerCoding.display = "Assisted channel"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].prefix = "page 2 question 1.5"
* item[=].item[=].item[=].text = "Enter the mobile number for further communications related to this RAT report"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].type = #display
* item[=].item[=].linkId = "p02-Test-Details"
* item[=].item[=].prefix = "page 2 question 1"
* item[=].item[=].type = #group
* item[=].item[+].item[0].linkId = "p02-Test-Reporter-FirstName"
* item[=].item[=].item[=].prefix = "page 2 question 2.1"
* item[=].item[=].item[=].text = "First name"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].linkId = "p02-Test-Reporter-LastName"
* item[=].item[=].item[=].prefix = "page 2 question 2.2"
* item[=].item[=].item[=].text = "Last name"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].linkId = "p02-Test-Reporter-Relationship"
* item[=].item[=].item[=].prefix = "page 2 question 2.3"
* item[=].item[=].item[=].text = "Relationship to person"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].linkId = "p02-Test-Reporter"
* item[=].item[=].enableWhen[0].question = "p02-Test-Details-Source"
* item[=].item[=].enableWhen[=].answerCoding.display = "Someone else"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[+].question = "p02-Test-Details-Role"
* item[=].item[=].enableWhen[=].answerCoding.display = "Assisted channel"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].prefix = "page 2 question 2"
* item[=].item[=].text = "Reporter details"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].type = #group
* item[=].item[+].item[0].extension[0].valueCode = #Observation
* item[=].item[=].item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[+].valueString = "urn:uuid:observation-batch"
* item[=].item[=].item[=].extension[=].url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-extractUrn"
* item[=].item[=].item[=].linkId = "p02-Test-Kit-Batch"
* item[=].item[=].item[=].enableWhen.question = "p02-Test-Details-Role"
* item[=].item[=].item[=].enableWhen.answerCoding.display = "Aged residential care"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].prefix = "page 2 question 3.1"
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/ManaakiNgaTahiObservation#Observation.valueString"
* item[=].item[=].item[=].text = "Lot number"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.valueBoolean = true
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].item[=].linkId = "p02-Test-Details-BatchCode"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].enableWhen.question = "p02-Test-Kit-Batch"
* item[=].item[=].item[=].enableWhen.operator = #exists
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].initial.valueCoding = #8499 "Lot Number"
* item[=].item[=].item[=].prefix = "page 2 question 3.2"
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/ManaakiNgaTahiObservation#Observation.code.coding[]"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[+].linkId = "p02-Test-Kit-Result"
* item[=].item[=].item[=].prefix = "page 2 question 3.3"
* item[=].item[=].item[=].text = "Enter result"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[0].valueCoding.display = "Detected"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Not detected"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].extension[0].valueBoolean = true
* item[=].item[=].item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].item[=].extension[+].valueCode = #Observation
* item[=].item[=].item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[+].valueString = "urn:uuid:observation-result"
* item[=].item[=].item[=].extension[=].url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-extractUrn"
* item[=].item[=].item[=].linkId = "p02-Test-Kit-Result-Positive"
* item[=].item[=].item[=].enableWhen.question = "p02-Test-Kit-Result"
* item[=].item[=].item[=].enableWhen.answerCoding.display = "Detected"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].initial.valueString = "DETECTED"
* item[=].item[=].item[=].prefix = "page 2 question 3.4"
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/ManaakiNgaTahiObservation#Observation.valueString"
* item[=].item[=].item[=].text = "Extract - test result positive"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension[0].valueBoolean = true
* item[=].item[=].item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].item[=].extension[+].valueCode = #Observation
* item[=].item[=].item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[+].valueString = "urn:uuid:observation-result"
* item[=].item[=].item[=].extension[=].url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-extractUrn"
* item[=].item[=].item[=].linkId = "p02-Test-Kit-Result-Negative"
* item[=].item[=].item[=].enableWhen.question = "p02-Test-Kit-Result"
* item[=].item[=].item[=].enableWhen.answerCoding.display = "Not detected"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].initial.valueString = "NOT DETECTED"
* item[=].item[=].item[=].prefix = "page 2 question 3.5"
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/ManaakiNgaTahiObservation#Observation.valueString"
* item[=].item[=].item[=].text = "Extract - test result negative"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.valueBoolean = true
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].item[=].linkId = "p02-Test-Kit-Result-Code-Unsupervised"
* item[=].item[=].item[=].enableWhen.question = "p02-Test-Details-Role"
* item[=].item[=].item[=].enableWhen.answerCoding.display = "Assisted channel"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].initial.valueCoding = #XNZ5530 "SARS-CoV-2 RAT Self"
* item[=].item[=].item[=].prefix = "page 2 question 3.6"
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/ManaakiNgaTahiObservation#Observation.code.coding[]"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[+].extension.valueBoolean = true
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].item[=].linkId = "p02-Test-Kit-Result-Code-Supervised"
* item[=].item[=].item[=].enableWhen.question = "p02-Test-Details-Role"
* item[=].item[=].item[=].enableWhen.answerCoding.display = "Aged residential care"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].initial.valueCoding = #97097-0 "Supervised RAT SARS-CoV-2"
* item[=].item[=].item[=].prefix = "page 2 question 3.7"
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/ManaakiNgaTahiObservation#Observation.code.coding[]"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[+].linkId = "p02-Test-Kit-Result-PositiveNote"
* item[=].item[=].item[=].enableWhen.question = "p02-Test-Kit-Result"
* item[=].item[=].item[=].enableWhen.answerCoding.display = "Detected"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].prefix = "page 2 question 3.8"
* item[=].item[=].item[=].text = "The COVID-19 antigen was detected, which indicates the patient might be positive for COVID-19."
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[+].linkId = "p02-Test-Kit-Result-NegativeNote"
* item[=].item[=].item[=].enableWhen.question = "p02-Test-Kit-Result"
* item[=].item[=].item[=].enableWhen.answerCoding.display = "Not detected"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].prefix = "page 2 question 3.9"
* item[=].item[=].item[=].text = "The COVID-19 antigen was not detected which indicates the patient is likely to be negative for COVID-19."
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[+].linkId = "p02-Test-Kit-Result-Symptomatic"
* item[=].item[=].item[=].enableWhen.question = "p02-Test-Details-Role"
* item[=].item[=].item[=].enableWhen.answerCoding.display = "Assisted channel"
* item[=].item[=].item[=].enableWhen.operator = #!=
* item[=].item[=].item[=].prefix = "page 2 question 3.10"
* item[=].item[=].item[=].text = "Is the patient presenting symptoms?"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].extension[0].valueBoolean = true
* item[=].item[=].item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].item[=].extension[+].valueCode = #Observation
* item[=].item[=].item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[+].valueString = "urn:uuid:observation-asymptomatic"
* item[=].item[=].item[=].extension[=].url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-extractUrn"
* item[=].item[=].item[=].linkId = "p02-Test-Kit-Result-SymptomaticFalse"
* item[=].item[=].item[=].enableWhen.question = "p02-Test-Kit-Result-Symptomatic"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].item[=].initial.valueBoolean = true
* item[=].item[=].item[=].prefix = "page 2 question 3.11"
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/ManaakiNgaTahiObservation#Observation.valueBoolean"
* item[=].item[=].item[=].text = "Extract - asymptomatic positive"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].extension[0].valueBoolean = true
* item[=].item[=].item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].item[=].extension[+].valueCode = #Observation
* item[=].item[=].item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].item[=].extension[+].valueString = "urn:uuid:observation-asymptomatic"
* item[=].item[=].item[=].extension[=].url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-extractUrn"
* item[=].item[=].item[=].linkId = "p02-Test-Kit-Result-SymptomaticTrue"
* item[=].item[=].item[=].enableWhen[0].question = "p02-Test-Kit-Result-Symptomatic"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableWhen[+].question = "p02-Test-Details-Role"
* item[=].item[=].item[=].enableWhen[=].answerCoding.display = "Assisted channel"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].initial.valueBoolean = false
* item[=].item[=].item[=].prefix = "page 2 question 3.12"
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/ManaakiNgaTahiObservation#Observation.valueBoolean"
* item[=].item[=].item[=].text = "Extract - asymptomatic negative"
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].extension.valueBoolean = true
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].item[=].linkId = "p02-Test-Kit-Result-SymptomaticCoding"
* item[=].item[=].item[=].initial.valueCoding = #84387000 "Asymptomatic"
* item[=].item[=].item[=].prefix = "page 2 question 3.13"
* item[=].item[=].item[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/ManaakiNgaTahiObservation#Observation.code.coding[]"
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].type = #choice
* item[=].item[=].linkId = "p02-Test-Kit"
* item[=].item[=].prefix = "page 2 question 3"
* item[=].item[=].text = "Covid test kit"
* item[=].item[=].type = #group
* item[=].item[+].item.extension[0].valueBoolean = true
* item[=].item[=].item.extension[=].url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-effectiveDate"
* item[=].item[=].item.extension[+].valueDate = "2020"
* item[=].item[=].item.extension[=].valueDate.extension.valueExpression.expression = "today() - 7 days"
* item[=].item[=].item.extension[=].valueDate.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item.extension[=].valueDate.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].item.extension[=].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item.extension[+].valueDate = "2050"
* item[=].item[=].item.extension[=].valueDate.extension.valueExpression.expression = "today()"
* item[=].item[=].item.extension[=].valueDate.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item.extension[=].valueDate.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].item.extension[=].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].item.linkId = "p02-Test-Date-Entry"
* item[=].item[=].item.prefix = "page 2 question 4.1"
* item[=].item[=].item.text = "Day test was taken"
* item[=].item[=].item.type = #date
* item[=].item[=].item.required = true
* item[=].item[=].linkId = "p02-Test-Date"
* item[=].item[=].prefix = "page 2 question 4"
* item[=].item[=].type = #group
* item[=].linkId = "p02-Test"
* item[=].prefix = "page 2"
* item[=].type = #group
* item[+].extension[0].valueBoolean = true
* item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].extension[+].valueCode = #DiagnosticReport
* item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].extension[+].valueString = "urn:uuid:diagnosticReport"
* item[=].extension[=].url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-extractUrn"
* item[=].item[0].linkId = "p03-ExtractResources-DiagnosticReport-code-supervised"
* item[=].item[=].enableWhen.question = "p02-Test-Details-Role"
* item[=].item[=].enableWhen.answerCoding.display = "Aged residential care"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].initial.valueCoding = #97097-0 "Supervised RAT SARS-CoV-2"
* item[=].item[=].prefix = "page 3 question 1.1.1"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.code.coding[]"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].type = #choice
* item[=].item[+].linkId = "p03-ExtractResources-DiagnosticReport-code-self"
* item[=].item[=].enableWhen.question = "p02-Test-Details-Role"
* item[=].item[=].enableWhen.answerCoding.display = "Assisted channel"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].initial.valueCoding = #XNZ5530 "SARS-CoV-2 RAT Self"
* item[=].item[=].prefix = "page 3 question 1.1.2"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.code.coding[]"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].type = #choice
* item[=].item[+].linkId = "p03-ExtractResources-DiagnosticReport-identifierSystem"
* item[=].item[=].initial.valueString = "https://standards.digital.health.nz/ns/SendingApplication"
* item[=].item[=].prefix = "page 3 question 1.2"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.identifier[0].system"
* item[=].item[=].type = #choice
* item[=].item[+].linkId = "p03-ExtractResources-DiagnosticReport-identifierValue-RAT"
* item[=].item[=].enableWhen.question = "p02-Test-Details-Role"
* item[=].item[=].enableWhen.answerCoding.display = "Aged residential care"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].initial.valueString = "RAT Catcher"
* item[=].item[=].prefix = "page 3 question 1.3"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.identifier[0].value"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].type = #choice
* item[=].item[+].linkId = "p03-ExtractResources-DiagnosticReport-identifierValue-CICS"
* item[=].item[=].enableWhen.question = "p02-Test-Details-Role"
* item[=].item[=].enableWhen.answerCoding.display = "Assisted channel"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].initial.valueString = "CICS"
* item[=].item[=].prefix = "page 3 question 1.4"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.identifier[0].value"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].type = #choice
* item[=].item[+].linkId = "p03-ExtractResources-DiagnosticReport-result"
* item[=].item[=].initial.valueReference = Reference(urn:uuid:observation-result) "SARS-CoV-2 RAT Self"
* item[=].item[=].prefix = "page 3 question 1.5"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.result[]"
* item[=].item[=].type = #choice
* item[=].item[+].linkId = "p03-ExtractResources-DiagnosticReport-phone"
* item[=].item[=].enableWhen.question = "p02-Test-Details-Role"
* item[=].item[=].enableWhen.answerCoding.display = "Assisted channel"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].initial.valueReference = Reference(urn:uuid:observation-phone) "Text patient com"
* item[=].item[=].prefix = "page 3 question 1.6"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.result[]"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].type = #choice
* item[=].item[+].linkId = "p03-ExtractResources-DiagnosticReport-batch"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].enableWhen.question = "p02-Test-Kit-Batch"
* item[=].item[=].enableWhen.operator = #exists
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].initial.valueReference = Reference(urn:uuid:observation-batch) "Lot Number"
* item[=].item[=].prefix = "page 3 question 1.7"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.result[]"
* item[=].item[=].type = #choice
* item[=].item[+].linkId = "p03-ExtractResources-DiagnosticReport-asymptomatic"
* item[=].item[=].initial.valueReference = Reference(urn:uuid:observation-asymptomatic) "Asymptomatic"
* item[=].item[=].prefix = "page 3 question 1.8"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.result[]"
* item[=].item[=].type = #choice
* item[=].item[+].linkId = "p03-ExtractResources-DiagnosticReport-authoriser"
* item[=].item[=].initial.valueReference = Reference(urn:uuid:observation-authoriser) "Authoriser"
* item[=].item[=].prefix = "page 3 question 1.9"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.result[]"
* item[=].item[=].type = #choice
* item[=].item[+].linkId = "p03-ExtractResources-DiagnosticReport-site"
* item[=].item[=].initial.valueReference = Reference(urn:uuid:observation-site) "Specimen site"
* item[=].item[=].prefix = "page 3 question 1.10"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.result[]"
* item[=].item[=].type = #choice
* item[=].item[+].extension.extension[0].valueExpression.expression = "QuestionnaireResponse.subject"
* item[=].item[=].extension.extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension.extension[=].url = "source"
* item[=].item[=].extension.extension[+].valueExpression.expression = "DiagnosticReport.subject"
* item[=].item[=].extension.extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension.extension[=].url = "destination"
* item[=].item[=].extension.url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-extractMetadata"
* item[=].item[=].linkId = "p03-ExtractResources-DiagnosticReport-subject"
* item[=].item[=].initial.valueBoolean = true
* item[=].item[=].prefix = "page 3 question 1.11"
* item[=].item[=].type = #boolean
* item[=].item[+].extension.extension[0].valueExpression.expression = "QuestionnaireResponse.author"
* item[=].item[=].extension.extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension.extension[=].url = "source"
* item[=].item[=].extension.extension[+].valueExpression.expression = "DiagnosticReport.performer[]"
* item[=].item[=].extension.extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension.extension[=].url = "destination"
* item[=].item[=].extension.url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-extractMetadata"
* item[=].item[=].linkId = "p03-ExtractResources-DiagnosticReport-performer"
* item[=].item[=].initial.valueBoolean = true
* item[=].item[=].prefix = "page 3 question 1.12"
* item[=].item[=].type = #boolean
* item[=].item[+].extension[0].valueCode = #Observation
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].extension[+].valueString = "urn:uuid:observation-site"
* item[=].item[=].extension[=].url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-extractUrn"
* item[=].item[=].linkId = "p03-ExtractResources-Observation-site"
* item[=].item[=].initial.valueString = "Nasal"
* item[=].item[=].prefix = "page 3 question 1.13"
* item[=].item[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/ManaakiNgaTahiObservation#Observation.valueString"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "p03-ExtractResources-Observation-SiteCoding"
* item[=].item[=].initial.valueCoding = #66746-9 "Specimen site"
* item[=].item[=].prefix = "page 3 question 1.14"
* item[=].item[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/ManaakiNgaTahiObservation#Observation.code.coding[]"
* item[=].item[=].type = #choice
* item[=].item[+].extension[0].valueCode = #Observation
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].extension[+].valueString = "urn:uuid:observation-authoriser"
* item[=].item[=].extension[=].url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-extractUrn"
* item[=].item[=].extension[+].extension[0].valueExpression.expression = "QuestionnaireResponse.author.display"
* item[=].item[=].extension[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].extension[=].url = "source"
* item[=].item[=].extension[=].extension[+].valueExpression.expression = "Observation.valueString"
* item[=].item[=].extension[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].extension[=].url = "destination"
* item[=].item[=].extension[=].url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-extractMetadata"
* item[=].item[=].linkId = "p03-ExtractResources-Observation-authoriser"
* item[=].item[=].initial.valueBoolean = true
* item[=].item[=].prefix = "page 3 question 1.15"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "p03-ExtractResources-Observation-authoriserCoding"
* item[=].item[=].initial.valueCoding = #8495 "RAT Authoriser"
* item[=].item[=].prefix = "page 3 question 1.16"
* item[=].item[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/ManaakiNgaTahiObservation#Observation.code.coding[]"
* item[=].item[=].type = #choice
* item[=].linkId = "p03-ExtractResources"
* item[=].prefix = "page 3 question 1"
* item[=].type = #group
* purpose = "Complete this form to notify Health New Zealand | Te Whatu Ora of COVID-19 rapid antigen test (RAT) results"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* description = "Complete this form to notify Health New Zealand | Te Whatu Ora of COVID-19 rapid antigen test (RAT) results"
* experimental = true
* language = #en-NZ
* title = "COVID-19 RAT Result Questionnaire"
* subjectType = #Patient
* version = "1.0.5"
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/COVIDRATResultQuestionnaire"
* meta.lastUpdated = "2024-01-25T19:54:10.434Z"
* meta.versionId = "25"
* name = "COVID-19 RAT Result Questionnaire"
* publisher = "Te Whatu Ora"
* useContext.valueCodeableConcept.text = "Diagnostic Testing"
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* status = #draft