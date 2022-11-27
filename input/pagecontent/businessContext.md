# Overview

This project prototyped and then established the FHIR server to serve as a repository for CarePlan and related resources originating in COVID case management.

The repository stores information for COVID patients needing a planned tailored regime of care.  The information is modelled in FHIR 4.0.1, the main resource types being CarePlan, Encounter, Condition, QuestionnaireResponse and Consent.

CarePlans are authored by practitioners, starting from a standard HNZ base PlanDefinition then tailoring to the specific needs of the patient and the case.

Once stored at the FHIR repository, the CarePlan can then be accessed by other members of the care team as needed, via any system/application client that is authorised to consume the FHIR API.

The initial origin of the FHIR data is HNZ’s CCCM system in which Covid Case management is done.

![](sharedCarePlan.png)