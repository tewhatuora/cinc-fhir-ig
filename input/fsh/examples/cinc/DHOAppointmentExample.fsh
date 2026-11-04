Instance: AppointmentSlot
InstanceOf: Slot
Usage: #inline // #inline means this instance MUST NOT be exported as a separate example
* status = #busy
* start = "2025-09-03T02:30:35Z"
* end = "2025-09-03T03:30:35Z"
* schedule = Reference(ClinicSchedule)

Instance: ClinicSchedule
InstanceOf: Schedule
Usage: #inline // #inline means this instance MUST NOT be exported as a separate example
* identifier[+].value = "SOFRACONDHZ01" // Clinic Sessions Code
* active = true
* actor[+].identifier insert HPIProviderNumber(99ZZZX)
* actor[=].display = "Dr Dotty McStuffins"
// * extension[clinic] = #SOFRACONDHZ "Dunedin Hospital Outpatients Fracture Consultant" // Need to add extension for clinic

Instance: DHOAppointmentClinicExample
InstanceOf: DHOAppointment
Usage: #example
Description: "An example Dunedin Hospital Outpatient Clinic Appointment"

* id = "db4b903a-ee09-4e32-b930-bd4a72cfeaef"
* meta.lastUpdated = "2025-11-11T02:29:24.844Z"
* meta.versionId = "3"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOAppointment"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)

* identifier.system = "https://dho.tewhatuora.govt.nz/ns/sipics/appointment-id"
* identifier.value = "7735001"
* status = #booked
* extension[appointmentMethod].valueCodeableConcept = DHOAppointmentModalityCS#in-person "In person"
* description = "DH Fracture Consultant"
* serviceCategory =	$cs-nc-health-specialty-code#S45 "Orthopaedic Surgery" // need to determine code system
* serviceType = DHOHealthSpecialityCS#S45B "Fracture Clinic"

* patientInstruction = "Bring all medications you are currently taking on your admission to hospital."
// Patient
// + Rule: Either the type or actor on the participant SHALL be specified
* participant[+].required = #required
* participant[=].status  = #needs-action
* participant[=].actor.identifier insert NHIIdentifier(ZXP7823)
* participant[=].actor.display = "Carey Carrington"

// Attending Clinician
* participant[+].type = $v3-ParticipationType#ATND "attender"
* participant[=].required = #required
* participant[=].status  = #accepted
* participant[=].actor.identifier insert HPIProviderNumber(99ZZZX)
* participant[=].actor.display = "Dr Dotty McStuffins"

// Responsible Clinician
* participant[+].type = $v3-ParticipationType#CON "consultant"
* participant[=].required = #required
* participant[=].status  = #accepted
* participant[=].actor.identifier insert HPIProviderNumber(99ZZZX)
* participant[=].actor.display = "Dr Dotty McStuffins"

// Location
* contained[+] = DHOClinicLocation
* participant[+].required = #required
* participant[=].status  = #accepted
* participant[=].actor = Reference(DHOClinicLocation)

* contained[+] = AppointmentSlot
* contained[+] = ClinicSchedule
* slot = Reference(AppointmentSlot)
* start = "2025-09-03T02:30:35Z"
* end = "2025-09-03T03:30:35Z"

Instance: DHOAppointmentUnstructuredExample
InstanceOf: DHOAppointment
Usage: #example
Description: "An example Dunedin Hospital Outpatient Unstructured Appointment"
* id = "3bc197c8-a818-45c1-bc06-c0548c14fd71"
* meta.lastUpdated = "2025-11-11T02:29:24.844Z"
* meta.versionId = "3"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOAppointment"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)

* identifier.system = "https://dho.tewhatuora.govt.nz/ns/sipics/appointment-id"
* identifier.value = "7735002"
* status = #booked
* extension[appointmentMethod].valueCodeableConcept = DHOAppointmentModalityCS#in-person "In person"
* description = "Physiotherapy Appointment"
* serviceCategory =	$cs-nc-health-specialty-code#A01 "Allied Health and other"
* serviceType = DHOHealthSpecialityCS#A01B "Physiotherapy"

// Patient
* participant[+].required = #required
* participant[=].status  = #needs-action
* participant[=].actor.identifier insert NHIIdentifier(ZXP7823)
* participant[=].actor.display = "Carey Carrington"

// Responsible Clinician
* participant[+].type = $v3-ParticipationType#CON "consultant"
* participant[=].required = #required
* participant[=].status  = #accepted
* participant[=].actor.identifier insert HPIProviderNumber(99ZZZX)
* participant[=].actor.display = "Dr Dotty McStuffins"

