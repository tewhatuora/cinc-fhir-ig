Instance: CarePlanExample
InstanceOf: ManaakiNgaTahiCarePlan
Usage: #example
Description: "An example ManaakiNgaTahi Care Plan"
* contained = goal0
* instantiatesCanonical = Canonical(COVIDMVPCarePlanTemplate)
* status = #draft
* intent = #plan
* title = "COVID-19 Omicron Response - Carey Carrington"

* subject = Reference(CareyCarrington) "Carey Carrington"
* subject.type = "Patient"

* encounter = Reference(EncounterExample)
* created = "2022-12-14"
* author.identifier.use = #official
* author.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* author.identifier.value = "99ZZFX"
* goal = Reference(goal0)
* activity.detail.instantiatesCanonical = Canonical(COVIDRegularHealthCheckQuestionnaire)
* activity.detail.status = #not-started

Instance: goal0
InstanceOf: Goal
Usage: #inline
* lifecycleStatus = #proposed
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
* statusDate = "2022-12-14"
* expressedBy.type = "Patient"
* expressedBy.identifier.use = #official
* expressedBy.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* expressedBy.identifier.value = "ZXP7823"