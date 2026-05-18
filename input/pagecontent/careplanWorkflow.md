# CarePlan Workflow

This page describes the workflow for creating and managing CarePlans with questionnaire responses and communication tracking.

## Sequence Diagram

The following diagram shows the complete workflow from CarePlan creation through patient response:

{% include careplan-workflow.svg %}

## Key Components

### CarePlan Profile
The [NdhCarePlan](StructureDefinition-ndh-careplan.html) profile supports:
- Patient reference with NHI
- Encounter/referral references
- Communication tracking
- Questionnaire management with magic links
- Processing status flags

### Workflow Steps

1. **CarePlan Creation**: Client creates a CarePlan with patient and questionnaire details
2. **Magic Link Generation**: System generates a secure link for patient access
3. **Communication Request**: CommunicationRequest is created and linked to the CarePlan
4. **Patient Notification**: CMS sends notification to patient with magic link
5. **Patient Response**: Patient completes questionnaire via magic link
6. **Data Retrieval**: Client retrieves updated CarePlan with all references

### Integration Points

- **FHIR API**: Core resource management
- **MagicLink Service**: Secure patient access to questionnaires
- **CMS**: Communication and notification management
- **Client Applications**: Care coordination and monitoring