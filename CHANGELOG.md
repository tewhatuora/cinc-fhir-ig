# Changelog

# v0.1.4 (2023-05-01)

- Fixed a number of errors with the build
- Added `Observation.note` to the Observation resource
- Added `Observation.encounter` to the Observation resource
- Resolved a number of isses with search parameter definitions across multiple resources

# v0.1.5 (2023-07-19) COVID Questionnaire improvements

- Revised, and made consistent, canonical identifiers for three COVID-related Questionnaires
  - `COVIDInitialHealthAssessmentQuestionnaire` [was QuestionTemplate-CitC-COVID19-InitialAssessment]
  - `COVIDRegularHealthCheckQuestionnaire` [was QuestionTemplate-CitC-COVID19-RegularHealthCheck]
  - `COVIDVaccinationSurveyQuestionnaire` [was Questionnaire-COVID-VaccinationSurveyQuestionnaire]
  
    All the above identifiers are categorised "use":"official", with a use.period starting from `2023-07-19`
    The former legacy identifiers remain, but in "use":"temp" status with their use.period.**end** date set to `2023-07-19`
    After these revisions, all four COVID Questionnaires now have consistent identifier values (`COVIDPublicHealthHistoryQuestionnaire` being the fourth and most recent addition)

- Revised **official URLs** for the same three COVID Questionnaires to:
    https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/*Questionnaire-COVID-InitialHealthAssessment*
    https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/*Questionnaire-COVID-RegularHealthCheck*
    https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/*Questionnaire-COVID-VaccinationSurvey*
  
      These Official URLs are now more logical and also consistent with the recently added 
      Questionnaire at URL:
  https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire-COVID-PublicHealthHistory


# v0.1.6 (2023-07-25) More Questionnaire improvements
**New definitional resources**
1. Created new **PlanDefinition** definition resource *COVIDMVPCareplanTemplate* based on similar example resource.
2. Created new **ActivityDefinition** definition resource *MeasurementProcedureRequestTemplate*, starting with current seed JSON payload in MeasurementProcedureActivityDefinition converted to fsh.

**Corrected canonical URLs**
- In PlanDefinition corrected *COVIDMVPCarePlanTemplate.definitionCanonical*'s incorrect reference to a Canonical(COVIDRegularHealthCheckQuestionnaire)
- In ActivityDefinition *MeasurementProcedureRequestTemplate.url* corrected missing official URL.
 
**Identifier changes**
- PlanDefinition *COVIDMVPCarePlanTemplate* now has the official identifier *COVIDMVPCarePlanTemplate* in addition to its legacy identifier
- ActivityDefinition *MeasurementProcedureRequestTemplate* now has the official identifier *MeasurementProcedureRequestTemplate* in addition to its legacy identifier

**file changes**
- PlanDefinition *MeasurementProcedureRequestTemplate* resource is now defined in file *PlanDefinition-COVIDMVPCarePlanTemplate* (same as IG) whereas formerly it was seeded from file *MeasurementProcedureActivityDefinition.json*

- ActivityDefinition *MeasurementProcedureRequestTemplate* resource is now defined in file *ActivityDefinition-MeasurementProcedureRequestTemplate* (same as IG) whereas formerly it was seeded from file *MeasurementProcedureActivityDefinition*

**name changes**
None.

**minor**
- Fixed IG publisher INFO warnings by adding Descriptions to QuestionnaireResponse examples
