Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type

Instance: ConsumerCOVIDRATResultQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2024-01-23T21:19:39.411Z"
* language = #en-NZ
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/ConsumerCOVIDRATResultQuestionnaire"
* identifier.use = #official
* identifier.value = "ConsumerCOVIDRATResultQuestionnaire"
* identifier.period.start = "2023-07-19"
* version = "1.0.5"
* name = "ConsumerCOVIDRatResultQuestionnaire"
* title = "Report a Rapid Antigen Test (RAT) result"
* status = #draft
* experimental = true
* subjectType = #Patient
* publisher = "Te Whatu Ora"
* description = "Consumer COVID RAT Result Questionnaire"
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* useContext.valueCodeableConcept.text = "Consumer COVID RAT Result Questionnaire"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* purpose = "Report a Rapid Antigen Test (RAT) result"
* item[0].type = #string
* item[=].linkId = "metaPhoneNumber"
* item[=].text = "Phone number"
* item[=].initial.valueString = "Placeholder"
* item[=].extension[0].valueBoolean = true
* item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].extension[=].valueCode = #Observation
* item[=].extension[+].url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-extractUrn"
* item[=].extension[=].valueString = "urn:uuid:observation-phone"
* item[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/ManaakiNgaTahiObservation#Observation.valueString"
* item[+].linkId = "extractPhoneNumberCode"
* item[=].type = #choice
* item[=].initial.valueCoding = #8497 "Text patient com"
* item[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/ManaakiNgaTahiObservation#Observation.code.coding[]"
* item[=].extension.valueBoolean = true
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[+].item.type = #display
* item[=].item.linkId = "submit-modal-text"
* item[=].item.text = "The RAT result will be recorded against the official health record for this person."
* item[=].item.text.extension.valueExpression.expression = "'The RAT result will be recorded against the official health record for ' + %subjectName + '.'"
* item[=].item.text.extension.valueExpression.language = #text/fhirpath
* item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].type = #group
* item[=].extension.valueCodeableConcept.coding.code = #submit-modal
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].linkId = "submit-modal"
* item[=].text = "Enter result"
* item[+].item[0].type = #display
* item[=].item[=].linkId = "nlineModal-otherLines"
* item[=].item[=].text = "If your RAT has other lines or markings, consult the product information leaflet."
* item[=].item[+].type = #display
* item[=].item[=].linkId = "nlineModal-contactHealthline"
* item[=].item[=].text = "Contact Healthline for further information on 0800 358 5453."
* item[=].type = #group
* item[=].extension.valueCodeableConcept.coding.code = #modal
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].linkId = "nlineModal"
* item[=].text = "RATs with other lines"
* item[+].item.type = #display
* item[=].item.linkId = "highRiskModal-conditions"
* item[=].item.text = "List of conditions"
* item[=].item.text.extension.valueString = "<ul><li>chronic lung or airways disease</li><li>serious heart conditions</li><li>poorly controlled hypertension</li><li>chronic neurological or neuromuscular disease</li><li>diabetes</li><li>chronic kidney disease</li><li>severe liver disease such as cirrhosis</li><li>severe blood (haematological) disorders</li><li>severe mental illness</li><li>active cancer</li><li>morbid obesity (BMI greater than 35)</li><li>people currently in contact with secondary and tertiary mental health and addiction services</li><li>people with mental health and addiction issues who are currently homeless or without permanent housing.</li></ul>"
* item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].type = #group
* item[=].extension.valueCodeableConcept.coding.code = #modal
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].linkId = "highRiskModal"
* item[=].text = "Other risk factors or medical conditions:"
* item[+].item.item[0].type = #display
* item[=].item.item[=].linkId = "reportResult-container-diagram"
* item[=].item.item[=].text = "A diagram showing what a positive COVID RAT Result looks like"
* item[=].item.item[=].text.extension.valueString = "<img src=\"https://d3pm2mo65migg8.cloudfront.net/fhir-questionnaires/COVIDRATResultQuestionnaire/rat-diagram.svg\" alt=\"A diagram showing what a positive COVID RAT Result looks like\">"
* item[=].item.item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[+].type = #boolean
* item[=].item.item[=].linkId = "reportResult-container-controlLine"
* item[=].item.item[=].text = "Is the control line (C) visible?"
* item[=].item.item[=].required = true
* item[=].item.item[+].type = #boolean
* item[=].item.item[=].linkId = "reportResult-container-testLine"
* item[=].item.item[=].text = "Is the test line (T) visible?"
* item[=].item.item[=].required = true
* item[=].item.item[+].type = #display
* item[=].item.item[=].linkId = "reportResult-container-faintLines"
* item[=].item.item[=].text = "Faint lines"
* item[=].item.item[=].text.extension.valueString = "<b>Faint lines</b>"
* item[=].item.item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[+].type = #display
* item[=].item.item[=].linkId = "reportResult-container-faintLinesDetail"
* item[=].item.item[=].text = "If a line is faint it should still be recorded as visible."
* item[=].item.item[+].type = #display
* item[=].item.item[=].linkId = "reportResult-container-nLineLink"
* item[=].item.item[=].text = "A small number of RATs have an ‘N’ line"
* item[=].item.item[=].text.extension.valueString = "<b><open-modal linkId='nlineModal'>What to do if your RAT has other lines</open-modal></b>"
* item[=].item.item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[+].linkId = "reportResult-container-testDate"
* item[=].item.item[=].text = "Day test was taken"
* item[=].item.item[=].type = #choice
* item[=].item.item[=].answerOption[0].valueCoding = #placeholder "Today"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.expression = "today()"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[+].valueCoding = #placeholder "Yesterday"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.expression = "today() - 1 day"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[+].valueCoding.display.extension.valueExpression.expression = "(today() - 2 days).formatDate('dddd, D MMMM')"
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[=].valueCoding = #placeholder "placeholder"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.expression = "today() - 2 days"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[+].valueCoding.display.extension.valueExpression.expression = "(today() - 3 days).formatDate('dddd, D MMMM')"
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[=].valueCoding = #placeholder "placeholder"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.expression = "today() - 3 days"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[+].valueCoding.display.extension.valueExpression.expression = "(today() - 4 days).formatDate('dddd, D MMMM')"
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[=].valueCoding = #placeholder "placeholder"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.expression = "today() - 4 days"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[+].valueCoding.display.extension.valueExpression.expression = "(today() - 5 days).formatDate('dddd, D MMMM')"
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[=].valueCoding = #placeholder "placeholder"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.expression = "today() - 5 days"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[+].valueCoding.display.extension.valueExpression.expression = "(today() - 6 days).formatDate('dddd, D MMMM')"
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[=].valueCoding = #placeholder "placeholder"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.expression = "today() - 6 days"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[+].valueCoding.display.extension.valueExpression.expression = "(today() - 7 days).formatDate('dddd, D MMMM')"
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[=].valueCoding = #placeholder "placeholder"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.expression = "today() - 7 days"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].required = true
* item[=].item.item[=].extension.valueBoolean = true
* item[=].item.item[=].extension.url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-effectiveDate"
* item[=].item.item[+].type = #display
* item[=].item.item[=].linkId = "reportResult.container.onlyThisWeek"
* item[=].item.item[=].text = "You can only report a test taken within the last 7 days."
* item[=].item.item[+].type = #boolean
* item[=].item.item[=].linkId = "reportResult-container-householdContact"
* item[=].item.item[=].text = "Are you a household contact of someone who has tested positive for COVID-19?"
* item[=].item.item[=].enableWhen[0].question = "reportResult-container-controlLine"
* item[=].item.item[=].enableWhen[=].operator = #=
* item[=].item.item[=].enableWhen[=].answerBoolean = true
* item[=].item.item[=].enableWhen[+].question = "reportResult-container-testLine"
* item[=].item.item[=].enableWhen[=].operator = #=
* item[=].item.item[=].enableWhen[=].answerBoolean = false
* item[=].item.item[=].enableBehavior = #all
* item[=].item.item[=].required = true
* item[=].item.type = #group
* item[=].item.linkId = "reportResult-container"
* item[=].type = #group
* item[=].linkId = "reportResult"
* item[=].text = "Report a COVID-19 Rapid Antigen Test (RAT) result"
* item[+].item.item[0].item[0].type = #display
* item[=].item.item[=].item[=].linkId = "aveSymptoms-container-intro-heading"
* item[=].item.item[=].item[=].text = "About these questions"
* item[=].item.item[=].item[=].text.extension.valueString = "<h2 class='label-heading'>About these questions</h2>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[+].type = #display
* item[=].item.item[=].item[=].linkId = "aveSymptoms-container-intro-text"
* item[=].item.item[=].item[=].text = "The following questions will give you an indication of whether you might be eligible to receive free oral COVID-19 antiviral medicine."
* item[=].item.item[=].item[=].text.extension.valueString = "<p>The following questions will give you an indication of whether you might be eligible to receive free oral COVID-19 antiviral medicine.</p><p><a href='https://info.health.nz/conditions-treatments/infectious-diseases/covid-19/antiviral-medicines/' target='_blank'>More information about antivirals and eligibility criteria<anatomic-icon icon='link' display='inlineBlock' variant='functionalIcons'></anatomic-icon></a></p>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].type = #group
* item[=].item.item[=].linkId = "aveSymptoms-container-intro"
* item[=].item.item[+].item[0].type = #display
* item[=].item.item[=].item[=].linkId = "aveSymptoms-container-details-heading"
* item[=].item.item[=].item[=].text = "Symptoms of COVID-19 can include one or more of the following:"
* item[=].item.item[=].item[=].text.extension.valueString = "<h2 class='label-heading'>Symptoms of COVID-19 can include one or more of the following:</h2>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[+].type = #display
* item[=].item.item[=].item[=].linkId = "aveSymptoms-container-details-list"
* item[=].item.item[=].item[=].text = "Sneezing and runny nose, sore throat, body aches, cough, feeling tired, headache, nausea and vomiting, diarrhoea, fever"
* item[=].item.item[=].item[=].text.extension.valueString = "<ul>\n <li>sneezing and runny nose</li>\n <li>sore throat</li>\n <li>body aches</li>\n <li>cough</li>\n <li>feeling tired</li>\n <li>headache</li>\n <li>nausea and vomiting</li>\n <li>diarrhoea</li>\n <li>fever</li>\n </ul>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[+].type = #display
* item[=].item.item[=].item[=].linkId = "aveSymptoms-container-details-moreInfoHeading"
* item[=].item.item[=].item[=].text = "Visit this page for more information about COVID-19 symptoms:"
* item[=].item.item[=].item[+].type = #display
* item[=].item.item[=].item[=].linkId = "aveSymptoms-container-details-moreInfoLink"
* item[=].item.item[=].item[=].text = "COVID-19 symptoms"
* item[=].item.item[=].item[=].text.extension.valueString = "<a target='_blank' href='https://info.health.nz/conditions-treatments/infectious-diseases/covid-19/about-covid-19/#covid-19-symptoms'>COVID-19 symptoms<anatomic-icon icon='link' display='inlineBlock' variant='functionalIcons'></anatomic-icon></a>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[+].type = #boolean
* item[=].item.item[=].item[=].linkId = "aveSymptoms-container-details-hasSymptoms"
* item[=].item.item[=].item[=].text = "Have you been experiencing any symptoms?"
* item[=].item.item[=].item[=].required = true
* item[=].item.item[=].type = #group
* item[=].item.item[=].linkId = "aveSymptoms-container-details"
* item[=].item.item[+].type = #display
* item[=].item.item[=].linkId = "aveSymptoms-container-symptomDateHeading"
* item[=].item.item[=].text = "When did you start experiencing any of these symptoms?"
* item[=].item.item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].extension.valueExpression.expression = "%hasSymptoms and (%testResult = 'positive' or %householdContact = true)"
* item[=].item.item[+].linkId = "aveSymptoms-container-symptomDate"
* item[=].item.item[=].text = "Select the date that your symptoms started"
* item[=].item.item[=].type = #choice
* item[=].item.item[=].answerOption[0].valueCoding = #placeholder "Today"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.expression = "today()"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[+].valueCoding = #placeholder "Yesterday"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.expression = "today() - 1 day"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[+].valueCoding.display.extension.valueExpression.expression = "(today() - 2 days).formatDate('dddd, D MMMM')"
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[=].valueCoding = #placeholder "placeholder"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.expression = "today() - 2 days"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[+].valueCoding.display.extension.valueExpression.expression = "(today() - 3 days).formatDate('dddd, D MMMM')"
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[=].valueCoding = #placeholder "placeholder"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.expression = "today() - 3 days"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[+].valueCoding.display.extension.valueExpression.expression = "(today() - 4 days).formatDate('dddd, D MMMM')"
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[=].valueCoding = #placeholder "placeholder"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.expression = "today() - 4 days"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[+].valueCoding.display.extension.valueExpression.expression = "(today() - 5 days).formatDate('dddd, D MMMM')"
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[=].valueCoding = #placeholder "placeholder"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.expression = "today() - 5 days"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[+].valueCoding.display.extension.valueExpression.expression = "(today() - 6 days).formatDate('dddd, D MMMM')"
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[=].valueCoding = #placeholder "placeholder"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.expression = "today() - 6 days"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[+].valueCoding.display.extension.valueExpression.expression = "(today() - 7 days).formatDate('dddd, D MMMM')"
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].answerOption[=].valueCoding = #placeholder "placeholder"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.expression = "today() - 7 days"
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].answerOption[=].valueCoding.code.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].required = true
* item[=].item.item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].extension.valueExpression.expression = "%hasSymptoms and (%testResult = 'positive' or %householdContact = true)"
* item[=].item.type = #group
* item[=].item.linkId = "aveSymptoms-container"
* item[=].type = #group
* item[=].linkId = "aveSymptoms"
* item[=].text = "Antiviral Eligibility"
* item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "%testResult != 'failed'"
* item[+].item.item[0].item[0].type = #display
* item[=].item.item[=].item[=].linkId = "aveCriteria-container-intro-heading"
* item[=].item.item[=].item[=].text = "About these questions"
* item[=].item.item[=].item[=].text.extension.valueString = "<h2 class='label-heading'>About these questions</h2>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[+].type = #display
* item[=].item.item[=].item[=].linkId = "aveCriteria-container-intro-text"
* item[=].item.item[=].item[=].text = "The following questions will give you an indication of whether you might be eligible to receive free oral COVID-19 antiviral medicine."
* item[=].item.item[=].item[=].text.extension.valueString = "<p>The following questions will give you an indication of whether you might be eligible to receive free oral COVID-19 antiviral medicine.</p><p><a href='https://info.health.nz/conditions-treatments/infectious-diseases/covid-19/antiviral-medicines/' target='_blank'>More information about antivirals and eligibility criteria<anatomic-icon icon='link' display='inlineBlock' variant='functionalIcons'></anatomic-icon></a></p>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].type = #group
* item[=].item.item[=].linkId = "aveCriteria-container-intro"
* item[=].item.item[+].type = #display
* item[=].item.item[=].linkId = "aveCriteria-container-vulnerableText"
* item[=].item.item[=].text = "Eligible people include:"
* item[=].item.item[=].text.extension.valueString = "<p><b>Eligible people include:</b></p>\n <ul>\n <li>Māori or Pacific people aged 50 or over</li>\n <li>anyone aged 50 or over, who has not had at least 2 COVID-19 vaccines</li>\n <li>anyone aged 65 or over</li>\n </ul>"
* item[=].item.item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[+].item.type = #boolean
* item[=].item.item[=].item.linkId = "aveCriteria-container-vulnerableContainer-isVulnerable"
* item[=].item.item[=].item.text = "Do any of these apply to you?"
* item[=].item.item[=].item.required = true
* item[=].item.item[=].type = #group
* item[=].item.item[=].linkId = "aveCriteria-container-vulnerableContainer"
* item[=].item.item[+].item[0].type = #display
* item[=].item.item[=].item[=].linkId = "aveCriteria-container-highRiskContainer-text"
* item[=].item.item[=].item[=].text = "These are some reasons you might be at high risk of becoming very sick from COVID-19:"
* item[=].item.item[=].item[=].text.extension.valueString = "<p><b>These are some reasons you might be at high risk of becoming very sick from COVID-19:</b></p>\n <ul>\n <li>you have Down syndrome</li>\n <li>you have sickle cell disease</li>\n <li>you have previously been in critical or high dependency hospital care from COVID-19</li>\n <li>you receive Disability Support Services funded by Whaikaha – Ministry of Disabled People (previously Ministry of Health) or need direct family, whānau or external disability care most days</li>\n <li>you have frailty or vulnerability due to one or more severe health conditions</li>\n <li>you have a weakened immune system</li>\n <li>you have 3 or more of <open-modal linkId='highRiskModal'><b>these risk factors or medical conditions</b></open-modal></li>\n </ul>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[+].type = #boolean
* item[=].item.item[=].item[=].linkId = "aveCriteria-container-highRiskContainer-isHighRisk"
* item[=].item.item[=].item[=].text = "Do any of these apply to you?"
* item[=].item.item[=].item[=].required = true
* item[=].item.item[=].type = #group
* item[=].item.item[=].linkId = "aveCriteria-container-highRiskContainer"
* item[=].item.item[=].enableWhen.question = "aveCriteria-container-vulnerableContainer-isVulnerable"
* item[=].item.item[=].enableWhen.operator = #=
* item[=].item.item[=].enableWhen.answerBoolean = false
* item[=].item.item[=].enableBehavior = #all
* item[=].item.type = #group
* item[=].item.linkId = "aveCriteria-container"
* item[=].type = #group
* item[=].linkId = "aveCriteria"
* item[=].text = "Antiviral Eligibility"
* item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "(%testResult = 'positive' or (%testResult = 'negative' and %householdContact)) and %recentSymptoms"
* item[+].item.item[0].type = #display
* item[=].item.item[=].linkId = "postSubmit-container-failed"
* item[=].item.item[=].text = "Result: Failed. A result could not be determined."
* item[=].item.item[=].text.extension.valueString = "<p><anatomic-icon icon='alert' variant='decorativeIcons' color='error100'></anatomic-icon></p><h1 class='label-heading'>Result: <span style='color: #D02323'>Failed</span></h1><p>A result could not be determined.</p>"
* item[=].item.item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].extension.valueExpression.expression = "%testResult = 'failed'"
* item[=].item.item[+].item[0].type = #display
* item[=].item.item[=].item[=].linkId = "postSubmit-container-testResult-positive"
* item[=].item.item[=].item[=].text = "Result: Positive. COVID-19 was detected."
* item[=].item.item[=].item[=].text.extension.valueString = "<p><anatomic-icon icon='alert' variant='decorativeIcons' color='error100'></anatomic-icon></p><h1 class='label-heading'>Result: <span style='color: #D02323'>Positive</span></h1><p>COVID-19 was detected.</p>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].item[=].extension.valueExpression.expression = "%testResult = 'positive'"
* item[=].item.item[=].item[+].type = #display
* item[=].item.item[=].item[=].linkId = "postSubmit-container-testResult-negative"
* item[=].item.item[=].item[=].text = "Result: Negative. COVID-19 was not detected."
* item[=].item.item[=].item[=].text.extension.valueString = "<h1 class='label-heading'>Result: Negative</h1><p>COVID-19 was not detected.</p>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].item[=].extension.valueExpression.expression = "%testResult = 'negative'"
* item[=].item.item[=].type = #group
* item[=].item.item[=].linkId = "postSubmit-container-testResult"
* item[=].item.item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].extension.valueExpression.expression = "%testResult != 'failed'"
* item[=].item.item[+].item[0].type = #display
* item[=].item.item[=].item[=].linkId = "postSubmit-container-eligibility-heading"
* item[=].item.item[=].item[=].text = "Antiviral eligibility"
* item[=].item.item[=].item[=].text.extension.valueString = "<h2 class='label-heading'>Antiviral eligibility</h2>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[+].type = #display
* item[=].item.item[=].item[=].linkId = "postSubmit-container-eligibility-maybeEligible"
* item[=].item.item[=].item[=].text = "Based on the information you have provided, you may be eligible for free oral COVID-19 antiviral medication."
* item[=].item.item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].item[=].extension.valueExpression.expression = "%criteriaMet = true"
* item[=].item.item[=].item[+].type = #display
* item[=].item.item[=].item[=].linkId = "postSubmit-container-eligibility-notEligible"
* item[=].item.item[=].item[=].text = "Not eligible"
* item[=].item.item[=].item[=].text.extension.valueString = "<p>Based on the information you have provided, you are not likely to be eligible for oral COVID-19 antiviral medication.</p><p>Talk to your doctor, pharmacist or hauora provider by phone if you think this is incorrect.</p><p><a target='_blank' href='https://www.healthpoint.co.nz/pharmacy/?serviceArea=covid-19-antiviral'>Pharmacies where you do not need a prescription for antivirals<anatomic-icon icon='link' display='inlineBlock' variant='functionalIcons'></anatomic-icon></a></p>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].item[=].extension.valueExpression.expression = "%criteriaMet = false"
* item[=].item.item[=].type = #group
* item[=].item.item[=].linkId = "postSubmit-container-eligibility"
* item[=].item.item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].extension.valueExpression.expression = "%testResult != 'failed'"
* item[=].item.item[+].item[0].type = #display
* item[=].item.item[=].item[=].linkId = "postSubmit-container-isolation-heading"
* item[=].item.item[=].item[=].text = "Recommended isolation"
* item[=].item.item[=].item[=].text.extension.valueString = "<h2 class='label-heading'>Recommended isolation</h2>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[+].type = #display
* item[=].item.item[=].item[=].linkId = "postSubmit-container-isolation-isolateFiveDays"
* item[=].item.item[=].item[=].text = "We recommend you stay home and isolate for five days from either the date you developed symptoms or the date you tested positive, whichever was earlier. You can leave your recommended isolation on the sixth day if you are feeling well."
* item[=].item.item[=].item[=].text.extension.valueString = "<p>We recommend you stay home and isolate for five days from either the date you developed symptoms or the date you tested positive, whichever was earlier. You can leave your recommended isolation on the sixth day if you are feeling well.</p>"
* item[=].item.item[=].item[=].text.extension.valueString.extension.valueExpression.expression = "'We recommend you stay home and isolate for 5 days from <b>' + %dayZero.formatDate('dddd, D MMMM') + '</b>. You can leave your recommended isolation on <b>' + %isolationLeaveDate.formatDate('dddd, D MMMM') + '</b> if you are feeling well.'"
* item[=].item.item[=].item[=].text.extension.valueString.extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].item[=].text.extension.valueString.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].item[=].extension.valueExpression.expression = "%recentSymptoms or (%recentTest and %hasSymptoms = false)"
* item[=].item.item[=].item[+].type = #display
* item[=].item.item[=].item[=].linkId = "postSubmit-container-isolation-stayAwayFromFacilities"
* item[=].item.item[=].item[=].text = "Recommended isolation"
* item[=].item.item[=].item[=].text.extension.valueString = "<p>For 10 days you should stay away from healthcare facilities, aged residential care facilities, or anyone at risk of getting seriously unwell with COVID-19. If you must visit, phone ahead and remember to wear a mask.</p><p><a target='_blank' href='https://info.health.nz/COVID-19'>Further COVID-19 information<anatomic-icon icon='link' display='inlineBlock' variant='functionalIcons'></anatomic-icon></a></p>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[+].type = #display
* item[=].item.item[=].item[=].linkId = "postSubmit-container-isolation-testDailyForFiveDays"
* item[=].item.item[=].item[=].text = "We recommend you test daily for 5 days and stay at home until 24 hours after your symptoms are gone. If symptoms persist, continue to test."
* item[=].item.item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].item[=].extension.valueExpression.expression = "%householdContact and %hasSymptoms"
* item[=].item.item[=].type = #group
* item[=].item.item[=].linkId = "postSubmit-container-isolation"
* item[=].item.item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].extension.valueExpression.expression = "%testResult = 'positive' and %isolationLeaveDate > today()"
* item[=].item.item[+].item[0].type = #display
* item[=].item.item[=].item[=].linkId = "postSubmit-container-nextSteps-heading"
* item[=].item.item[=].item[=].text = "What to do next"
* item[=].item.item[=].item[=].text.extension.valueString = "<h2 class='label-heading'>What to do next</h2>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[+].type = #display
* item[=].item.item[=].item[=].linkId = "postSubmit-container-nextSteps-antivirals"
* item[=].item.item[=].item[=].text = "Talk to your doctor, healthcare provider, pharmacist, or hauora provider if you think that you, or a member of your whānau, may be eligible for antiviral medicines.You can get a prescription for antivirals from your doctor, healthcare provider, or hauora provider. Some pharmacies can supply antivirals without a prescription."
* item[=].item.item[=].item[=].text.extension.valueString = "<p>Talk to your doctor, healthcare provider, pharmacist, or hauora provider if you think that you, or a member of your whānau, may be eligible for antiviral medicines.</p><p>You can get a prescription for antivirals from your doctor, healthcare provider, or hauora provider. Some pharmacies can supply antivirals without a prescription.</p><p><a target='_blank' href='https://www.healthpoint.co.nz/pharmacy/?serviceArea=covid-19-antiviral'>Pharmacies where you do not need a prescription for antivirals<anatomic-icon icon='link' display='inlineBlock' variant='functionalIcons'></anatomic-icon></a></p>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].item[=].extension.valueExpression.expression = "%criteriaMet = true"
* item[=].item.item[=].item[+].type = #display
* item[=].item.item[=].item[=].linkId = "postSubmit-container-nextSteps-currentAdvicePositive"
* item[=].item.item[=].item[=].text = "Continue to follow current advice: https://info.health.nz/conditions-treatments/infectious-diseases/covid-19/if-you-have-covid-19/"
* item[=].item.item[=].item[=].text.extension.valueString = "<p>Continue to follow current advice: <a target='_blank' href='https://info.health.nz/conditions-treatments/infectious-diseases/covid-19/if-you-have-covid-19/'>If you have COVID-19<anatomic-icon icon='link' display='inlineBlock' variant='functionalIcons'></anatomic-icon></a></p>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].item[=].extension.valueExpression.expression = "%testResult = 'positive'"
* item[=].item.item[=].item[+].type = #display
* item[=].item.item[=].item[=].linkId = "postSubmit-container-nextSteps-testAt24And48Hours"
* item[=].item.item[=].item[=].text = "If symptoms persist, test again at 24 and 48 hours."
* item[=].item.item[=].item[=].text.extension.valueString = "<p>If symptoms persist, test again at 24 and 48 hours.</p>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].item[=].extension.valueExpression.expression = "%testResult = 'negative' and (%recentSymptoms or (%hasSymptoms and (%householdContact = false)))"
* item[=].item.item[=].item[+].type = #display
* item[=].item.item[=].item[=].linkId = "postSubmit-container-nextSteps-currentAdviceNegative"
* item[=].item.item[=].item[=].text = "Continue to follow current advice: https://info.health.nz/conditions-treatments/infectious-diseases/covid-19/testing-and-reporting/"
* item[=].item.item[=].item[=].text.extension.valueString = "<p>Continue to follow current advice: <a target='_blank' href='https://info.health.nz/conditions-treatments/infectious-diseases/covid-19/testing-and-reporting/'>testing and reporting<anatomic-icon icon='link' display='inlineBlock' variant='functionalIcons'></anatomic-icon></a></p>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].item[=].extension.valueExpression.expression = "%testResult = 'negative'"
* item[=].item.item[=].item[+].type = #display
* item[=].item.item[=].item[=].linkId = "postSubmit-container-nextSteps-failed"
* item[=].item.item[=].item[=].text = "Complete a new RAT and report the result."
* item[=].item.item[=].item[=].text.extension.valueString = "<p>Complete a new RAT and report the result.</p>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].item[=].extension.valueExpression.expression = "%testResult = 'failed'"
* item[=].item.item[=].item[+].type = #display
* item[=].item.item[=].item[=].linkId = "postSubmit-container-nextSteps-failedCall111"
* item[=].item.item[=].item[=].text = "Call 111 if you find it difficult to breathe, pass out, or find it very difficult to wake up, are blue around the mouth, or very pale and cold, or are having severe chest pain."
* item[=].item.item[=].item[=].text.extension.valueString = "<p>Call <b>111</b> if you find it difficult to breathe, pass out, or find it very difficult to wake up, are blue around the mouth, or very pale and cold, or are having severe chest pain.</p>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].item[=].extension.valueExpression.expression = "%testResult = 'failed'"
* item[=].item.item[=].type = #group
* item[=].item.item[=].linkId = "postSubmit-container-nextSteps"
* item[=].item.item[+].item[0].type = #display
* item[=].item.item[=].item[=].linkId = "postSubmit-container-furtherSupport-heading"
* item[=].item.item[=].item[=].text = "Further support"
* item[=].item.item[=].item[=].text.extension.valueString = "<h2 class='label-heading'>Further support</h2>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[+].type = #display
* item[=].item.item[=].item[=].linkId = "postSubmit-container-furtherSupport-monitorSymptoms"
* item[=].item.item[=].item[=].text = "Monitor COVID-19 symptoms and if they get worse or you need medical care, call a healthcare provider or Healthline on 0800 358 5453."
* item[=].item.item[=].item[=].text.extension.valueString = "<p>Monitor <a target='_blank' href='https://info.health.nz/conditions-treatments/infectious-diseases/covid-19/about-covid-19/#covid-19-symptoms'>COVID-19 symptoms<anatomic-icon icon='link' display='inlineBlock' variant='functionalIcons'></anatomic-icon></a> and if they get worse or you need medical care, call a healthcare provider or Healthline on <b><a href='tel:0800 358 5453'>0800 358 5453</a></b>.</p>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].item[=].extension.valueExpression.expression = "%testResult = 'positive' or %hasSymptoms"
* item[=].item.item[=].item[+].type = #display
* item[=].item.item[=].item[=].linkId = "postSubmit-container-furtherSupport-testIfSymptomatic"
* item[=].item.item[=].item[=].text = "Monitor for COVID-19 symptoms, and test if you become symptomatic.If you return a positive RAT, report the result using this form."
* item[=].item.item[=].item[=].text.extension.valueString = "<p>Monitor for <a target='_blank' href='https://info.health.nz/conditions-treatments/infectious-diseases/covid-19/about-covid-19/#covid-19-symptoms'>COVID-19 symptoms<anatomic-icon icon='link' display='inlineBlock' variant='functionalIcons'></anatomic-icon></a>, and test if you become symptomatic.</p><p>If you return a positive RAT, report the result using this form.</p>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].item[=].extension.valueExpression.expression = "%testResult = 'negative' and %hasSymptoms = false"
* item[=].item.item[=].item[+].type = #display
* item[=].item.item[=].item[=].linkId = "postSubmit-container-furtherSupport-call111"
* item[=].item.item[=].item[=].text = "Call 111 if you find it difficult to breathe, pass out, or find it very difficult to wake up, are blue around the mouth, or very pale and cold, or are having severe chest pain."
* item[=].item.item[=].item[=].text.extension.valueString = "<p>Call <b>111</b> if you find it difficult to breathe, pass out, or find it very difficult to wake up, are blue around the mouth, or very pale and cold, or are having severe chest pain.</p>"
* item[=].item.item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.item[=].type = #group
* item[=].item.item[=].linkId = "postSubmit-container-furtherSupport"
* item[=].item.item[=].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item.item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item.item[=].extension.valueExpression.expression = "%testResult != 'failed'"
* item[=].item.item[+].type = #display
* item[=].item.item[=].linkId = "postSubmit-container-exitComplete"
* item[=].item.item[=].text = "Exit"
* item[=].item.item[=].text.extension.valueString = "<exit-button reason='completed'>Return to results page</exit-button>"
* item[=].item.item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item[=].item.type = #group
* item[=].item.linkId = "postSubmit-container"
* item[=].type = #group
* item[=].linkId = "postSubmit"
* item[=].extension.valueCodeableConcept.coding.code = #post-submit
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[+].item[0].linkId = "extract-resultObservationValuePositive"
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].extension[=].valueCode = #Observation
* item[=].item[=].extension[+].url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-extractUrn"
* item[=].item[=].extension[=].valueString = "urn:uuid:observation-result"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%testResult = 'positive'"
* item[=].item[=].initial.valueString = "DETECTED"
* item[=].item[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/ManaakiNgaTahiObservation#Observation.valueString"
* item[=].item[=].text = "Extract - test result positive"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "extract-resultObservationValueNegative"
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].extension[=].valueCode = #Observation
* item[=].item[=].extension[+].url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-extractUrn"
* item[=].item[=].extension[=].valueString = "urn:uuid:observation-result"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%testResult = 'negative'"
* item[=].item[=].initial.valueString = "NOT DETECTED"
* item[=].item[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/ManaakiNgaTahiObservation#Observation.valueString"
* item[=].item[=].text = "Extract - test result negative"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "extract-resultObservationValueFailed"
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].extension[=].valueCode = #Observation
* item[=].item[=].extension[+].url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-extractUrn"
* item[=].item[=].extension[=].valueString = "urn:uuid:observation-result"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%testResult = 'failed'"
* item[=].item[=].initial.valueString = "FAILED"
* item[=].item[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/ManaakiNgaTahiObservation#Observation.valueString"
* item[=].item[=].text = "Extract - test result failed"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "extract-resultObservationCode"
* item[=].item[=].type = #choice
* item[=].item[=].initial.valueCoding = #XNZ5530 "SARS-CoV-2 RAT Self"
* item[=].item[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/ManaakiNgaTahiObservation#Observation.code.coding[]"
* item[=].item[+].linkId = "extract-diagnosticReport"
* item[=].item[=].type = #group
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].extension[=].valueCode = #DiagnosticReport
* item[=].item[=].extension[+].url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-extractUrn"
* item[=].item[=].extension[=].valueString = "urn:uuid:diagnosticReport"
* item[=].item[=].item[0].linkId = "extract-diagnosticReport-code"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].initial.valueCoding = #XNZ5530 "SARS-CoV-2 RAT Self"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.code.coding[]"
* item[=].item[=].item[+].linkId = "extract-diagnosticReport-identifierSystem"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].initial.valueString = "https://standards.digital.health.nz/ns/SendingApplication"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.identifier[0].system"
* item[=].item[=].item[+].linkId = "extract-diagnosticReport-identifierValue"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].initial.valueString = "RAT Catcher"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.identifier[0].value"
* item[=].item[=].item[+].linkId = "extract-diagnosticReport-result"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].initial.valueReference = Reference(urn:uuid:observation-result) "SARS-CoV-2 RAT Self"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.result[]"
* item[=].item[=].item[+].linkId = "extract-diagnosticReport-phone"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].initial.valueReference = Reference(urn:uuid:observation-phone) "Text patient com"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.result[]"
* item[=].item[=].item[+].linkId = "extract-diagnosticReportSubject"
* item[=].item[=].item[=].extension.extension[0].valueExpression.expression = "QuestionnaireResponse.subject"
* item[=].item[=].item[=].extension.extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.extension[=].url = "source"
* item[=].item[=].item[=].extension.extension[+].valueExpression.expression = "DiagnosticReport.subject"
* item[=].item[=].item[=].extension.extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.extension[=].url = "destination"
* item[=].item[=].item[=].extension.url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-extractMetadata"
* item[=].item[=].item[=].initial.valueBoolean = true
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "extract-diagnosticReportPerformer"
* item[=].item[=].item[=].extension.extension[0].valueExpression.expression = "QuestionnaireResponse.subject"
* item[=].item[=].item[=].extension.extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.extension[=].url = "source"
* item[=].item[=].item[=].extension.extension[+].valueExpression.expression = "DiagnosticReport.performer[]"
* item[=].item[=].item[=].extension.extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.extension[=].url = "destination"
* item[=].item[=].item[=].extension.url = "http://health.govt.nz/fhir/StructureDefinition/sdc-questionnaire-extractMetadata"
* item[=].item[=].item[=].initial.valueBoolean = true
* item[=].item[=].item[=].type = #boolean
* item[=].item[+].linkId = "subjectName"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].text = "subject name"
* item[=].item[=].extension[0].valueBoolean = true
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension[+].valueString = "subject.display"
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-claims-extract"
* item[=].extension.valueBoolean = true
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].type = #group
* item[=].linkId = "extract"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "report"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId='reportResult').item.first().item"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "aveSymptoms"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId='aveSymptoms').item.first().item"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "aveCriteria"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId='aveCriteria').item.first().item"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "testResult"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(true and %report.where(linkId='reportResult-container-controlLine').answer.valueBoolean, iif(true and %report.where(linkId='reportResult-container-testLine').answer.valueBoolean, 'positive', 'negative'), 'failed')"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "symptomOnsetDate"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%aveSymptoms.where(linkId='aveSymptoms-container-symptomDate').answer.valueCoding.code"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "testDate"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%report.where(linkId='reportResult-container-testDate').answer.valueCoding.code"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "hasSymptoms"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%aveSymptoms.where(linkId='aveSymptoms-container-details').item.where(linkId='aveSymptoms-container-details-hasSymptoms').answer.valueBoolean = true"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "recentSymptoms"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%hasSymptoms and %symptomOnsetDate > today() - 6 days"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "isHighRisk"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "true and %aveCriteria.where(linkId='aveCriteria-container-highRiskContainer').item.where(linkId='aveCriteria-container-highRiskContainer-isHighRisk').answer.valueBoolean = true"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "isVulnerable"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "true and %aveCriteria.where(linkId='aveCriteria-container-vulnerableContainer').item.where(linkId='aveCriteria-container-vulnerableContainer-isVulnerable').answer.valueBoolean = true"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "householdContact"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "true and %report.where(linkId='reportResult-container-householdContact').answer.valueBoolean"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "criteriaMet"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "(%isHighRisk or %isVulnerable) and (%recentSymptoms = true) and (%testResult = 'positive' or (%testResult = 'negative' and %householdContact = true))"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "dayZero"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%hasSymptoms and %symptomOnsetDate.count() > 0, iif(%symptomOnsetDate > %testDate, %testDate, %symptomOnsetDate), %testDate)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "isolationLeaveDate"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%dayZero + 6 days"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "recentTest"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%report.where(linkId='reportResult-container-testDate').answer.valueCoding.code > today() - 6 days"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "subjectName"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.item.where(linkId='extract').item.where(linkId='subjectName').answer.valueString"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/submit-button-label"
* extension[=].valueString = "Enter result"