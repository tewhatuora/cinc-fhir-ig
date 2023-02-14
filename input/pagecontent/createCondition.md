# Definitions

Condition - Description of the condition / diagnosis etc. specific to the CarePlan.

FHIR - Fast Healthcare Interoperability Resource (FHIR) is a data standard which aims to build a base set of resources that, either by themselves or when combined, satisfy the majority of common use cases.

FHIR resources - these resources aim to define the information contents and structure for the core information set that is shared by most implementation.

# Context

The Condition resource will be recorded/created at different steps of the “Create CarePlan” flow.

The points at which the Condition resource could be recorded / created (posted) are highlighted below:

## Condition dateTime values

The HNZ FHIR server standardises on UTC for all dateTime values under management.

If the client application seeks to create a Condition resource with values for Condition.onset[x] or Condition.abatement[x] these must be UTC dateTime values.

The client application is responsible for converting UTC dateTimes to the timezone of the user and formatting the date and time display according to the user's locale preference.