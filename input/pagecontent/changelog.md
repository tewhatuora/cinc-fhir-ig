# Changelog

## v0.4.1 (2025-03-30)

### Added Outreach Referral 
Added the [Outreach Referral](outreachReferrals.html) resources and workflow.

## v0.4 (2024-06-18)

### All Rheumatic Fever definition, examples and API capability description has moved to separate IG
[https://build.fhir.org/ig/tewhatuora/fhir-rheumatic-fever/index.html](https://build.fhir.org/ig/tewhatuora/fhir-rheumatic-fever/index.html)

## v0.3.9c (2024-05-03)

Fixed Capability Statement broken links.

## v0.3.9b (2024-03-22)

### Antiviral eligibility questionnaire

Updated [AntiviralEligibilityQuestionnaire](Questionnaire-AntiViralEligibilityQuestionnaire.html) to version 1.0.1
  
- The `answerValueSet` canonical Url in question 3 (link Id "criteria") has been corrected to have the hyphen `-` in 'COVID-19'
- Corresponding `QuestionnaireResponse` examples [yes](QuestionnaireResponse-AntiviralEligibilityYesQuestionnaireResponse.html),[no](QuestionnaireResponse-AntiviralEligibilityNoQuestionnaireResponse.html) 
   changed to use the *NZHTS* rather than *standards.digital.health.nz* form of canonical Url for the defined terminology ValueSets

## v0.3.9 (2024-02-29)

### Documentation

- Developer guidance expanded about validation of [resources using versioned profiles](developerGuide.html#fhir-resource-profile-based-validation)

## v0.3.8 (2024-02-02)

### RF examples

- The example showing [consent by a related person](Consent-ConsentByRelatedPersonExample.html) is now an `#active` rather than `#proposed` consent, to make it more realistic.

### Documentation

- In [consent-based access control](consentBasedAccessControl.html), a diagram and description has been added for the Consent-on-behalf scenario (consent obtained from a related person).  Other minor improvements to the description.

- Fixed a few broken links in this changelog.

---

## v0.3.7 (2023-12-19)

### Business versioning of canonical definitions

As of this IG, a business version of "1.0.0" has been set in definitions and canonical instances.  Future updates from this point will increment these version numbers in the applicable artifacts using [semantic versioning](https://build.fhir.org/resource.html#versions).

---

## v0.3.6 (2023-12-14)

## v0.3.5 (2023-11-24)

- The various Consent resource examples now claim conformance with the ManaakiNgaTahiConsent profile in this IG.
- Added a section to the *API Developer Guide* about validation of FHIR resource references.

---

## v0.3.4 (2023-11-09)

- A new example has been added demonstrating **consent by a person related to a patient**. See **[ConsentByRelatedPersonExample](Consent-ConsentByRelatedPersonExample.html)**.

- The IG now allows for `.contained` resource instances in Consents ([ManaakiNgaTahiConsent](StructureDefinition-nz-sharedcare-consent.html) )

## v0.3.3 (2023-11-07)
  
## v0.3.2 (2023-10-27)

- Renamed the API described by this Implementation Guide from *Care In The Community* FHIR API to **Te Whatu Ora Shared Care** FHIR API reflecting recent expansion.

- Added **Consent** tab describing patient-consent-based access controls implemented by the Te Whatu Ora Shared Care API.

## v0.3.1 (2023-10-24)

- Added Provisional patient Consent specifications for pilot
  - `ManaakiTahiConsent` profile updated to reactivate some data elements of *provision.**
  - Added two new `Consent` examples illustrating how **provisional consent** can be represented to enable pilot Salesforce/Mulesoft access to FHIR data ('*ProposedConsentBaseExample*', '*ProposedConsentCoverageExample*')
  - Added `CareTeam` example identifying the group of all rheumatic fever lead-provider organisations
  
- Added (this) *Changelog* page, linked from IG Support tab

## v0.3.0 (2023-10-09)

### Added pilot FHIR support for rheumatic fever national care coordination solution

- New resource profiles (extensions)
  - RheumaticFeverCarePlan
  - RheumaticFeverCondition
  - RheumaticFeverPatient
- Terminology
  - Five ValueSets and two CodeSystems covering rheumatic fever terminology
- Examples of rheumatic fever instances
  - RheumaticFeverCarePlan: 4 states
  - NzPatient: 4 examples
  - secondary prophylaxis information: Encounter, Appointment, MedicationRequest, MedicationStatement
  - supporting examples: Organization, CareTeam

## v0.2.4 (2023-09-19)

- Reverted casing of identifier of AntiViralEligibilityQuestionnaire (reversing the change introduced in v0.2.2)
  - Casing now the same as the Questionnaire's official Url

## v0.2.3 (2023-08-30)

- Published 2 new questionnaires.
  - Pregnancy Assessment Questionnaire
  - Mental Health Questionnaire
- Updated README with guidance on branch publishing steps.

## v0.2.2 (2023-08-16) AntiViralEligibiltyQuestionnaire

- Questionnaire now uses NZ published terminology for eligibility criteria questions 1 and 3

  - Permitted answers for these questions are now defined in answerValueSets instead of local codes in no CodeSystem
  
  - enableWhen logic comparator operands now use codes instead of valueStrings
  
  - valueSet references utilise a StructureDataCapture extension for specifiying the preferred terminology server.  This lets FHIR clients such as the NLM Form Builder obtain codes correctly using ValueSet `$expand` operation.

- Fixed casing of 'antiviral' in #official identifier to AntiviralEligibilityQuestionnaire
- Revised the two sample Yes|No QuestionnaireResponses to correctly use published CodeSystem codes
- Added SDC to IG dependencies to resolve 'terminology not known and not valid here' publisher errors
- Remove ValueSets / CodeSystems from IG which are now published on NZ Health Terminology Service

## v0.2.1 (2023-08-01) General updates

- *CareyCarrington* has been defined as an example Patient instance and is now Reference()'d by other examples instead of duplicating.
- The *version* element (business version) has been removed from all canonical definitions: it is not of any practical use at present because the IG publisher overwrites it with the IG version on publishing.
- *COVIDMVPCarePlanTemplate* PlanDefinition instance: capitalisation made consistent between instance name, official URL, name and official identifier.
- Deleted unused local ValueSet / CodeSet containing old CINC template identifiers.
- Deleted prototype rheumatic fever profiles / examples not needed at this point.

## v0.2.0 (2023-08-01)

- Updated **AntiViralEligibility** Questionnaire to align with CCCM per ticket CFFF-889 and also codify two of the criteria

## v0.1.9 (2023-07-27)

- Removed ManaakiNgaTahi `Questionnaire` and `QuestionnaireResponse` profiles as these are not required. A `QuestionnaireResponse` is defined by it's parent `Questionnaire` therefore the profile is not required.
- Removed unused Questionnaire for MeasureMents consent
- Updated examples and CapbilityStatement to reflect the above.

## v0.1.8 (2023-07-26) Updates to Antiviral Eligibility Questionnaire

- Updated Questionnaire items as per business requirements CFFF-889 and tested form in SDC viewer
- Fixed the two sample Yes|No QuestionnaireResponses to match
- Renamed fsh file
- Made InstanceOf: *ManaakiNgaTahiQuestionnaire* instead of *Questionnaire*
- Adjusted profile of *ManaakiNgaTahiQuestionnaire* to restore Coding elements required by this questionnaire (which had been excluded)
- Set start date on period of original (#temp) identifier

## v0.1.7 (2023-07-25) New Questionnaire definitions

1. Created new **Questionnaire** definition resource *COVIDPrivacyStatementQuestionTemplate* based on de facto seed resource in use.
2. Created new **Questionnaire** definition resource *PrivacyStatementMeasurementCollectionTemplate* based on de facto seed resource in use.

### Other changes

- Fixed publisher errors in Consent and ConsentQuestionnaireResponse examples  
- Changed date of definitional resources to reflect the date of last update  
- Added version to most definitional and profile resources  
- Added an example QuestionnaireResponse to demonstrate a completed *COVIDPrivacyStatementQuestionTemplate* questionnaire
- Deleted an old example QuestionnaireResponse which was confusing

## v0.1.6 (2023-07-25) New definitional resources

1. Created new **PlanDefinition** definition resource *COVIDMVPCareplanTemplate* based on similar example resource.
2. Created new **ActivityDefinition** definition resource *MeasurementProcedureRequestTemplate*, starting with current seed JSON payload in MeasurementProcedureActivityDefinition converted to fsh.

### Other minor changes

- In the `PlanDefinition` instance `COVIDMVPCareplanTemplate` (renamed from prior file):
  - corrected `.definitionCanonical` incorrect reference to a Canonical,
  - official identifier `COVIDMVPCarePlanTemplate` added alongside legacy identifier `COVIDRegularHealthCheckQuestionnaire`  

- In ActivityDefinition instance `MeasurementProcedureRequestTemplate` (renamed from prior file):
  - `.url` element corrected to set an official URL.  
  - official identifier `MeasurementProcedureRequestTemplate` added alongside legacy identifier

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
  `https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/*Questionnaire-COVID-InitialHealthAssessment`
  `https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/*Questionnaire-COVID-RegularHealthCheck`
  `https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/*Questionnaire-COVID-VaccinationSurvey`

  ..to be consistent with the recently-added Questionnaire:  
  `https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire-COVID-PublicHealthHistory`

## v0.1.4 (2023-05-01)

- Fixed a number of errors with the build
- Added `Observation.note` to the Observation resource
- Added `Observation.encounter` to the Observation resource
- Resolved a number of isses with search parameter definitions across multiple resources
