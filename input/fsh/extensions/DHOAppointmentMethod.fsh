Extension: DHOAppointmentMethod
Id: DHOAppointmentMethod
Title: "DHO Appointment method"
Context: Appointment
Description: "How the appointment is delivered (in-person, telephone, telehealth, home-visit). This is not the clinical reason for the appointment."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from DHOAppointmentModalityVS (required)
* valueCodeableConcept.coding 1..1
* valueCodeableConcept.coding.system 1..1
* valueCodeableConcept.coding.code 1..1
* valueCodeableConcept.text 0..0

Instance: DHOAppointmentAppointmentMethod
InstanceOf: SearchParameter
Usage: #definition
Title: "Search by appointment method"
Description: "Search Appointments by the appointment delivery method conveyed in Appointment.extension:appointmentMethod (DHOAppointmentMethod)."
* status = #active
* experimental = false
* base[0] = #Appointment
* name = "appointment-method"
* code = #appointment-method
* type = #token
* expression = "Appointment.extension.where(url='https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/DHOAppointmentMethod').value.as(CodeableConcept)"
* xpathUsage = #normal
