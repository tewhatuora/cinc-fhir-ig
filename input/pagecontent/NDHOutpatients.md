The Outpatients Appointments API exposes Hospital Outpatient appointments as FHIR Appointments and other related
resources. The API provides a single view of outpatient appointments from multiple appointment scheduling systems used 
within Health NZ.

This allows an appointment management solution to display appointment information and as functionality to manage the 
workflow of appointments, including confirming, arriving and departing a patient from their appointment.

Currently, the APIs support integration with the following Hospital Outpatients systems:
* **SIPICS** – Te Waipounamu regional Patient Administration System (PAS), including clinic-based appointments as well 
as other ad hoc and day surgery appointments.
* **Cardiobase** – Southern district Cardiology information system for Cardiology procedure appointments.
* **Karisma** – Southern district Radiology information system for Radiology procedure appointments.

Some functionality of the API is currently limited based on the underlying appointment booking system:
* Southern Radiology appointments only support retrieval. Updates (confirm, arrive, depart) are not currently supported.

Additionally, a Patient resource is exposed to provide Patient demographic information held within the Hospital Patient
Administration System (PAS). This provides the ability to update a limited set of patient demographics held in the PAS
(contact details).

## Use Cases
[1. Appointment Created or Updated ](#appointment-created-or-updated) <br/>
[2. Confirm Appointment ](#confirm-appointment) <br/>
[3. Arrive Appointment ](#arrive-appointment) <br/>
[4. Depart Appointment ](#depart-appointment) <br />
[5. Retrieve or Update Te Waipounamu Patient Demographics ](#retrieve-or-update-te-waipounamu-patient-demographics) <br />

### 1. Appointment Created Or Updated
An event notification will be sent to subscribers for any new or updated appointments, the details can then be retrieved
from the Appointment API.

<figure>
  <!-- Generated from `input/images-source/ndh-appointment-create.plantuml` -->
  {% include ndh-appointment-create.svg %}
</figure>

### 2. Confirm Appointment
Update the Appointment Scheduling System to indicate the patient has confirmed they can attend the appointment.

Key information:

| Element                               | Expected update/information |
|---------------------------------------|-----------------------------|
| AppointmentResponse.identifier        | Appointment.Identifier      |
| AppointmentResponse.participantStatus | 'active'                    |
| AppointmentResponse.actor.identifier  | patient's NHI               |

<figure>
  <!-- Generated from `input/images-source/ndh-appointment-confirm.plantuml` -->
  {% include ndh-appointment-confirm.svg %}
</figure>

### 3. Arrive Appointment
Update the Appointment Scheduling System to indicate the patient has arrived for their appointment.

Key information:

| Element                          | Expected update/information |
|----------------------------------|-----------------------------|
| Encounter.appointment.identifier | Appointment.Identifier      |
| Encounter.subject.identifier     | patient's NHI               |
| Encounter.status                 | 'arrived'                   |
| Encounter.period.start           | arrival time                |
<figure>
  <!-- Generated from `input/images-source/ndh-appointment-arrive.plantuml` -->
  {% include ndh-appointment-arrive.svg %}
</figure>

### 4. Depart Appointment
Update the Appointment Scheduling System to indicate the patient has departed from their appointment.

Key information:

| Element                          | Expected update/information |
|----------------------------------|-----------------------------|
| Encounter.appointment.identifier | Appointment.Identifier      |
| Encounter.subject.identifier     | patient's NHI               |
| Encounter.status                 | 'finished'                  |
| Encounter.period.start           | arrival time                |
| Encounter.period.end             | departure time              |
<figure>
  <!-- Generated from `input/images-source/ndh-appointment-depart.plantuml` -->
  {% include ndh-appointment-depart.svg %}
</figure>

### 5. Retrieve Or Update Te Waipounamu Patient Demographics
Retrieve Patient Demographics from a Patient in the Te Waipounamu regional Patient Administration System.

Update contact details (phone/email) for the patient.


_Note: Email address will not be automatically available after an update as a verification process with the patient must
occur first. Once validated, the email will appear in the Patient resource._

Key information (for update):

| Element               | Expected update/information |
|-----------------------|-----------------------------|
| Patient.identifier    | patient's NHI               |
| Patient.status        | 'finished'                  |
| Patent.telecom.system | 'phone'                     |
| Patent.telecom.use    | 'home'                      |
| Patent.telecom.value  | patient's phone number      |
| Patent.telecom.system | 'email'                     |
| Patent.telecom.use    | 'home'                      |
| Patent.telecom.value  | patient's email address     |
<figure>
  <!-- Generated from `input/images-source/ndh-patient.plantuml` -->
  {% include ndh-patient.svg %}
</figure>
