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
* identifier[0].value = "SOFRACONDHZ01" // Clinic Sessions Code
* active = true
* actor[0].identifier insert HPIPractitionerIdentifier(99ZZZX)
* actor[0].display = "Dr Dotty McStuffins"
// * extension[clinc] = #SOFRACONDHZ "NDH Fracture Consultant" // Need to add extension for clinic

Instance: ClinicLocation
InstanceOf: NzLocation
Usage: #inline // #inline means this instance MUST NOT be exported as a separate example
* identifier.value = "4211-K01" // Location code, need to determine structure
* name = "Dunedin Hospital Ouptatients, Clinc K01"
* partOf.type = "Location"
* partOf.identifier.value = "4211"
* partOf.identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* partOf.display = "Dunedin Hospital"

Instance: NDHOutpatientClinicAppointmentExample
InstanceOf: NDHOutpatientAppointment
Usage: #example
Description: "An example New Dunedin Hospital Outpatient Clinic Appointment"
* identifier.value = "#fbdb8d66-1390-22c7-89a6-a9a75d65d3e6"
* status = #booked
* description = "NDH Fracture Consultant"
* serviceCategory =	$vs-nc-health-specialty-codes#S45 "Orthopaedic Surgery" // need to determine code system
* serviceType = #S45B "Fracture Clinic" // need to determine code system
* patientInstruction = "Bring all medications you are currently taking on your admission to hospital."
// Patient
* participant[0].required = #required
* participant[0].status  = #needs-action
* participant[0].actor.display = "Carey Carrington"
* participant[0].actor.identifier.use = #official
* participant[0].actor.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* participant[0].actor.identifier.value = "ZXP7823"
// Attending Clinician
* participant[1].type = $v3-ParticipationType#ATND "attender"
* participant[1].required = #required
* participant[1].status  = #accepted
* participant[1].actor.identifier insert HPIPractitionerIdentifier(99ZZZX)
* participant[1].actor.display = "Dr Dotty McStuffins"
// Responsible Clinician
* participant[2].type = $v3-ParticipationType#CON "consultant"
* participant[2].required = #required
* participant[2].status  = #accepted
* participant[2].actor.identifier insert HPIPractitionerIdentifier(99ZZZX)
* participant[2].actor.display = "Dr Dotty McStuffins"
// Location
* contained[0] = ClinicLocation
* participant[3].type = #required
* participant[3].required = #required
* participant[3].status  = #accepted
* participant[3].actor = Reference(ClinicLocation)

* contained[1] = AppointmentSlot
* contained[2] = ClinicSchedule
* slot = Reference(AppointmentSlot)
* start = "2025-09-03T02:30:35Z"
* end = "2025-09-03T03:30:35Z"


Instance: NDHOutpatientUnstructuredAppointmentExample
InstanceOf: NDHOutpatientAppointment
Usage: #example
Description: "An example New Dunedin Hospital Outpatient Unstructured Appointment"
* identifier.value = "#fbdb8d66-1390-22c7-89a6-a9a75d65d3e6"
* status = #booked
* description = "Physoiotherapy Appointment"
* serviceCategory =	$vs-nc-health-specialty-codes#A01 "Allied Health and other" // need to determine code system
* serviceType = #A01B "Physiotherapy" // need to determine code system

// Patient
* participant[0].required = #required
* participant[0].status  = #needs-action
* participant[0].actor.display = "Carey Carrington"
* participant[0].actor.identifier.use = #official
* participant[0].actor.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* participant[0].actor.identifier.value = "ZXP7823"

// Responsible Clinician
* participant[1].type = $v3-ParticipationType#CON "consultant"
* participant[1].required = #required
* participant[1].status  = #accepted
* participant[1].actor.identifier insert HPIPractitionerIdentifier(99ZZZX)
* participant[1].actor.display = "Dr Dotty McStuffins"

// Location
* contained[0] = ClinicLocation
* participant[2].type = #required
* participant[2].required = #required
* participant[2].status  = #accepted
* participant[2].actor = Reference(ClinicLocation)

* start = "2025-09-03T02:30:35Z"
* end = "2025-09-03T03:30:35Z"