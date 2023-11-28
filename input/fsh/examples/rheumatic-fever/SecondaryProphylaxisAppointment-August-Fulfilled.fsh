Instance: SecondaryProphylaxisAppointment-August-Fulfilled
InstanceOf: Appointment
Description: "Example of a fulfilled (completed) patient appointment for rheumatic fever secondary prophylaxis treatment (injection)"
Usage: #example

* meta.profile = Canonical(Appointment)
* meta.versionId = "2"
* meta.lastUpdated = "2023-11-09T05:00:00Z"

* description = "monthly injection August 2023"

* identifier[0] insert SalesforceCarePlanActivityIdentifier([[CPA-00073693-20230808]])     // corresponding salesforce record

* start = "2023-08-08T02:00:00Z"    // UTC equivalent of a start time at 2pm NZ Standard Time on August 8th 2023
* end = "2023-08-08T03:00:00Z"      //  UTC equivalent of a finish time of 3pm NZ Standard Time on August 8th 2023

* status = #fulfilled

* participant[0].actor insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* participant[=].status = #accepted
* participant[+].actor insert ReferencePractitioner(99ZAAA,[[Isabel Injecta]])
* participant[=].status = #accepted

* supportingInformation[0] insert ReferenceOrganisation(GOM086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])
* supportingInformation[+] = Reference(Encounter-SecondaryProphylaxisAppointment)
* comment = "The plan for this appointment is..."
