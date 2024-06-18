
This project prototyped and then established the FHIR server to serve as a repository for CarePlan and related resources originating in COVID case management.

The repository stores information for COVID patients needing a planned tailored regime of care.  The information is modelled in FHIR 4.0.1, the main resource types being CarePlan, Encounter, Condition, QuestionnaireResponse and Consent.

CarePlans are authored by practitioners, starting from a standard HNZ base PlanDefinition then tailoring to the specific needs of the patient and the case.

Once stored at the FHIR repository, the CarePlan can then be accessed by other members of the care team as needed, via any system/application client that is authorised to consume the FHIR API.

The initial origin of the FHIR data is HNZ’s CCCM system in which Covid Case management is done.

<img src="sharedCarePlan.png" width="100%"/>



## Integration Use Cases

### Shared Care Care Plans

1. [Record Consent](./consentBasedAccessControl.html)

2. [Create Condition](./createCondition.html)

3. [Create Encounter](./createEncounter.html)

4. [Initial Assessment](./initialAssesment.html)

5. [Health Checks](./healthChecks.html)

6. [Create Care Plan](./createCarePlan.html)

7. [Complete Care Plan](./completeCarePlan.html)

8. [Collect Measurements](./collectMeasurements.html)

### Rheumatic fever secondary prevention service care plans



