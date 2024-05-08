Instance: JonesCriteriaObservationExample
InstanceOf: Observation
Description: "Illustrates a FHIR Observation describing a Jones (twelve) criteria diagnosis for a rheumatic fever patient"
Usage: #example

//* meta.profile = Canonical(RheumaticFeverMedicationRequest|1.0.0)
* meta.versionId = "1"
* meta.lastUpdated = "2024-05-08T04:00:00Z" // UTC datetime

* basedOn = Reference(CarePlanWithOneAppointmentCompleted)

* performer[0] insert ReferencePractitioner(99ZAAA,[[Isabel Injecta]])
* performer[+] insert ReferenceOrganisation(G0M086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])

// this code is sample only and needs to be corrected once a SNOMED code has been defined for 'the Jones Criteria'
* code insert SNOMEDCoding(261864007,[[Jones (qualifier value)]])

* subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])

* status = #final

* effectiveDateTime = "2023-06-01T02:00:00Z"

* component[0] insert ObservationPresent(703119002,[[Carditis due to rheumatic fever (disorder)]],true)
* component[+] insert ObservationUnknown(200951007,[[Erythema marginatum in acute rheumatic fever (disorder)]])
* component[+] insert ObservationQuantity(251207006,[[PR interval duration (observable entity)]],0.12,[[s]],[[s]])
* component[+] insert ObservationInterpretation(251207006,[[PR interval duration (observable entity)]],[[N]],[[Normal]])
* component[+] insert ObservationQuantityAndInterpretation(251207006,[[PR interval duration (observable entity)]],0.12,[[s]],[[s]],[[N]],[[Normal]])
