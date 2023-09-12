# Changelog

## v0.2.3 (2023-08-30)
- Published 2 new questionnaires.
  - Pregnancy Assessment Questionnaire
  - Mental Health Questionnaire
- Updated README with guidance on branch publishing steps.
## v0.2.2 (2023-08-16)
**AntiViralEligibiltyQuestionnaire**
- Questionnaire now uses NZ published terminology for eligibility criteria questions 1 and 3
    - Permitted answers for these questions are now defined in answerValueSets instead of local codes in no CodeSystem
    - enableWhen logic comparator operands now use codes instead of valueStrings
    - valueSet references utilise a StructureDataCapture extension for specifiying the preferred terminology server.  This lets FHIR clients such as the NLM Form Builder obtain codes correctly using ValueSet `$expand` operation.
- Fixed casing of 'antiviral' in #official identifier to AntiviralEligibilityQuestionnaire
- Revised the two sample Yes|No QuestionnaireResponses to correctly use published CodeSystem codes
- Added SDC to IG dependencies to resolve 'terminology not known and not valid here' publisher errors
- Remove ValueSets / CodeSystems from IG which are now published on NZ Health Terminology Service
## v0.2.1 (2023-08-01)
**General updates**
- *CareyCarrington* has been defined as an example Patient instance and is now Reference()'d by other examples instead of duplicating. 
- The *version* element (business version) has been removed from all canonical definitions: it is not of any practical use at present because the IG publisher overwrites it with the IG version on publishing.
- *COVIDMVPCarePlanTemplate* PlanDefinition instance: capitalisation made consistent between instance name, official URL, name and official identifier.
- Deleted unused local ValueSet / CodeSet containing old CINC template identifiers.
- Deleted prototype rheumatic fever profiles / examples not needed at this point.

## v0.2.0 (2023-08-01)
- Updated **AntiViralEligibility** Questionnaire to align with CCCM per ticket CFFF-889 and also codify two of the criteria
- See the [v0.2.0 release note](/releaseNotes/v0.2.0.md) for detail on breaking changes to QuestionnaireResponses from this Questionnaire update

## v0.1.9 (2023-07-27)

- Removed ManaakiNgaTahi `Questionnaire` and `QuestionnaireResponse` profiles as these are not required. A `QuestionnaireResponse` is defined by it's parent `Questionnaire` therefore the profile is not required.
- Removed unused Questionnaire for MeasureMents consent
- Updated examples and CapbilityStatement to reflect the above.


## v0.1.8 (2023-07-26) Updates to Antiviral Eligibility Questionnaire

**AntiViralEligibiltyQuestionnaire**
- Updated Questionnaire items as per business requirements CFFF-889 and tested form in SDC viewer
- Fixed the two sample Yes|No QuestionnaireResponses to match
- Renamed fsh file
- Made InstanceOf: *ManaakiNgaTahiQuestionnaire* instead of *Questionnaire*
- Adjusted profile of *ManaakiNgaTahiQuestionnaire* to restore Coding elements required by this questionnaire (which had been excluded)
- Set start date on period of original (#temp) identifier

## v0.1.7 (2023-07-25) More Questionnaire improvements
**New definitional resources**
1. Created new **Questionnaire** definition resource *COVIDPrivacyStatementQuestionTemplate* based on de facto seed resource in use.
2. Created new **Questionnaire** definition resource *PrivacyStatementMeasurementCollectionTemplate* based on de facto seed resource in use.

**minor**
- Fixed publisher errors in Consent and ConsentQuestionnaireResponse examples
- Changed date of definitional resources to reflect the date of last update
- Added version to most definitional and profile resources 
- Added an example QuestionnaireResponse to demonstrate a completed *COVIDPrivacyStatementQuestionTemplate* questionnaire
- Deleted an old example QuestionnaireResponse which was confusing

## v0.1.6 (2023-07-25) More Questionnaire improvements
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

## v0.1.5 (2023-07-19) COVID Questionnaire improvements

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

## v0.1.4 (2023-05-01)

- Fixed a number of errors with the build
- Added `Observation.note` to the Observation resource
- Added `Observation.encounter` to the Observation resource
- Resolved a number of isses with search parameter definitions across multiple resources
