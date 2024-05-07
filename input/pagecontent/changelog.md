# Changelog

## v0.4.0 Rheumatic Fever phase 2 part 1 (May 2024)

### [Data models](rheumatic-fever-data-models.html)

- Revised medication planning and recording model: Added nested lignocaine medication request and statement; simplified appointments.

### Consent (2024-05-07)
- In [consent-based access control](consentBasedAccessControl.html) added example instance data model showing patient opt-out of data sharing
- Consistency and readability improvements to existing Consent example instance models

---
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

- Added [state transition diagrams](rheumatic-fever-data-models.html#secondary-prophylaxis-appointment-planning-and-recording-states-model) for the expected states of secondary prophylaxis resources.

- Update to existing diagram illustrating [appointment planning and recording](rheumatic-fever-data-models.html#Secondary-prophylaxis-medication-planning-and-encounter-recording) the number of planned Appointments has been reduced to one.

- Developer guidance expanded about validation of [resources using versioned profiles](developerGuide.html#fhir-profile-versioning)


## v0.3.8 (2024-02-02)

### RF examples

- The example showing [consent by a related person](Consent-ConsentByRelatedPersonExample.html) is now an `#active` rather than `#proposed` consent, to make it more realistic.

### Documentation

- In [consent-based access control](consentBasedAccessControl.html), a diagram and description has been added for the Consent-on-behalf scenario (consent obtained from a related person).  Other minor improvements to the description.

- Fixed a few broken links in this changelog.

---

## v0.3.7 (2023-12-19)

### Fixed category code in CareTeams

The SNOMED code required by the rheumatic fever profile of CareTeam was incorrect and has now been revised to `320741000210108`.

Note this is a new SNOMED code for the New Zealand edition and is not yet visible in SNOMED CT browsers as of this update.

### Business versioning of canonical definitions

As of this IG, a business version of "1.0.0" has been set in definitions and canonical instances.  Future updates from this point will increment these version numbers in the applicable artifacts using [semantic versioning](https://build.fhir.org/resource.html#versions).

#### Questionnaires

All four rheumatic fever canonical Questionnaire instances now have a [business version](https://build.fhir.org/resource.html#versions) set to "1.0.0".

The example `QuestionnaireResponse`s for these Questionnaires now use versioned FHIR "questionnaire" references eg.
`"https:/build.fhir.org/ig/cinc-fhir-ig/Questionnaire/MedicationsAndFollowUpGuidanceQuestionnaire|1.0.0"`

#### Profiles

The five rheumatic fever resource profiles of `CarePlan | Patient | Condition | CareTeam | MedicationRequest` now have a [business version](https://build.fhir.org/resource.html#versions) set to "1.0.0" instead of the IG version.

Corresponding example instances of these profiled types now use a versioned FHIR canonical reference in their metadata eg.

```json
{
  "resourceType" : "CarePlan",
  "meta" : {
    "versionId" : "2",
    "lastUpdated" : "2023-11-07T04:00:00Z",
    "profile" : [
      🔗 "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/nz-sharedcare-rheumaticfever-careplan|1.0.0"
    ]
  },
  ...
```

#### ValueSets

`ValueSet`s defined in this IG now have their own business version numbers set to "1.0.0" as of this IG release.

### Example instance profile changes

A couple of example instances now claim their resource profile as the profile (version "1.0.0") *in this IG* whereas previously they claimed the base FHIR R4B profile:

- *SecondaryProphylaxisCareTeam* (`RheumaticFeverCareTeam`)
- *PlannedMedicationRequestExample* (`RheumaticFeverMedicationRequest`)

---

## v0.3.6 (2023-12-14)

### Further extension of Condition in RheumaticFeverCondition profile

One further extension is now defined, in the *RheumaticFeverCondition* profile of `Condition` resource.  The new extension named `assessmentDate` enables API consumers to record the date of RHD severity assessment separately from the date of diagnosis (`recordedDate`).

The corresponding example instance has been updated to demonstrate usage of this extension.  The FHIR data model and rheumatic fever data documentation has been revised to show the additional extension element.  

### Correction to rheumatic fever provider HPI identifiers

All identifier references to the two HPI pilot service provider orgs have been corrected to `G0M086 / G0M087`.  Previously the second character of these identifiers was incorrectly specified as upper case letter 'O' rather than '0' zero.

### Second advance warning of change to Official URL

A warning message about this is now displayed in the [IG home page](https://https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/) and in rheumatic fever resource profile pages.

### Terminology

One further type code has been added to the [ExternalSystemIdentifierTypeValueSet](ValueSet-external-system-identifier-type-code.html) ValueSet to enable clients to designate identifiers to external encounter objects.

### Documentation

In the rheumatic fever section of the documentation, the FHIR design diagrams (which were moved onto their own page in IG v0.3.5) are no longer duplicated on the rheumatic fever *data mappings and translation* page.

---

## v0.3.5 (2023-11-24)

### Advance warning of change to Official URL

Current official URL: `https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/`
In an upcoming version of this IG, the Official URL (aka canonical URL) will change to a different hostname in the `digital.health.nz` domain.  In addition the name of this IG will change.

Developers of client applications are advised to parameterize all instances of the official URL to prepare for this upcoming change.

### Rheumatic Fever data

#### Profiles and terminology

As a result of a design decision to constrain values of medication frequency to a standard set of frequencies (coded) used in NZ rheumatic fever secondary prophylaxis:

1. A new [ValueSet](ValueSet-rf-medicationrequest-frequency-code.html) has been added to define the SNOMED codes of valid secondary prophylaxis medication frequencies (appointment intervals), and  
1. An new **extension** has been introduced on MedicationRequest to capture a code from the ValueSet in (1). (The general purpose element `Dosage.additionalInstruction` is no longer to be used for medication frequency).
1. A new profile for `MedicationRequest` named **RheumaticFeverMedicationRequest** has been introduced to incorporate the new extension from (2).  It builds on NzMedicationRequest from the NZ Base IG.

#### Examples

- The example `MedicationRequest` now claims conformance with its new profile in this IG as outlined above.

- The example `MedicationStatement` now claims conformance with [NzMedicationStatement](https://fhir.org.nz/ig/base/StructureDefinition-NzMedicationStatement.html) from the **NZ Base IG**.

  - This example also now has a `partOf` reference to its contained instance to avoid a Publisher QA FHIR validation error.

- There is now a new example [Bundle](Bundle-SecondaryProphylaxisAugustEncounterBundle.html) showing how secondary prophylaxis encounter info can be created as three POST requests in one *transaction* (Encounter + MedicationStatement + QuestionnaireResponse).

- The various Consent resource examples now claim conformance with the ManaakiNgaTahiConsent profile in this IG.

#### IG Documentation

- Added a section to the *API Developer Guide* about validation of FHIR resource references.

- Updates to *FHIR Resource Data Model*:

  - Base FHIR type is now consistently identified using the UML stereotype of the class
  
  - MedicationRequest resource is now shown as profiled `RheumaticFeverMedicationRequest``
  
  - Usage of *sliced* identifiers in profiled resources is now shown more clearly.
  
  - The model now shows references going from the `RheumaticFeverCondition` resource to the *Episurv* national notifiable disease system.

- Tweaked the RF [Terminology](terminology.html) page.

- Added a few resource types to server [Capability Statement](capabilityStatement.html)

---

## v0.3.4 (2023-11-09)

### Warning of change to Official URL

Current official URL: `https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/`
In an upcoming version of this IG, the Official URL (aka canonical URL) will change to a different hostname in the `digital.health.nz` domain.  In addition the name of this IG will change.

Developers of client applications are advised to parameterise all instances of the official URL to prepare for this upcoming change.

### rheumatic fever changes

#### Refactored whanau care team into `Patient.contact[]`

- Whanau care teams are now represented directly in the `RheumaticFeverPatient` resource, as `.contact[]` members.

- The `RheumaticFeverCareTeam` resource profile will now be used only for *secondary prophylaxis* care teams.  So all instances of `RheumaticFeverCareTeam` resources are categorised sct#320741000210108 "Secondary prophylaxis team"

- A new example `RheumaticFeverPatient` instance has been added showing how to model whanau members as contacts
  **[MadeleineMeringueAndWhanau](Patient-MadeleineMeringueAndWhanau.html)**

#### `RheumaticFeverPatient` profile changes

- `Patient.contact` now has three new extensions capturing role (coded), relationship (string) and primary contact nature for each member of a patient's whanau/trusted delegates care team.

#### Questionnaire updates

- [Secondary Prophylaxis Health Assessment Questionnaire](Questionnaire-SecondaryProphylaxisHealthAssessmentQuestionnaire.html)  
    Various items removed and one new item added [Example QR]QuestionnaireResponse-RFPatientHealthAssessmentQuestionnaireResponse.html) updated to match.

- [Medications and Follow-Up Guidance Questionnaire](Questionnaire-MedicationsAndFollowUpGuidanceQuestionnaire.html)  
    One item changed from boolean to yes/no/unknown coded answer. [Example QR](QuestionnaireResponse-MedicationsAndFollowUpGuidanceQuestionnaireResponse.html) updated to match.

- [Patient Medication Allergy Questionnaire](Questionnaire-PatientMedicationAllergyQuestionnaire.html)  
      One item removed. [Example QR](QuestionnaireResponse-PatientMedicationAllergyQuestionnaireResponse.html) updated to match.

#### Updates to examples

- The example `SecondaryProphylaxisCareTeam` has been adjusted to properly represent a secondary prophylaxis care team

- The example `WhanauCareTeam` has been deleted.

- `Appointment` examples updated to reflect changes to data dictionary, including the addition of another code for salesforce CarePlanActivity identifiers in [ExternalSystemIdentifierTypeValueSet](ValueSet-external-system-identifier-type-code.html).

- A new example has been added demonstrating **consent by a person related to a patient**. See **[ConsentByRelatedPersonExample](Consent-ConsentByRelatedPersonExample.html)**.

- The example rheumatic fever patient **[MadeleineMeringue](Patient-MadeleineMeringue.html)** also now has some sample ContactPoint entries in `Patient.telecom[]`.

- documentation  
  - The [Terminology overview](terminology.html) and [Data translation and models](rheumatic-fever-data.html) pages have been updated.

### Other IG changes in v0.3.4

- Reorganised top nav with two new sections for COVID CINC artifacts and Consent documentation and examples.

- The IG now allows for `.contained` resource instances in Consents ([ManaakiNgaTahiConsent](StructureDefinition-nz-sharedcare-consent.html) )
    This is needed for rheumatic fever in which consent is commonly obtained from the patient's parent or another relative.

- Three new extensions defined for use on `Patient.contact`

- IG *FHIR Shorthand (fsh)* source code improvements
  - Separate extension definitions now combined into single files by resource type
  - New ruleset for generation of `ContactPoint` elements used by `patient.telecom` and `patient.contact.telecom` examples.

## v0.3.3 (2023-11-07)

### rheumatic fever fixes and changes

- `Consent` resource examples

  - Examples now include the `.organization` element as the custodian of the consent, set to the same org as `.performer`

  - An example of an `#active` status Consent has been added.  [This example](Consent-RheumaticFeverActiveConsentExample.html) demonstrates how clients should form a valid Consent instance representing when a patient's consent has been actually obtained.

- In the `RheumaticFeverCarePlan` resource profile, `.addresses` now has cardinality zero to many (`0..*`)

- In the `RheumaticFeverCondition` resource profile, the `diagnosticCertainty` extension now uses codes defined in a **code system in this IG** because clients cannot expand the ValueSet
   published on the [New Zealand Health Terminology Service](https://nzhts.digital.health.nz/fhir/ValueSet/rheumatic-fever-diagnostic-certainty) to codes at this time.

- In the four rheumatic fever **extensions** defined by this IG, the **context**, which constrains which type(s) the extension
    can be used on has been changed to the applicable base type instead of the profiled type.  This change means clients can use
    the extensions without encountering hapi validator errors / Bad Request 400 errors.

- Identifiers from **EPISurv**, the national system which tracks notifiable disease events, are no longer to be recorded on `RheumaticFeverCarePlan` and have moved instead to the `RheumaticFeverCondition` profile.  Relevant example instances have been updated.

- *validation errors in example resources* -- updates to address certain errors raised by the [FHIR Validator](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator):
  
  - In example resources which have a Reference(Organization) the reference type is now the base type `Organization` instead of `"type" : "NzOrganization"`

  - In CarePlan examples, `subject` references are now of base `"type" : "Patient"` instead of `"type" : "NzPatient"`
  
  - Also in CarePlan examples, `addresses` has changed from a singleton reference to an array of References (length 1) with each entry of `"type": "Condition"`
  
## v0.3.2 (2023-10-27)

- Renamed the API described by this Implementation Guide from *Care In The Community* FHIR API to **Te Whatu Ora Shared Care** FHIR API reflecting recent expansion.

- Revised Identifier slicing in CarePlan, Condition and CareTeam resource profiles to allow multiple references to external identifiers and capture the types of identifier being referred to.

- Revised the [patient medication allergy ValueSet](ValueSet-rf-medicationallergy-code.html) to now use SNOMED terminology which pinpoints the medication allergy instead of substance concepts.

- [Patient Medication Allergy Questionnaire](Questionnaire-PatientMedicationAllergyQuestionnaire.html) revised questions to codify
    answer yes|no|unknown, and add third question to capture Other Allergy detail as free text.

- [Secondary Prophylaxis Health Assessment Questionnaire](Questionnaire-SecondaryProphylaxisHealthAssessmentQuestionnaire.html) revised questions in line with
    data dictionary changes, and [QuestionnaireResponse example]QuestionnaireResponse-RFPatientHealthAssessmentQuestionnaireResponse.html) updated to match.

- Corrected rheumatic heart disease severity [ValueSet](ValueSet-rf-condition-rhdseverity-code.html) to add missing code `#301561000210102 History of heart valve replacement (situation)`

- Introduced new terminology [QualifiedYesNoAnswerValueSet](ValueSet-nz-questionnaireresponse-qualifiedyesno-code.html).  This set of SNOMED codes applies
    to yes/no-type questions where it is important to be able to record an 'unknown' or 'information not available' response in a FHIR QuestionnaireResponse item.

- Introduced new terminology [ExternalSystemIdentifierTypeValueSet](ValueSet-external-system-identifier-type-code.html).  This extends the set of FHIR
    Identifier type codes to define new codes for known external identifiers in NZ national systems that integrate with the Te Whatu Ora Shared Care FHIR API.

- All Rheumatic fever terminology now appears in the *rheumatic fever* section of the **Profiles** tab.  

- Key **salesforce <-> FHIR mappings** are now defined in the [rheumatic fever data](rheumatic-fever-data.html) page.

- Added **Consent** tab describing patient-consent-based access controls implemented by the Te Whatu Ora Shared Care API.

## v0.3.1 (2023-10-24)

- Added Provisional patient Consent specifications for pilot
  - `ManaakiTahiConsent` profile updated to reactivate some data elements of *provision.**
  - Added two new `Consent` examples illustrating how **provisional consent** can be represented to enable pilot Salesforce/Mulesoft access to FHIR data ('*ProposedConsentBaseExample*', '*ProposedConsentCoverageExample*')
  - Added `CareTeam` example identifying the group of all rheumatic fever lead-provider organisations
  
- Updated API **Capability Statement** with RheumaticFever profiled resource API

- Added (this) *Changelog* page, linked from IG Support tab

- Changed *subject* references in CarePlan examples to be relative references to the local Rheumatic Fever Patient (`Patient`) instance, instead of NHI identifier-based logical refs.

- Added the four extensions to the Rheumatic Fever group at the top of the Profiles tab.

- Fixed image rendering of data model designs in rheumatic fever data page

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
