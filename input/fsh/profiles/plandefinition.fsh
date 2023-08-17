Profile: ManaakiNgaTahiPlanDefinition
Parent: PlanDefinition
Description: "PlanDefinition template which creates Manaaki Nga Tahi (Care in the Community) CarePlans"
* ^version = "0.1.3"
* action.subject[x] only CodeableConcept
* action.definition[x] only Canonical(ActivityDefinition or Questionnaire)
* identifier 1..
* identifier.use 1..1
* identifier.use = http://hl7.org/fhir/identifier-use#usual
* identifier.value 1..1
* status 1..1
* subject[x] only CodeableConcept
* subjectCodeableConcept = http://hl7.org/fhir/resource-types#Patient
* implicitRules 0..0
* contained 0..0
// * extension 0..0  v0.1.3 relief from prohibition of CarePlan extension
* modifierExtension 0..0
* useContext 0..0
* copyright 0..0
* approvalDate 0..0
* relatedArtifact 0..0
* library 0..0
* goal.extension 0..0
* goal.modifierExtension 0..0
* goal.documentation 0..0
* goal.target.id 0..0
* goal.target.extension 0..0
* goal.target.modifierExtension 0..0
* action.extension 0..0
* action.modifierExtension 0..0
* action.code 0..0
* action.reason 0..0
* action.documentation 0..0
* action.trigger 0..0
* action.condition 0..0
* action.input 0..0
* action.output 0..0
* action.relatedAction 0..0
* action.timing[x] 0..0
* action.participant 0..0
* action.groupingBehavior 0..0
* action.selectionBehavior 0..0
* action.transform 0..0
* action.dynamicValue 0..0
* action.action 0..0