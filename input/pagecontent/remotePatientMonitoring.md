### Remote Patient Monitoring

The Remote Patient Monitoring initiative is an initiative the seeks to deliver care to patients in Remote parts of the country, leveraging a Patient facing App and  Consumer Technology to record patient wellbeing, with a clinician being able to monitor and provide advice to these patients from afar using the Provider View.

### Remote Patient Monitoring in FHIR 

### Data Structure

### Patient Onboarding

The Remote Patient Monitoring Flows and Experience for any given Patient are centered around their CarePlan. At the time of a Patients commencement in the RPM programme this CarePlan along with a series of related resources are created.

<figure>
  <!-- Generated from `input/images-source/patientOnboarding-flow.plantuml` -->
  {% include rpm-patientOnboarding-flow.svg %}
</figure>
<br clear="all">

### Data Gathering

Throughout the period of care, Questionnaires are used to gather clinical insights into the Patients wellbeing and experience, along with feedback surrounding the quality of experience surrounding the Piki Te Ora App.

Observations are generated via a Series of Smart Devices, that interact with the Piki App, that are then posted to the Shared Care API.

<figure>
  <!-- Generated from `input/images-source/rpm-dataGathering-flow.plantuml` -->
  {% include rpm-dataGathering-flow.svg %} 
</figure>
<br clear="all">

### Educational Content

Patient on certain CarePlans may be assigned educational content to engage with: a series of short modules. A task attached to the CarePlan prescribes this education. Upon a modules completion within the app, a Provenance resource is created and attached to the Task as a relevantHistory.reference.

<figure>
  <!-- Generated from `input/images-source/rpm-education-flow.plantuml` -->
  {% include rpm-education-flow.svg %}
</figure>
<br clear="all">




 



