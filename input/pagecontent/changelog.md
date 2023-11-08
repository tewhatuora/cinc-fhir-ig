# Changelog

## v0.3.4 (2023-11-09)

#### rheumatic fever changes

- CareTeam refactor - whanau care teams are now represented directly in the `RheumaticFeverPatient` resource, as `.contact[]` members. 

  1. The `RheumaticFeverCareTeam` profile resource will now be used only for *secondary prophylaxis* care teams.
    All instances of `RheumaticFeverCareTeam` resources are categorised sct#320721000210108 "Secondary prophylaxis team"

  1. The example `SecondaryProphylaxisCareTeam` has been adjusted to properly represent a secondary prophylaxis care team

  1. The example `WhanauCareTeam` has been deleted and replaced by a new example  `RheumaticFeverPatient`:
    **[MadeleineMeringueAndWhanau](Patient-MadeleineMeringueAndWhanau.html)** shows how whanau care team members are defined in `Patient.contact[]`s with role and relationship.

- `RheumaticFeverPatient` profile changes

  - `.contact` has two new extensions defined on it to capture the role (coded) and relationship (string) of each contact w.r.t the subject patient.
  
  - `.identifier` has a new slice to permit 'usual' identifiers in external national systems, to match other resources profiled in this IG

- other minor changes

  - The example rheumatic fever patient **[MadeleineMeringue](Patient-MadeleineMeringue.html)** now has sample ContactPoint entries in `Patient.telecom[]`.

  - The [Terminology overview](terminology.html) page has been updated.

- IG *FHIR Shorthand (fsh)* source code improvements
  - Extension definitions now combined into single files for each resource type
  - New ruleset for generation of `ContactPoint` elements needed for `patient.telecom` and `patient.contact.telecom` examples.


## v0.3.3 (2023-11-07)

#### rheumatic fever fixes and changes

- `Consent` resource examples

  - Examples now include the `.organization` element as the custodian of the consent, set to the same org as `.performer`

  - An example of an `#active` status Consent has been added.  This [Active Consent Example](Consent-ActiveConsentExample.html) demonstrates clients should form a valid Consent instance when a patient's consent has been obtained and can be represented as such in FHIR.

- In the `RheumaticFeverCarePlan` resource profile, `.addresses` now has cardinality zero to many (`0..*`)

- In the `RheumaticFeverCondition` resource profile, the `diagnosticCertainty` extension now uses codes defined in a **code system in this IG** because the validators do not recognise the code system 
    (https://nzhts.digital.health.nz/fhir/ValueSet/rheumatic-fever-diagnostic-certainty) used by the published ValueSet on NZ Health Terminology Server (code system not in global FHIR registry).

- In the four rheumatic fever **extensions** defined by this IG, the **context**, which constrains which type(s) the extension 
    can be used on has been changed to the applicable base type instead of the profiled type.  This change means clients can use
    the extensions without encountering hapi validator errors / Bad Request 400 errors.

- Identifiers from **EPISurv**, the national system which tracks notifiable disease events, are no longer to be recored on `RheumaticFeverCarePlan` and have moved to `RheumaticFeverCondition` resources.  Relevant example instances have been updated.

- *validation errors in example resources* -- updates to address certain errors raised by the [FHIR Validator](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator):
  
  - In example resources which have a Reference(Organization) the reference type is now the base type `Organization` instead of `"type" : "NzOrganization"`

  - In CarePlan examples, `subject` references are now of base `"type" : "Patient"` instead of `"type" : "NzPatient"`
  
  - Also in CarePlan examples, `addresses` has changed from a singleton reference to an array of References (length 1) with each entry of `"type": "Condition"`
  

## v0.3.2 (2023-10-27)

- Renamed the API described by this Implementation Guide from *Care In The Community* FHIR API to **Te Whatu Ora Shared Care** FHIR API reflecting recent expansion.

- Revised Identifier slicing in CarePlan, Condition and CareTeam resource profiles to allow multiple references to external identifiers and capture the types of identifier being referred to. 
- 
- Revised the [patient medication allergy ValueSet](ValueSet-rf-medicationallergy-code.html) to now use SNOMED terminology which pinpoints the medication allergy instead of substance concepts.

- [Patient Medication Allergy Questionnaire](Questionnaire-PatientMedicationAllergyQuestionnaire.html) revised questions to codify 
   answer yes|no|unknown, and add third question to capture Other Allergy detail as free text.

- [Secondary Prophylaxis Health Assessment Questionnaire](Questionnaire-SecondaryProphylaxisHealthAssessmentQuestionnaire.html) revised questions in line with data dictionary changes, 
 and [QuestionnaireResponse example]QuestionnaireResponse-RFPatientHealthAssessmentQuestionnaireResponse.html) updated to match. 

- Corrected rheumatic heart disease severity [ValueSet](ValueSet-rf-condition-rhdseverity-code.html) to add missing code `#301561000210102 History of heart valve replacement (situation)`