// Location
* contained[+] = DHOClinicLocation
* participant[+].required = #required
* participant[=].status  = #accepted
* participant[=].actor = Reference(DHOClinicLocation)

* start = "2025-09-03T02:30:35Z"
* end = "2025-09-03T03:30:35Z"

// ------------------------------------------------------------
// Telehealth example
// ------------------------------------------------------------
Instance: DHOAppointmentTelehealthExample
InstanceOf: DHOAppointment
Usage: #example
Description: "An example Dunedin Hospital Outpatient Telehealth Appointment where the clinician is based at New Dunedin Hospital and the patient is present at home."

* id = "862a3d2d-afad-468c-8afe-d61c11ad76c6"
* meta.lastUpdated = "2025-11-11T02:29:24.844Z"
* meta.versionId = "3"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOAppointment"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)

* identifier.system = "https://dho.tewhatuora.govt.nz/ns/sipics/appointment-id"
* identifier.value = "7735003"
* status = #booked
* extension[appointmentMethod].valueCodeableConcept = DHOAppointmentModalityCS#telehealth "Telehealth"
* description = "Telehealth follow-up"
* serviceCategory = $cs-nc-health-specialty-code#S45 "Orthopaedic Surgery"
* serviceType = DHOHealthSpecialityCS#S45B "Fracture Clinic"

* patientInstruction = "Please be available at the scheduled time; ensure your device is charged and you have a stable connection."

// Patient
* participant[+].required = #required
* participant[=].status  = #needs-action
* participant[=].actor.identifier insert NHIIdentifier(ZXP7823)
* participant[=].actor.display = "Carey Carrington"

// Responsible Clinician
* participant[+].type = $v3-ParticipationType#CON "consultant"
* participant[=].required = #required
* participant[=].status  = #accepted
* participant[=].actor.identifier insert HPIProviderNumber(99ZZZX)
* participant[=].actor.display = "Dr Dotty McStuffins"

// Clinician/service site Location - New Dunedin Hospital
* contained[+] = DHOLocationNewDunedinHospitalExample
* participant[+].required = #required
* participant[=].status  = #accepted
* participant[=].actor = Reference(DHOLocationNewDunedinHospitalExample)

// Patient's location - home (where the patient will be for the telehealth call)
* contained[+] = DHOLocationTelehealthHomeExample
* participant[+].required = #required
* participant[=].status  = #accepted
* participant[=].actor = Reference(DHOLocationTelehealthHomeExample)

* start = "2025-09-10T02:30:35Z"
* end = "2025-09-10T03:00:35Z"

// ------------------------------------------------------------
// Telehealth example - clinician at New Dunedin Hospital, patient in custody
// ------------------------------------------------------------
Instance: DHOAppointmentTelehealthPrisonExample
InstanceOf: DHOAppointment
Usage: #example
Description: "An example Dunedin Hospital Outpatient Telehealth Appointment where the clinician is based at New Dunedin Hospital and the patient is present at a Corrections facility."

* id = "ba05c879-f820-4e0d-a05e-69b8097092cb"
* meta.lastUpdated = "2025-11-11T02:29:24.844Z"
* meta.versionId = "3"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOAppointment"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)

* identifier.system = "https://dho.tewhatuora.govt.nz/ns/sipics/appointment-id"
* identifier.value = "7735004"
* status = #booked
* extension[appointmentMethod].valueCodeableConcept = DHOAppointmentModalityCS#telehealth "Telehealth"
* description = "Telehealth follow-up (patient in custody)"
* serviceCategory = $cs-nc-health-specialty-code#S45 "Orthopaedic Surgery"
* serviceType = DHOHealthSpecialityCS#S45B "Fracture Clinic"

* patientInstruction = "Corrections staff will make you available at the scheduled time in a private area with telehealth equipment."

// Patient
* participant[+].required = #required
* participant[=].status  = #needs-action
* participant[=].actor.identifier insert NHIIdentifier(ZXP7823)
* participant[=].actor.display = "Carey Carrington"

// Responsible Clinician
* participant[+].type = $v3-ParticipationType#CON "consultant"
* participant[=].required = #required
* participant[=].status  = #accepted
* participant[=].actor.identifier insert HPIProviderNumber(99ZZZX)
* participant[=].actor.display = "Dr Dotty McStuffins"

// Clinician/service site Location - New Dunedin Hospital
* contained[+] = DHOLocationNewDunedinHospitalExample
* participant[+].required = #required
* participant[=].status  = #accepted
* participant[=].actor = Reference(DHOLocationNewDunedinHospitalExample)

// Patient's location - Corrections facility (where the patient will be for the telehealth call)
* contained[+] = DHOLocationTelehealthPrisonExample
* participant[+].required = #required
* participant[=].status  = #accepted
* participant[=].actor = Reference(DHOLocationTelehealthPrisonExample)

