<img src="./careplan-tailoring.png" width="100%" />

# Definitions

**Care Plan** resource: CarePlans represent a specific plan instance for a particular patient, and describe the intention of how one or more practitioners intend to deliver care for that particular patient. Ultimately it is a ‘Container’ for a set of activities which define a plan of care.

**Plan Definition**: A plan definition is a pre-defined group of actions to be taken in particular circumstances, often including conditional elements, options, and other decision points. It allows for the definition of various types of plans as a sharable, consumable, and executable artifact.

The Care Plan resource is created via the CarePlan Service API, by applying an appropriate Plan Definition and `bundling` the relevant resources together.

The CarePlan Service API Sequence is only triggered when the following essential criteria are met:

- Consent has been recorded

- A Health Check has been completed in CCCM

- The CCCM record is set to “Active Management”

Refer to the “Create CarePlan” flow below for an illustration of the three typical scenarios by which the CarePlan Service API Sequence is Triggered.

<img src="./create-careplan-flow.jpg" width="100%" />

The CarePlan Service API Sequence involves the following main steps:

<img src="./careplan-main-sequence.png" width="100%" />

Fig. 1: Main steps of the API sequence

- Create the appropriate FHIR resources from the pre-recorded locally stored data (Condition, Encounter, Consent Questionnaire Response, Consent, and Initial Assessment Questionnaire Response [if created])

- Search for Plan Definition

- Apply Plan Definition to create a Care Plan Resource

- Update the Consent resource to reference the Care Plan

- Update the Care Plan resource to reference the completed Health Check Activity.


