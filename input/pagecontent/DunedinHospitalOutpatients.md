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

### Appointment Created Or Updated
An event notification will be sent to subscribers for any new or updated appointments, the details can then be retrieved
from the Appointment API.

<figure>
  <!-- Generated from `input/images-source/dho-appointment-create.plantuml` -->
  {% include dho-appointment-create.svg %}
</figure>

### Confirm Appointment
Update the Appointment Scheduling System to indicate the __*Patient*__ has confirmed they can attend the appointment.

Key information:

| Element                               | Expected update/information |
|---------------------------------------|-----------------------------|
| AppointmentResponse.appointment       | Appointment.Identifier      |
| AppointmentResponse.participantStatus | 'accepted'                  |

##### POST AppointmentResponse body
```json
{
  "resourceType": "AppointmentResponse",
  "meta": {
    "lastUpdated": "2025-11-11T02:29:24.844Z",
    "versionId" : "2",
    "source": "https://standards.digital.health.nz/ns/hpi-facility-id/F12345",
    "tag": [
      {
        "system": "https://hub.services.digital.health.nz/ns/correlation-id",
        "code": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
      }
    ],
    "profile": [
      "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOAppointmentResponse"
    ]
  },
  "appointment": {
    "reference": {
        "identifier" : {
            "system": "urn:orion:pas:appointment:patient-appointment:code",
            "value" : "77350"
        }
    }
  },
  "participantStatus": "accepted"
}
```

<figure>
  <!-- Generated from `input/images-source/dho-appointment-confirm.plantuml` -->
  {% include dho-appointment-confirm.svg %}
</figure>

### Arrive Appointment
Update the Appointment Scheduling System to indicate the patient has arrived for their appointment.

Key information:

| Element               | Expected update/information                                             |
|-----------------------|-------------------------------------------------------------------------|
| Encounter.appointment | Appointment.Identifier                                                  |
| Encounter.subject     | Patient.Identifier                                                      |
| Encounter.status      | 'arrived'                                                               |
| Encounter.class       | https://terminology.hl7.org/3.1.0/ValueSet-v3-ActEncounterCode.html AMB |

##### POST Encounter body
```json
{
  "resourceType" : "Encounter",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2025-09-04T09:00:00.000Z",
    "source" : "https://standards.digital.health.nz/ns/hpi-facility-id/F12345",
    "profile" : ["https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOEncounterCreate",
    "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOEncounter"],
    "tag" : [{
      "system" : "https://hub.services.digital.health.nz/ns/correlation-id",
      "code" : "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
    }]
  },
  "appointment": {
    "identifier": [
      {
        "system": "urn:orion:pas:appointment:patient-appointment:code",
        "value": "7330769"
      }
    ]
  },
  "subject": {
    "reference": "Patient/CareyCarrington",
    "display": "Carey Carrington"
  },
  "status": "arrived",
  "class": {
    "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code": "AMB",
    "display": "ambulatory"
  }
}
```

<figure>
  <!-- Generated from `input/images-source/dho-appointment-arrive.plantuml` -->
  {% include dho-appointment-arrive.svg %}
</figure>

### Depart Appointment
Update the Appointment Scheduling System to indicate the patient has departed from their appointment.

Key information:

| Element                          | Expected update/information |
|----------------------------------|-----------------------------|
| Encounter.appointment.identifier | Appointment.Identifier      |
| Encounter.subject                | Patient.Identifier          |
| Encounter.status                 | 'finished'                  |
| Encounter.period.start           | arrival time                |
| Encounter.period.end             | departure time              |

##### PUT Encounter body

```json

{
  "resourceType": "Encounter",
  "meta": {
    "versionId": "1",
    "lastUpdated": "2025-12-08T02:50:58.870Z",
    "source": "https://standards.digital.health.nz/ns/hpi-facility-id/F12345",
    "profile": [
      "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOutpatientEncounter"
    ],
    "tag": [
      {
        "system": "https://hub.services.digital.health.nz/ns/correlation-id",
        "code": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
      }
    ]
  },
  "subject": {
    "reference": "Patient/CareyCarrington",
    "display": "Carey Carrington"
  },
  "status": "finished",
  "class": {
    "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code": "AMB",
    "display": "Ambulatory"
  }
}
```
<figure>
  <!-- Generated from `input/images-source/dho-appointment-depart.plantuml` -->
  {% include dho-appointment-depart.svg %}
</figure>

### Retrieve Or Update Te Waipounamu Patient Demographics
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
  <!-- Generated from `input/images-source/dho-patient.plantuml` -->
  {% include dho-patient.svg %}
</figure>
