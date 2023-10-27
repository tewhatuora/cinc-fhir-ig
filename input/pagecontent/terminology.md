## Rheumatic Fever API terminology overview

This page provides an overview of the terminology systems that are depended on, or have been created, for use in this FHIR API.

The Rheumatic Fever FHIR resources make use of established SNOMED (International and NZ Editions) and NZMT (New Zealand Medication Terminology) codesystems, and defines new terminology needed to code the certainty of a rheumatic fever diagnosis.


### New terminology for diagnostic certainty

This IG introduces new terminology (a CodeSystem and ValueSet) defining the possible values of **certainty of a rheumatic fever diagnosis**.  This terminology is specific to NZ's management of rheumatic-fever-affected patients.

The new codes are used in an *extension* to the FHIR `Condition` resource type.  See *Rheumatic Fever Condition* in the Profiles section.

These new codes are published in a CodeSystem and ValueSet on the New Zealand Health Terminology Server (NZHTS).  To see all codes valid for use, clients can [expand the ValueSet](https://nzhts.digital.health.nz/fhir/ValueSet/$expand?url=https://nzhts.digital.health.nz/fhir/ValueSet/rheumatic-fever-Diagnostic-Certainty) in the normal way.

### New SNOMED-based ValueSets

SNOMED codes are used in rheumatic fever for:
<!-- markdownlint-disable MD037 -->
1. **severity** of the rheumatic fever condition and of the related rheumatic heart disease condition,
1. **category** of CarePlans and CareTeams,
1. identifying the **medication route** by which secondary prophylaxis medication is taken,
1. identifying the body **site** of secondary prophylaxis medication injection,
1. codifying **roles** of whanau CareTeam participants,
1. codifying medication **substances** a patient is allergic to,
1. codifying the **interval** / **frequency** of medication,

The codes which are valid for these purposes are defined by ValueSets in this Implementation Guide.  

Note that SNOMED codes are taken from the SNOMED CT International Edition wherever possible but a handful of new codes had to be defined where suitable terms were not already available.   These new codes are being introduced in the SNOMED CT **New Zealand Edition** which has a [root concept defined here](https://browser.ihtsdotools.org/?perspective=full&conceptId1=21000210109&edition=MAIN/SNOMEDCT-NZ/2023-10-01&release=&languages=en,mi).

The NZ edition is published only every six months (October and April), and there are also SNOMED licensing restrictions affecting accessibility of NZ edition terms in the [New Zealand Health Terminology Server](https://nzhts.digital.health.nz/fhir/ValueSet) and in the the [FHIR global terminology service](https://tx.fhir.org).  Due to these issues FHIR API clients ValueSets which define SNOMED-based terminology are not usable by FHIR API clients when published at the NZ Health Terminology Server, and so at the present time, the official definitions of rheumatic fever terminology are given by the **ValueSets published in this Implementation Guide**.  

It is anticipated that this situation will ease in the future as the new NZ terms become more accessible to NZ clients through established global terminology services.

### New Zealand Medication Terminology

New Zealand Medication Terminology is [documented here](https://view.nzmt.org.nz/) and its terms can be easily listed by [expanding an NZHTS-published ValueSet](https://nzhts.digital.health.nz/fhir/ValueSet/$expand?url=https://nzhts.digital.health.nz/fhir/ValueSet/rheumatic-fever-Diagnostic-Certainty)

NZMT codes are used in rheumatic fever for:

1.secondary prophylaxis medication **ingredient**

- eg. `#10134211000116105` | benzathine penicillin (as benzathine benzylpenicillin tetrahydrate) [Used in `Medication.ingredient`]

2.secondary prophylaxis medication **brand**

- eg. `#43924201000116108` | Bicillin LA 1.2 million units/2.3 mL (900 mg/2.3 mL) injection: suspension, 1 x 2.3 mL syringe [`Medication.code`]

3.secondary prophylaxis **strength/concentration of lignocaine** pain relief medication 

- eg. `#10747581000116100` | lidocaine hydrochloride anhydrous 1% (20 mg/2 mL) injection, ampoule [`MedicationStatement.medicationCodeableConcept`)]
