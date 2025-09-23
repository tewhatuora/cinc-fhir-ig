### Remote Patient Monitoring

The Remote Patient Monitoring initiative is an initiative the seeks to deliver care to patients in Remote parts of the country, leveraging a Patient facing App and  Consumer Technology to record patient wellbeing, with a clinician being able to monitor and provide advice to these patients from afar using the Provider View.

### Remote Patient Monitoring in FHIR 

### Data Structure

<figure>
  <!-- Generated from `input/images-source/rpm-resources.plantuml` -->
  {% include rpm-resources.svg %}
</figure>
<br clear="all">


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

Via the use of the $flat-export function, observations of a given nature can be requested in a flat format, suitable for graphing and aggregations.

<figure>
  <!-- Generated from `input/images-source/rpm-dataGathering-flow.plantuml` -->
  {% include rpm-dataGathering-flow.svg %} 
</figure>
<br clear="all">

### Educational Content

Patients on certain CarePlans may be assigned educational content to engage with. 

If a patient is assigned educational content, a series of tasks representing the syllabus, the units that make up the syllabus and the modules that make of the unit are added to the CarePlan as activities.

<figure>
  <!-- Generated from `input/images-source/rpm-education-flow-tasks.plantuml` -->
  {% include rpm-education-flow-tasks.svg %}
</figure>
<br clear="all">

When a patient completes a given module, unit or syllabus, the status of the task is updated to reflect this.

<figure>
  <!-- Generated from `input/images-source/rpm-task-relations.plantuml` -->
  {% include rpm-task-relations.svg %}
</figure>
<br clear="all">




 



