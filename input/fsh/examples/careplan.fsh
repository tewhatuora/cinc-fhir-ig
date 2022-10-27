Instance: CarePlanExample
InstanceOf: CovidCarePlan
Usage: #example
Description: "An example COVID Care Plan"
* contained = goal0
* instantiatesCanonical = "https://api.integration-uat.covid19.health.nz/cinc/fhir/R4/PlanDefinition/7894edcd-fb89-4413-affd-091c5c6da733"
* status = #active
* intent = #plan
* title = "COVID-19 Omicron Response - Carey Carrington"
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZXP7823"
* encounter = Reference(EncounterExample)
* created = "2022-09-20"
* author.identifier.use = #official
* author.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* author.identifier.value = "99ZZFX"
* goal = Reference(goal0)
* activity.detail.instantiatesCanonical = "https://api.integration-uat.covid19.health.nz/cinc/fhir/R4/Questionnaire/ce04db3b-9382-4051-91c0-f798da0ffe75"
* activity.detail.status = #not-started
* activity.detail.extension.url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* activity.detail.extension.valueString = "Activity 1"
* activity.detail.scheduledTiming.event = "2022-09-21"
* meta.versionId = "2"
* meta.lastUpdated = "2022-09-20T02:34:40.225Z"
* description = "COVID-19 Omicron Response Case from CCCM, Patient - Carey Carrington, NHI Number - ZXP7823"
* addresses = Reference(ConditionExample)
* period.start = "2022-09-20"
* period.end = "2022-09-21"
* note.text = "Notes and Comments from CCCM"

Instance: goal0
InstanceOf: Goal
Usage: #inline
* lifecycleStatus = #active
* category.text = "Full Recovery"
* priority = http://terminology.hl7.org/CodeSystem/goal-priority#medium-priority "Medium Priority"
* priority.text = "Medium Priority"
* description.text = "Activities in the Self Serve COVID-19 Care Plan are intended to monitor progress of a patient who self isolates and self serves as they recover from a COVID-19 infection, to ensure they receive the appropriate level of care throughout (physical, financial, mental, social, family, spiritual)."
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZXP7823"
* startCodeableConcept.text = "Exposure to coronavirus infection (event)"
* target.measure = http://loinc.org#20564-1 "Oxygen saturation in Blood"
* target.measure.text = "Oxygen Saturation"
* target.detailQuantity = 99 '%' "percent"
* target.dueDuration = 5 'd' "days"
* statusDate = "2022-09-20"
* expressedBy.type = "Patient"
* expressedBy.identifier.use = #official
* expressedBy.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* expressedBy.identifier.value = "ZXP7823"