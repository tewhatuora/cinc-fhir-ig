# About Observation resources
Care in the Community can involve monitoring a patient's vital signs and this is done with the help
of FHIR Observation resources.

**Patient remote capture**
Observation data may be captured by the patient themselves, and submitted to HNZ directly through a patient experience.  In such cases, the FHIR Observation resources will be created by the MyHealthRecord app.

**Clinician capture**
Observation resources may be created from data gathered from patients by clinicians (such as HNZ staff, COVID case managers, etc.)  In these cases FHIR Observation resources are created from data entered into the CCCM app.

## API Sequence
The sequence below illustrates an interaction with the FHIR API creating an Observation resource containing a series of measurements.

<img src="./ManaakiNgaTahiMeasurementsExample.png" width="1200" />

## FHIR Observation linkage to other resources
Observation resources link to CarePlans through ServiceRequests.  As used here, the ServiceRequest 
resources exist principally to make connections between FHIR resources, rather than to record requests for participants to perform a service for a care plan.

That said, when a ServiceRequest comes into existence with a __code__ of 122869004 (SNOMED) and a link to a CarePlan, viewers of the system can interpret this as a request for Observation data to be collected.  

Each Observation resource must link back to its CarePlan through its basedOn relation which references a ServiceRequest.  The ServiceRequest in turn has a basedOn relation to the CarePlan resource.

The next diagram shows this linkage from Observation resources along with SNOMED coding and the performer relation.

<img src="./FHIR-resources-model-cinc-observation.png" width="1200" />

## Observation period dates

For Observation.issued and Observation.effective[x] time periods, the client application must supply UTC dateTime values and not local (eg. New Zealand time zone values).

The client application is responsible for converting UTC dateTimes to the timezone of the user and formatting the date and time display according to the user's locale preference.