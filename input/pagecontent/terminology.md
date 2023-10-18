# Terminology

This page provides an overview of the terminology systems that are depended on, or have been created, for use in this FHIR API.

The actual terminology bindings appear in the relevant sections of the IG mainly in resource profiles, extensions and examples.

## Care in the community core FHIR API

...

## Rheumatic Fever FHIR API

The Rheumatic Fever FHIR resources make use of established SNOMED (International and NZ Editions) and NZMT (New Zealand Medication Terminology) codesystems, and defines new terminology needed to code the certainty of a rheumatic fever diagnosis.


### NZ rheumatic-fever-specific new terminology

This IG creates a new CodeSystem and ValueSet defining the possible values of **certainty of a rheumatic fever diagnosis**.  This is local terminology specific to NZ's management of rheumatic-fever-affected patients.

The coding is used in the rheumatic fever profile *extension* of the FHIR `Condition` resource type.

The codes are included in a ValueSet published on the NZHTS and so can be viewed by [expanding the ValueSet](https://nzhts.digital.health.nz/fhir/ValueSet/$expand?url=https://nzhts.digital.health.nz/fhir/ValueSet/nzmt) in the normal way.

### SNOMED CT

SNOMED codes are used in rheumatic fever for:
<!-- markdownlint-disable MD037 -->
1. **severity** of the rheumatic fever condition and of the related rheumatic heart disease condition,
1. **category** of CarePlans and CareTeams,
1. identifying the **medication route** by which secondary prophylaxis medication is taken,
1. identifying the body **site** of secondary prophylaxis medication injection,
1. codifying **roles** of whanau CareTeam participants,
1. codifying medication **substances** a patient is allergic to,
1. codifying the **interval** / **frequency** of medication,

Wherever possible SNOMED codes are from the established SNOMED International Edition.  In a few cases suitable codes were not available and for these new codes have been introduced via the SNOMED CT **New Zealand Edition** defined [here](https://browser.ihtsdotools.org/?perspective=full&conceptId1=21000210109&edition=MAIN/SNOMEDCT-NZ/2023-10-01&release=&languages=en,mi).  (*Note that the NZ Edition of SNOMED is published only twice a year at present so recent updates may take up to 6 months to appear.*)

### New Zealand Medication Terminology

New Zealand Medication Terminology is [documented here](https://view.nzmt.org.nz/) and its terms can be easily listed by [expanding an NZHTS-published ValueSet](https://nzhts.digital.health.nz/fhir/ValueSet/$expand?url=https://nzhts.digital.health.nz/fhir/ValueSet/rheumatic-fever-Diagnostic-Certainty)

NZMT codes are used in rheumatic fever for:

1.secondary prophylaxis medication **ingredient**

- eg. `#10134211000116105` | benzathine penicillin (as benzathine benzylpenicillin tetrahydrate) [Used in `Medication.ingredient`]

2.secondary prophylaxis medication **brand**

- eg. `#43924201000116108` | Bicillin LA 1.2 million units/2.3 mL (900 mg/2.3 mL) injection: suspension, 1 x 2.3 mL syringe [`Medication.code`]

3.secondary prophylaxis **strength/concentration of lignocaine** pain relief medication 

- eg. `#10747581000116100` | lidocaine hydrochloride anhydrous 1% (20 mg/2 mL) injection, ampoule [`MedicationStatement.medicationCodeableConcept`)]
