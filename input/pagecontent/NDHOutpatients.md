
The New Dunedin Hospital digital programme is implementing a number of integrations between various third party products 
used within the outpatient function as defined in the NDH solution architecture.

These include but are not limited to interfaces between the following Group 4 solutions:
* **Cardiobase** – Southern district Cardiology information system
* **Karisma** – Southern district Radiology information system
* **Pinga** - Clinic Room Scheduling by SORSIX; a cloud-based platform that manages clinic room bookings and associates 
clinic sessions with rooms
* **PQMS** - Patient Queue Management System by Five Faces; a cloud-based platform that streamlines patient readiness 
for care, self-check-in, patient engagement and optimizes patient flow. From the pre-arrival process, through to
post-appointment, patients are supported and offered personalized information and updates regarding their appointment.
* **SIPICS** – South Island Patient Administration System (PAS) by McCrae Tech (formerly Orion Health)

The original design developed with NTT used Southern Rhapsody as the main integration method between group 4 systems.

Subsequently, a decision was made and endorsed by the NDH DSDA to adopt a FHIR integration approach using the national 
integration capabilities, MuleSoft, National Event Management Service (NEMS) and AWS FHIR Works.

However, it was determined that some systems only supported a single outbound path and that in order to support legacy 
requirements, it would be necessary to continue to use some legacy Rhapsody routes until such time as those systems 
could be fully migrated to FHIR RESTful interfaces (which were beyond the scope of this work).

Where possible, a standards-based collection of FHIR APIs are implemented to expose Patient, Appointment, and associated
FHIR resources from the relevant systems.

A limited set of update APIs enable Patient and Appointment updates to the source systems and vendors will enhance the 
capabilities of their systems to consume these.

Patient Queue Management System (PQMS)

[1. Get Patient ](#get-patient) <br/>
[2. Update Patient ](#update-patient) <br/>
[3. Get Appointment ](#get-appointment) <br/>
[4. Update Appointment ](#update-appointment) <br />


### Get Patient
The following shows the expected interactions for getting patient data for PQMS.
<figure>
  <!-- Generated from `input/images-source/pqms-get-patient.plantuml` -->
  {% include pqms-get-patient.svg %}
</figure>
<br clear="all">

### Update Patient
The following shows the expected interactions for updating patient data from PQMS.
<figure>
  <!-- Generated from `input/images-source/pqms-update-patient.plantuml` -->
  {% include pqms-update-patient.svg %}
</figure>
<br clear="all">

### Get Appointment
The following shows the expected interactions for getting appointment data for PQMS.
<figure>
  <!-- Generated from `input/images-source/pqms-get-appointment.plantuml` -->
  {% include pqms-get-appointment.svg %}
</figure>
<br clear="all">

### Update Appointment
The following shows the expected interactions for updating appointment data from PQMS.
<figure>
  <!-- Generated from `input/images-source/pqms-update-appointment.plantuml` -->
  {% include pqms-update-appointment.svg %}
</figure>
<br clear="all">
