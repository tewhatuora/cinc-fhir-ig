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

Instance: DHOClinicAppointmentExample
InstanceOf: DHOAppointment
Usage: #example
Description: "An example Dunedin Hospital Outpatient Clinic Appointment"

* meta.lastUpdated = "2025-11-11T02:29:24.844Z"
* meta.versionId = "2"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F12345"
* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOAppointment"

* identifier.value = "#fbdb8d66-1390-22c7-89a6-a9a75d65d3e6"
* status = #booked
* description = "DH Fracture Consultant"
* serviceCategory =	$cs-nc-health-specialty-code#S45 "Orthopaedic Surgery" // need to determine code system
* serviceType = #S45B "Fracture Clinic" // need to determine code system - Snomed equivalent is $sct#702858002

* patientInstruction = "Bring all medications you are currently taking on your admission to hospital."
// Patient
// + Rule: Either the type or actor on the participant SHALL be specified
* participant[+].required = #required
* participant[=].status  = #needs-action
* participant[=].actor = Reference(CareyCarrington) "Carey Carrington"

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


Instance: DHOUnstructuredAppointmentExample
InstanceOf: DHOAppointment
Usage: #example
Description: "An example Dunedin Hospital Outpatient Unstructured Appointment"

* meta.lastUpdated = "2025-11-11T02:29:24.844Z"
* meta.versionId = "2"
* meta.source = "https://standards.digital.health.nz/ns/hpi-facility-id/F12345"
* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id"
* meta.tag[correlationId].code = #xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
* meta.profile = "https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOAppointment"

* identifier.value = "#fbdb8d66-1390-22c7-89a6-a9a75d65d3e6"
* status = #booked
* description = "Physiotherapy Appointment"
* serviceCategory =	$cs-nc-health-specialty-code#A01 "Allied Health and other"
* serviceType = #A01B "Physiotherapy" // need to determine code system

// Patient
* participant[+].required = #required
* participant[=].status  = #needs-action
* participant[=].actor.display = "Carey Carrington"
* participant[=].actor.identifier.use = #official
* participant[=].actor.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* participant[=].actor.identifier.value = "ZXP7823"

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
