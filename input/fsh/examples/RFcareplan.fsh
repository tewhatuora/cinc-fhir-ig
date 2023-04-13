Instance: RFCarePlanExample
Usage: #example
Description: "An example Rheumatic Fever Care Plan"
InstanceOf: RheumaticFeverCarePlan
* identifier.use = #usual
* identifier.system = "https://standards.digital.health.nz/ns/rheumatic-fever-case-id"
* identifier.value = "RF/1"
* created = "2023-04-11"
* title = "Rheumatic fever care plan - Pania Sorethroat"
* status = #draft
* intent = #plan
* category = http://snomed.info/sct#734163000 "Care plan (record artifact)"
* extension.url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/nz-careplan-rf-case-management"
* extension.extension.url = "pathwayStatus"
* extension.extension.valueCoding.system = $pathway-status-codes
* extension.extension.valueCoding.code = #registered
* addresses = Reference(RFConditionExample)
* encounter = Reference(RFAdmissionEncounterExample)
* subject = Reference(NzPatientExample) "Pania Sorethroat"
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "SCF7824"
* author.identifier.use = #official
* author.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* author.identifier.value = "99ZZFX"
* note[0].time = "2023-04-11"
* note[=].text = "## Language / residency\n****Preferred language**:   English\n**Interpreter required**:  no\n**Residency status**:   NZ citizen\n**Usual Country of Residence**: New Zealand\n"
* note[+].time = "2023-04-11"
* note[=].text = "##Occupation\n**Occupation type**:    Work\n**Occupation**:    Aircraft ground service technician\n**Name of employer/school/ECEC**:    Auckland International Airport\nWorkplace/school/ECEC address**:    Ray Emery Drive, Māngere, Auckland 2022\n"
* goal = Reference(rf-patient-goal0)
* contained = rf-patient-goal0

Instance: rf-patient-goal0
InstanceOf: Goal
Usage: #inline
* lifecycleStatus = #proposed
* category.text = "Pania's goal is to avoid rheumatic heart disease."
* priority = http://terminology.hl7.org/CodeSystem/goal-priority#medium-priority "Medium Priority"
* priority.text = "Medium Priority"
* description.text = "A nurse records the patient's goals in the care plan as part of recording their goals and preferences."
* subject = Reference(NzPatientExample) "Pania Sorethroat"
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "SCF7824"
* statusDate = "2023-04-11"
* expressedBy.type = "Patient"
* expressedBy.identifier.use = #official
* expressedBy.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* expressedBy.identifier.value = "SCF7824"