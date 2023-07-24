Alias: $plan-definition-type = http://terminology.hl7.org/CodeSystem/plan-definition-type
Alias: $resource-types = http://hl7.org/fhir/resource-types
Alias: $definition-topic = http://terminology.hl7.org/CodeSystem/definition-topic
Alias: $goal-priority = http://terminology.hl7.org/CodeSystem/goal-priority
Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org
Alias: $action-type = http://terminology.hl7.org/CodeSystem/action-type

Instance: COVIDMVPCareplanTemplate
InstanceOf: PlanDefinition
Usage: #definition
* language = #en-NZ
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/PlanDefinition/COVIDMVPCareplanTemplate"
* name = "COVIDMVPCarePlanTemplate"
* identifier[0].use = #official
* identifier[=].value = "COVIDMVPCareplanTemplate"
* identifier[=].period.start = "2023-07-25"
* identifier[+].use = #temp
* identifier[=].value = "CareplanTemplate-CitC-COVID19-CCCM"
* identifier[=].period.end = "2023-07-25"
* version = "0.1.6"

* title = "Template for COVID-19 Care in the Community CCCM MVP Careplans"
* subtitle = "Care in the Community plans to handle low risk COVID-19 cases"
* type = $plan-definition-type#order-set "Order Set"
* type.text = "Order Set"
* date = "2023-07-25"
* status = #active
* experimental = true
* subjectCodeableConcept = $resource-types#Patient "Patient"
* subjectCodeableConcept.text = "Patient"
* publisher = "Te Whatu Ora"
* description = "Creates a care plan suitable for a low to medium-risk COVID-19 case: patient activities include medication delivery, heath checks, RAT self-test and follow-up GP Check"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* purpose = "A care plan which supports a patient who has tested positive for COVID-19 infection and will isolate at home and self serve as appropriate as they recover."
* usage = "Allows monitoring and tracking of progress of a self serve COVID-19 patient."
* lastReviewDate = "2022-08-04"
* effectivePeriod.start = "2022-08-04"
* effectivePeriod.end = "2024-07-25"
* topic = $definition-topic#treatment "Treatment"
* topic.text = "Treatment"
* author.name = "Craig McLean"
* author.telecom.system = #other
* author.telecom.value = "CinC Fit for Future Project"
* editor.name = "Keith Newton"
* editor.telecom.system = #other
* editor.telecom.value = "CinC Fit for Future Project"
* reviewer.name = "Nigel Millar"
* reviewer.telecom.system = #other
* reviewer.telecom.value = "CinC Fit for Future Project"
* endorser.name = "Alastair Kenworthy"
* endorser.telecom.system = #other
* endorser.telecom.value = "CinC Fit for Future Project"
* goal.id = "covid-recovery"
* goal.category.text = "Full Recovery"
* goal.description.text = "Activities in the Self Serve COVID-19 Care Plan are intended to monitor progress of a patient who self isolates and self serves as they recover from a COVID-19 infection, to ensure they receive the appropriate level of care throughout (physical, financial, mental, social, family, spiritual)."
* goal.priority = $goal-priority#medium-priority "Medium Priority"
* goal.priority.text = "Medium Priority"
* goal.start.text = "Exposure to coronavirus infection (event)"
* goal.addresses.coding[0] = $sct#704420006 "At risk of dehydration"
* goal.addresses.coding[+] = $sct#267036007 "Shortness of breath"
* goal.target.measure = $loinc#20564-1 "Oxygen saturation in Blood"
* goal.target.measure.text = "Oxygen Saturation"
* goal.target.detailQuantity = 99 '%' "percent"
* goal.target.due = 5 'd' "days"
* action.id = "1"
* action.prefix = "1."
* action.title = "Health Check"
* action.description = "Health Check"
* action.textEquivalent = "Health check to monitor conditions and enable ability to make decisions on continuing with care plan"
* action.priority = #urgent
* action.goalId = "covid-recovery"
* action.subjectCodeableConcept = $resource-types#Patient "Patient"
* action.subjectCodeableConcept.text = "Patient"
* action.type = $action-type#create "Create"
* action.type.text = "Create"
* action.requiredBehavior = #must
* action.precheckBehavior = #yes
* action.cardinalityBehavior = #multiple
* action.definitionCanonical = Canonical(COVIDRegularHealthCheckQuestionnaire)