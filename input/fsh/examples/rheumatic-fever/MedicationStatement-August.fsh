
Instance: MedicationStatement-August
InstanceOf: MedicationStatement
Description: "Illustrates details of secondary prophylaxis medication given to a patient at an appointment"
Usage: #example

* meta.profile = Canonical(http://hl7.org.nz/fhir/StructureDefinition/NzMedicationStatement)
* meta.versionId = "2"
* meta.lastUpdated = "2023-11-24T00:10:00Z" // UTC datetime

* contained = contained-Lignocaine-dose  // contained resource signifies lignocaine given too

* basedOn = Reference(PlannedMedicationRequestExample)
* context = Reference(SecondaryProphylaxisAppointment-Encounter)
* medicationReference = Reference(SecondaryProphylaxisMedicationExample)
* subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])

* effectiveDateTime = "2023-08-08T03:15:00Z"    // UTC datetime
* dateAsserted = "2023-08-18T03:15:00Z"    // UTC datetime

* status = #completed

* dosage.site insert SNOMEDCoding(299151000210101,[[Structure of left ventrogluteal region (body structure)]])
* dosage.route insert SNOMEDCoding(78421000,[[Intramuscular route (qualifier value)]])
* dosage.doseAndRate[0].doseQuantity insert UnitOfMeasureQuantity(25,[[mg]],[[mg]]) 

* note insert markdownAnnotation([[Benzathine Brand used:**Bicillin L-A**]])

// *************
Instance: contained-Lignocaine-dose
InstanceOf: MedicationStatement
Usage: #inline

* medicationCodeableConcept insert NZMTMedicationCoding(10747581000116100,[[lidocaine hydrochloride anhydrous 1% (20 mg/2 mL) injection, ampoule]])
* dosage.doseAndRate[0].doseQuantity insert UnitOfMeasureQuantity(0.25,[[ml]],[[ml]])

* partOf = Reference(MedicationStatement-August)
* subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* status = #completed

