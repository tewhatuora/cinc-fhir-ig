Instance: SecondaryProphylaxisAppointment-August-Booked
InstanceOf: Appointment
Description: "Example of a booked patient appointment for rheumatic fever secondary prophylaxis treatment (injection)"
Usage: #example

* meta.profile = Canonical(Appointment)
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-06T08:00:00Z"

* description = "monthly injection August 2023"

* start = "2023-08-08T02:00:00Z"    // UTC equivalent of a start time at 2pm NZ Standard Time on August 8th 2023
* end = "2023-08-08T03:00:00Z"      //  UTC equivalent of a finish time of 3pm NZ Standard Time on August 8th 2023

* status = #booked

* participant[0].actor insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* participant[=].status = #accepted
* participant[+].actor insert ReferencePractitioner(99ZAAA,[[Isabel Injecta]])
* participant[=].status = #accepted
