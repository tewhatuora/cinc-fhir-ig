Profile: CovidCarePlan
Parent: CarePlan
Description: "The Care in the Community profile of the CarePlan resource"
* implicitRules 0..0
* language 0..0
* extension 0..0
* modifierExtension 0..0
* identifier 0..0
* instantiatesUri 0..0
* basedOn 0..0
* replaces 0..0
* partOf 0..0
* category 0..0
* contributor 0..0
* careTeam 0..0
* supportingInfo 0..0
* activity.id 0..0
* activity.extension 0..0
* activity.modifierExtension 0..0
* activity.outcomeCodeableConcept 0..0
* activity.progress 0..0
* activity.reference 0..0
* activity.detail.id 0..0
* activity.detail.modifierExtension 0..0
* activity.detail.kind 0..0
* activity.detail.instantiatesUri 0..0
* activity.detail.code 0..0
* activity.detail.reasonCode 0..0
* activity.detail.reasonReference 0..0
* activity.detail.goal 0..0
* activity.detail.statusReason 0..0
* activity.detail.doNotPerform 0..0
* activity.detail.location 0..0
* activity.detail.performer 0..0
* activity.detail.product[x] 0..0
* activity.detail.dailyAmount 0..0
* activity.detail.quantity 0..0
* activity.detail.description 0..0
* contained only Goal
* instantiatesCanonical only Canonical(PlanDefinition)
* subject only Reference(Patient)
* author only Reference(Practitioner)
* activity.detail.instantiatesCanonical only Canonical(Questionnaire)
* activity.detail.scheduled[x] only Timing