* start = "2025-09-24T02:30:35Z"
* end = "2025-09-24T03:00:35Z"

// ------------------------------------------------------------
// Telehealth example - clinician at New Dunedin Hospital, patient at Dunstan
// ------------------------------------------------------------
Instance: DHOAppointmentTelehealthDunstanExample
InstanceOf: DHOAppointment
Usage: #example
Description: "An example Dunedin Hospital Outpatient Telehealth Appointment where the clinician is based at New Dunedin Hospital and the patient is present at the Dunstan outreach clinic."

* id = "79ec3ae3-d523-4720-ad76-a14c47d0c9d5"
* meta.lastUpdated = "2025-11-11T02:29:24.844Z"
* meta.versionId = "3"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOAppointment"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)

* identifier.system = "https://dho.tewhatuora.govt.nz/ns/sipics/appointment-id"
* identifier.value = "7735005"
* status = #booked
* extension[appointmentMethod].valueCodeableConcept = DHOAppointmentModalityCS#telehealth "Telehealth"
* description = "Telehealth follow-up (patient at Dunstan outreach clinic)"
* serviceCategory = $cs-nc-health-specialty-code#S45 "Orthopaedic Surgery"
* serviceType = DHOHealthSpecialityCS#S45B "Fracture Clinic"

* patientInstruction = "Please attend the Dunstan outreach clinic at the scheduled time; clinic staff will connect you to the specialist by telehealth."

// Patient
* participant[+].required = #required
* participant[=].status  = #needs-action
* participant[=].actor.identifier insert NHIIdentifier(ZXP7823)
* participant[=].actor.display = "Carey Carrington"

// Responsible Clinician
* participant[+].type = $v3-ParticipationType#CON "consultant"
* participant[=].required = #required
* participant[=].status  = #accepted
* participant[=].actor.identifier insert HPIProviderNumber(99ZZZX)
* participant[=].actor.display = "Dr Dotty McStuffins"

// Clinician/service site Location - New Dunedin Hospital
* contained[+] = DHOLocationNewDunedinHospitalExample
* participant[+].required = #required
* participant[=].status  = #accepted
* participant[=].actor = Reference(DHOLocationNewDunedinHospitalExample)

// Patient's location - Dunstan outreach clinic (where the patient will be for the telehealth call)
* contained[+] = DHOLocationDunstanOutreachExample
* participant[+].required = #required
* participant[=].status  = #accepted
* participant[=].actor = Reference(DHOLocationDunstanOutreachExample)

* start = "2025-10-01T02:30:35Z"
* end = "2025-10-01T03:00:35Z"

// ------------------------------------------------------------
// Telephone example
// ------------------------------------------------------------
Instance: DHOAppointmentTelephoneExample
InstanceOf: DHOAppointment
Usage: #example
Description: "An example Dunedin Hospital Outpatient Telephone Appointment"

* id = "b41de1ec-04ca-46e2-8b92-6a2ca927f689"
* meta.lastUpdated = "2025-11-11T02:29:24.844Z"
* meta.versionId = "3"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOAppointment"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)

* identifier.system = "https://dho.tewhatuora.govt.nz/ns/sipics/appointment-id"
* identifier.value = "7735006"
* status = #booked
* extension[appointmentMethod].valueCodeableConcept = DHOAppointmentModalityCS#telephone "Telephone"
* description = "Telephone follow-up"
* serviceCategory = $cs-nc-health-specialty-code#S45 "Orthopaedic Surgery" // need to determine code system
* serviceType = DHOHealthSpecialityCS#S45B "Fracture Clinic"

* patientInstruction = "We will call you at the scheduled time. Please keep your phone nearby and ensure voicemail is enabled."

// Patient
* participant[+].required = #required
* participant[=].status  = #needs-action
* participant[=].actor.identifier insert NHIIdentifier(ZXP7823)
* participant[=].actor.display = "Carey Carrington"

// Responsible Clinician
* participant[+].type = $v3-ParticipationType#CON "consultant"
* participant[=].required = #required
* participant[=].status  = #accepted
* participant[=].actor.identifier insert HPIProviderNumber(99ZZZX)
* participant[=].actor.display = "Dr Dotty McStuffins"

// Owning clinic/site Location (still provided for routing/reporting even though modality is telephone)
* contained[+] = DHOClinicLocation
* participant[+].required = #required
* participant[=].status  = #accepted
* participant[=].actor = Reference(DHOClinicLocation)

* start = "2025-09-17T02:30:35Z"
* end = "2025-09-17T02:50:35Z"
