Profile: ServiceRequestActivityDefinition
Parent: ActivityDefinition
Id: ServiceRequestActivityDefinition
Description: "ActivityDefinition resource which creates (templates) ServiceRequests"
* ^version = "0.1.3"
* identifier 1..
* identifier.use 1..1
* identifier.use = http://hl7.org/fhir/identifier-use#usual
* identifier.value 1..1
//* identifier.value from ActivityDefinitionTemplatesVS (preferred)
// "COVID19MeasurementProcedureRequestTemplate"
* kind 1..1
* kind = http://hl7.org/fhir/request-resource-types#ServiceRequest
* status 1..1
* subjectCodeableConcept = http://hl7.org/fhir/resource-types#Patient
* participant.type = http://hl7.org/fhir/action-participant-type#patient
* approvalDate 0..0
* author 0..0
* bodySite 0..0
* copyright 0..0
* dosage 0..0
* dynamicValue 0..0
* editor 0..0
* effectivePeriod 0..0
* endorser 0..0
// * extension 0..0  v0.1.3 relief from prohibition of CarePlan extension
* implicitRules 0..0
* lastReviewDate 0..0
* library 0..0
* location 0..0
* modifierExtension 0..0
* observationRequirement 0..0
* observationResultRequirement 0..0
* product[x] 0..0
* profile 0..0
* quantity 0..0
* relatedArtifact 0..0
* reviewer 0..0
* specimenRequirement 0..0
* topic 0..0
* transform 0..0
* useContext 0..0