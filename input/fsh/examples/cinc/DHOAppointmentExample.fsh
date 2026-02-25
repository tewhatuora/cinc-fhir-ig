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

* meta.lastUpdated = "2025-11-11T02:29:24.844Z"
* meta.versionId = "3"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOAppointment"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)

* identifier.value = "#fbdb8d66-1390-22c7-89a6-a9a75d65d3e6"
* status = #booked
* extension[appointmentMethod].valueCodeableConcept = DHOAppointmentModalityCS#in-person "In person"
* description = "DH Fracture Consultant"
* serviceCategory =	$cs-nc-health-specialty-code#S45 "Orthopaedic Surgery" // need to determine code system
* serviceType = #S45B "Fracture Clinic" // need to determine code system - Snomed equivalent is $sct#702858002

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
* meta.lastUpdated = "2025-11-11T02:29:24.844Z"
* meta.versionId = "3"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOAppointment"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)

* identifier.value = "#fbdb8d66-1390-22c7-89a6-a9a75d65d3e6"
* status = #booked
* extension[appointmentMethod].valueCodeableConcept = DHOAppointmentModalityCS#in-person "In person"
* description = "Physiotherapy Appointment"
* serviceCategory =	$cs-nc-health-specialty-code#A01 "Allied Health and other"
* serviceType = #A01B "Physiotherapy" // need to determine code system

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
Description: "An example Dunedin Hospital Outpatient Telehealth Appointment"

* meta.lastUpdated = "2025-11-11T02:29:24.844Z"
* meta.versionId = "3"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOAppointment"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)

* identifier.value = "#aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"
* status = #booked
* extension[appointmentMethod].valueCodeableConcept = DHOAppointmentModalityCS#telehealth "Telehealth"
* description = "Telehealth follow-up"
* serviceCategory = $cs-nc-health-specialty-code#S45 "Orthopaedic Surgery" // need to determine code system
* serviceType = #S45B "Fracture Clinic" // need to determine code system

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

// Owning clinic/site Location (still provided for routing/reporting even though modality is telehealth)
* contained[+] = DHOClinicLocation
* participant[+].required = #required
* participant[=].status  = #accepted
* participant[=].actor = Reference(DHOClinicLocation)

* start = "2025-09-10T02:30:35Z"
* end = "2025-09-10T03:00:35Z"

// ------------------------------------------------------------
// Telephone example
// ------------------------------------------------------------
Instance: DHOAppointmentTelephoneExample
InstanceOf: DHOAppointment
Usage: #example
Description: "An example Dunedin Hospital Outpatient Telephone Appointment"

* meta.lastUpdated = "2025-11-11T02:29:24.844Z"
* meta.versionId = "3"
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOAppointment"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F04066-D"
* insert CorrelationIdTag(xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)

* identifier.value = "#bbbbbbbb-cccc-dddd-eeee-ffffffffffff"
* status = #booked
* extension[appointmentMethod].valueCodeableConcept = DHOAppointmentModalityCS#telephone "Telephone"
* description = "Telephone follow-up"
* serviceCategory = $cs-nc-health-specialty-code#S45 "Orthopaedic Surgery" // need to determine code system
* serviceType = #S45B "Fracture Clinic" // need to determine code system

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