- Introduced new terminology [QualifiedYesNoAnswerValueSet](ValueSet-nz-questionnaireresponse-qualifiedyesno-code.html).  This set of SNOMED codes applies
 to yes/no-type questions where it is important to be able to record an 'unknown' or 'information not available' response in a FHIR QuestionnareResponse item.

- Introduced new terminology [ExternalSystemIdentifierTypeValueSet](ValueSet-external-system-identifier-type-code.html).  This extends the set of FHIR 
 Identifier type codes to define new codes for known external identifiers in NZ national systems that integrate with the Te Whatu Ora Shared Care FHIR API.

- All Rheumatic fever terminology now appears in the *rheumatic fever* section of the **Profiles** tab.  

- Key **salesforce<->FHIR mappings** are now defined in the [rheumatic fever data](rheumatic-fever-data.html) page. 

- Added **Consent** tab describing patient-consent-based access controls implemented by the Te Whatu Ora Shared Care API.

## v0.3.1 (2023-10-24)

- Added Provisional patient Consent specifications for pilot
  - `ManaakiTahiConsent` profile updated to reactivate some data elements of *provision.**
  - Added two new `Consent` examples illustrating how **provisional consent** can be represented to enable pilot Salesforce/Mulesoft access to FHIR data ('*ProvConsentBaseExample*', '*ProvConsentCoverageExample*')
  - Added `CareTeam` example identifying the group of all rheumatic fever lead-provider organisations
  
- Updated API **Capability Statement** with RheumaticFever profiled resource API

- Added (this) *Changelog* page, linked from IG Support tab

- Changed *subject* references in CarePlan examples to be relative references to the local Rheumatic Fever Patient (`Patient`) instance, instead of NHI identifer-based logical refs.

- Added the four extensions to the Rheumatic Fever group at the top of the Profiles tab.

- Fixed image rendering of data model designs in rheumatic fever data page

## v0.3.0 (2023-10-09)

**Added pilot FHIR support for rheumatic fever national care coordination solution**

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

## v0.2.2 (2023-08-16) **AntiViralEligibiltyQuestionnaire**

- Questionnaire now uses NZ published terminology for eligibility criteria questions 1 and 3
    - Permitted answers for these questions are now defined in answerValueSets instead of local codes in no CodeSystem
    - enableWhen logic comparator operands now use codes instead of valueStrings
    - valueSet references utilise a StructureDataCapture extension for specifiying the preferred terminology server.  This lets FHIR clients such as the NLM Form Builder obtain codes correctly using ValueSet `$expand` operation.
- Fixed casing of 'antiviral' in #official identifier to AntiviralEligibilityQuestionnaire
- Revised the two sample Yes|No QuestionnaireResponses to correctly use published CodeSystem codes
- Added SDC to IG dependencies to resolve 'terminology not known and not valid here' publisher errors
- Remove ValueSets / CodeSystems from IG which are now published on NZ Health Terminology Service

## v0.2.1 (2023-08-01) **General updates**

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

**Other changes**
- Fixed publisher errors in Consent and ConsentQuestionnaireResponse examples
- Changed date of definitional resources to reflect the date of last update
- Added version to most definitional and profile resources 
- Added an example QuestionnaireResponse to demonstrate a completed *COVIDPrivacyStatementQuestionTemplate* questionnaire
- Deleted an old example QuestionnaireResponse which was confusing

## v0.1.6 (2023-07-25) New definitional resources

1. Created new **PlanDefinition** definition resource *COVIDMVPCareplanTemplate* based on similar example resource.
2. Created new **ActivityDefinition** definition resource *MeasurementProcedureRequestTemplate*, starting with current seed JSON payload in MeasurementProcedureActivityDefinition converted to fsh.

**other changes**
- In PlanDefinition corrected *COVIDMVPCarePlanTemplate.definitionCanonical*'s incorrect reference to a Canonical(COVIDRegularHealthCheckQuestionnaire)
- In ActivityDefinition *MeasurementProcedureRequestTemplate.url* corrected missing official URL.
- PlanDefinition *COVIDMVPCarePlanTemplate* now has the official identifier *COVIDMVPCarePlanTemplate* in addition to its legacy identifier
- ActivityDefinition *MeasurementProcedureRequestTemplate* now has the official identifier *MeasurementProcedureRequestTemplate* in addition to its legacy identifier
- PlanDefinition *MeasurementProcedureRequestTemplate* resource is now defined in file *PlanDefinition-COVIDMVPCarePlanTemplate* (same as IG) whereas formerly it was seeded from file *MeasurementProcedureActivityDefinition.json*
- ActivityDefinition *MeasurementProcedureRequestTemplate* resource is now defined in file *ActivityDefinition-MeasurementProcedureRequestTemplate* (same as IG) whereas formerly it was seeded from file *MeasurementProcedureActivityDefinition*
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
