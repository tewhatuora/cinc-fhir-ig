Instance: SecondaryProphylaxisAppointment-Encounter
InstanceOf: ManaakiNgaTahiEncounter
Usage: #example
Description: "Example of a rheumatic fever patient/lead provider encounter for delivery of secondary prophylaxis meds"

* meta.profile = Canonical(ManaakiNgaTahiEncounter)
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-06T08:00:00Z"

* status = #finished

* appointment = Reference(SecondaryProphylaxisAppointment-August-Fulfilled)

* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"

* subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])

* participant[0].individual insert ReferencePractitioner(99ZAAA,[[Isabel Injecta]])
* participant[1].individual insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])

* period.start = "2023-08-08T02:10:00Z"    // UTC datetime
* period.end = "2023-08-08T03:15:00Z"    // UTC datetime

* location.location.type = "Location"
* location.location.identifier.use = #official
* location.location.identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* location.location.identifier.value = "F3S457-C"
* location.location.display = "PHNs Whangarei"

* serviceProvider insert ReferenceOrganisation(GOM086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])

