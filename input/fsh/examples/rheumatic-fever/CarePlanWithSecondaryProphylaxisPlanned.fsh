Instance: CarePlanWithSecondaryProphylaxisPlanned
InstanceOf: RheumaticFeverCarePlan
Usage: #example
Description: "Example of an RF care plan with secondary prophylaxis medication planned and two appointments booked."

* meta.profile = Canonical(RheumaticFeverCarePlan|1.0.0)
* meta.versionId = "2"
* meta.lastUpdated = "2023-11-07T04:00:00Z"

* identifier[NHI] insert NHIIdentifier(SCF7824)
* identifier[NationalSystem][0] insert SalesforceCarePlanIdentifier(00073693)

* title = "Active care plan with medication planned and appointments booked for Madeleine Meringue"

* insert AddressesConditionExample(SevereRfConditionExample)

* category = $sct#320721000210102 "Rheumatic fever secondary prevention care plan" 

* intent = #plan

* created = "2023-06-12"
* period.start = "2023-08-01"
* period.end = "2033-07-31"
* status = #active

* activity[0].reference = Reference(PlannedMedicationRequestExample)
* activity[+].reference = Reference(SecondaryProphylaxisAppointment-August-Booked)
* activity[+].reference = Reference(SecondaryProphylaxisAppointment-September-Booked)

* insert PatientInstanceReference(subject,MadeleineMeringue)
* author insert ReferenceOrganisation(G0M086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])
* careTeam[0] = Reference(SecondaryProphylaxisCareTeam)

* supportingInfo[0] = Reference(PatientMedicationAllergyQuestionnaireResponse)
* supportingInfo[+] = Reference(MedicationsAndFollowUpGuidanceQuestionnaireResponse)
* supportingInfo[+] = Reference(PatientWhanauGoalsPreferencesQuestionnaireResponse)

// * extension[0].url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/rf-careplan-onhold-reason"
// * extension[=].valueString = "Patient on holiday overseas"

// * extension[+].url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/rf-careplan-closure-reason"
// * extension[=].valueString = "Patient left New Zealand"

