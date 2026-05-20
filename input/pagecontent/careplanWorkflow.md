This page describes the workflow for managing pre-appointment questionnaires using CarePlans and SDC Tasks.

## Sequence Diagram

The following diagram shows the complete workflow from CarePlan creation through patient response and clinician review:

{% include outpatient-comms-workflow.svg %}

## Key Components

### CarePlan Profile
The [OutpatientCommunicationCarePlan](StructureDefinition-OutpatientCommunicationCarePlan.html) profile tracks:
- Patient reference with NHI
- Communication activities (CommunicationRequest and Communication)
- Activity status and performer information for clinician workflow
- Status reasons (pending-review, clinician-reviewed, action-taken)
- Questionnaire references via activity.detail.instantiatesCanonical

### Task Profile
The [OutpatientCommunicationTask](StructureDefinition-OutpatientCommunicationTask.html) profile implements SDC Form Solicitation Workflow:
- Patient who should complete the questionnaire (for)
- Reference to CarePlan (basedOn)
- Questionnaire input (canonical URL)
- QuestionnaireResponse output (completion tracking)

## Workflow Steps

1. **CarePlan Creation**: Client creates a CarePlan to track clinical activities and communication

2. **Task Creation**: Client creates an SDC Task with:
   - Reference to CarePlan (via basedOn)
   - Questionnaire to be completed (via input)

3. **Magic Link Generation**: System generates a secure link containing the Task ID

4. **CommunicationRequest & Communication**: 
   - Client creates CommunicationRequest linked to CarePlan
   - CMS creates Communication resource with Magic Link embedded
   - Communication sent to patient via SMS/Email

5. **Patient Response**: 
   - Patient follows Magic Link
   - Completes Questionnaire
   - QuestionnaireResponse posted and linked to Task

6. **Clinician Review**:
   - Client retrieves CarePlan with activity references
   - Updates activity status (pending-review → clinician-reviewed → action-taken)
   - Records performer (clinician who reviewed)

7. **Data Retrieval**:
   - Client retrieves Task with Questionnaire and QuestionnaireResponse
   - Uses `_include` parameters to fetch related resources efficiently

## Data Retrieval

### Retrieve CarePlan with Linked Resources

To retrieve a CarePlan for a specific patient (by NHI) along with linked CommunicationRequest and Communication resources:

```
GET /CarePlan?subject:Patient.identifier=https://standards.digital.health.nz/ns/nhi-id|[NHI]
  &_profile=https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/OutpatientCommunicationCarePlan
  &_include=CarePlan:activity:reference
  &_include=CarePlan:activity:outcomeReference
```

### Retrieve Task with Questionnaire and QuestionnaireResponse

To retrieve a Task along with its Questionnaire and QuestionnaireResponse:

**Option 1: By Patient NHI**

```
GET /Task?for:Patient.identifier=https://standards.digital.health.nz/ns/nhi-id|[NHI]
  &_profile=https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/OutpatientCommunicationTask
  &_include=Task:input:valueCanonical
  &_include=Task:output:valueReference
```

**Option 2: By CarePlan ID**

```
GET /Task?based-on=CarePlan/[CAREPLAN-ID]
  &_profile=https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/OutpatientCommunicationTask
  &_include=Task:input:valueCanonical
  &_include=Task:output:valueReference
```

## Integration Points

- **FHIR API**: Core resource management
- **MagicLink Service**: Secure patient access to questionnaires
- **CMS**: Communication creation and notification delivery. See [Common Messaging System](commonMessagingSystem.html) for details on CommunicationRequest and Communication resources.
- **Client Applications**: Care coordination and clinician workflow
