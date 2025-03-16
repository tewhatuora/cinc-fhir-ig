
Outreach is a concept used to help support consumers into health programmes, usually preventative programmes such as immunisation and screening, and is engaged by the health programme when an individual is overdue or needs extra support to complete a health event.

The intention of this initiative is to create a centralised outreach communication FHIR API that disparate systems can connect to and use to mannage the placing of requests for outreach, the tracking and management of those outreach activities as tasks by outreach providers, and to allow a shared view of task progress across different systems and organisations. 

The FHIR server will be  used to store outreach referrals, related communications, and tasks that allow parties to track the status of the activities. 

### Outreach referrals in FHIR 

In FHIR an outreach request from a health service will be represented by the [ServiceRequest](./StructureDefinition-OutreachServiceRequest.html) resource. In FHIR workflow patterns, the health service here is often talked about as taking the role of the 'placer' - the party that requests the service. The party that performs the outreach will take on the role of the 'filler'. The [Task](./StructureDefinition-OutreachTask.html) resource will be used by the filler to track the state of the outreach activities.  

The placer will initiate the outreach referral by creating a ServiceRequest on the FHIR server and then the outreach system (such as Whaihua, an outreach Patient Management System etc) will act as the filler to perform the actions required to close the outreach referral. The National Event Management Service (NEMS) will be used to route notifications about ServiceRequests and Tasks between parties. When a new ServiceRequest is created by a placer, fillers will be notified. When fillers update the ServiceRequest to indicate it has been completed, the placer will be notified. 

### Outreach referral workflow use cases

<figure>
  <!-- Generated from `input/images-source/outreach-usecase-overview.plantuml` -->
  {% include outreach-usecase-overview.svg %}
</figure>
<br clear="all">

### Use cases and expected interactions

[1. Create outreach referral](./outreachUseCases.html) <br />
[2. Accept an outreach referral](./outreachUseCases.html) <br />
[3. Create and manage Tasks to track outreach activities](./outreachUseCases.html) <br />
[4. Create and store Communications against ServiceRequests](./outreachUseCases.html) <br />
[5. Revoke/cancel an outreach referral](./outreachUseCases.html) <br />
[6. Complete and close ServiceRequests](./outreachUseCases.html) <br />
[7. Find existing outreach information for a patient](./outreachUseCases.html) <br />
