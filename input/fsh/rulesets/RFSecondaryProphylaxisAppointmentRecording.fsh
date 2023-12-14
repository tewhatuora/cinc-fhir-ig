// makes the contents of Bundled instances used in RF secondary prophylaxis appointment recording
RuleSet: makeEncounterContent
* meta.profile = Canonical(ManaakiNgaTahiEncounter)
* meta.lastUpdated = "2023-11-27T00:00:00Z"

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

* serviceProvider insert ReferenceOrganisation(G0M086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])

// MedicationStatement: benzathine medication and associated lignocaine pain relief
RuleSet: makeMedStmtContent

* meta.profile = Canonical(http://hl7.org.nz/fhir/StructureDefinition/NzMedicationStatement)
* meta.lastUpdated = "2023-11-27T00:00:00Z"

// set up the contained instance that records lignocaine pain relief medication also given at this appointment
* contained[0].resourceType = "MedicationStatement"
* contained[0].id = "contained-Lignocaine-dose"     // special case of setting the id directly instance of via Instance FSH keyword 
* contained[0].partOf.reference = "http://example.org/fhir/MedicationStatement/1"    // ***** ref to our containing instance above, to be fixed up by FHIRWorks
* contained[0].status = #completed
* contained[0].subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* contained[0].medicationCodeableConcept insert NZMTMedicationCoding(10747581000116100,[[lidocaine hydrochloride anhydrous 1% (20 mg/2 mL) injection, ampoule]])
* contained[0].dosage.doseAndRate[0].doseQuantity insert UnitOfMeasureQuantity(0.25,[[ml]],[[ml]])

* basedOn = Reference(PlannedMedicationRequestExample)
* partOf.reference = "#contained-Lignocaine-dose"   // NOTE: We only make the container 'partOf' its contained resource to avoid FHIR validator errors
* context.reference = "http://example.org/fhir/Encounter/1"    // ***** alpha instance in the Bundle  *****
* medicationReference = Reference(SecondaryProphylaxisMedicationExample)
* subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])

* effectiveDateTime = "2023-08-08T03:15:00Z"    // UTC datetime
* dateAsserted = "2023-08-18T03:15:00Z"    // UTC datetime

* status = #completed

// records the actual benzathine brand, site of injection and quantity administered.
* dosage.site insert SNOMEDCoding(299151000210101,[[Structure of left ventrogluteal region (body structure)]])
* dosage.route insert SNOMEDCoding(78421000,[[Intramuscular route (qualifier value)]])
* dosage.doseAndRate[0].doseQuantity insert UnitOfMeasureQuantity(25,[[mg]],[[mg]]) 

* note insert markdownAnnotation([[Benzathine Brand used:**Bicillin L-A**]])


// QuestionnaireResponse: patient health assessment questions at appointment
RuleSet: makeQRContent
* meta.profile = Canonical(QuestionnaireResponse)
* meta.lastUpdated = "2023-11-27T00:00:00Z"

* status = #completed
* authored = "2023-08-08T01:08:00.504Z"   // UTC, assumed to be the time of information collection during the appointment
* questionnaire = Canonical(SecondaryProphylaxisHealthAssessmentQuestionnaire)

* subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* author insert ReferenceOrganisation(G0M086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])
* basedOn = Reference(CarePlanWithOneAppointmentCompleted)

* encounter.reference = "http://example.org/fhir/Encounter/1"    // ***** alpha instance in the Bundle  *****

// NOTE: item numbering does not have to match the Questionnaire because answers relate to questions through link_id

* item[+] insert answerItemX(ReasonsInjectionOverdue,[[2)]],[[Reason(s) injection was give late? (multiple choice)]])
* item[=].answer[0].valueString = "Patient Not Available on the Day"
* item[=].answer[+].valueString = "Other"

* item[+] insert answerItemX(OverdueInjectionOtherDetail,[[3)]],[[Other details for late injection (enter text)]])
* item[=].answer.valueString = "The patient couldn't find a park for the classic Hilux."

// * item[+] insert answerItemX(ConsentChecked,[[4)]],[[Pre-injection consent checked?]])
// * item[=].answer.valueBoolean = true

// * item[+] insert answerItemX(MedicationChecked,[[5)]],[[Pre-injection medication checked with a second person?]])
// * item[=].answer.valueBoolean = true

* item[+] insert answerItemX(OtherPainManagementToolsUsed,[[11)]],[[Pain management tools used? (multiple choice)]])
* item[=].answer[0].valueString = "Ice pack"
* item[=].answer[+].valueString = "Numbing spray"
* item[=].answer[+].valueString = "Distraction"
* item[=].answer[+].valueString = "Other"

* item[+] insert answerItemX(PainManagementOtherDetails,[[11.1)]],[[Details of other pain management (enter text)]])
* item[=].answer.valueString = "We discovered in this appointment that Chocolate Chip Cookie ice cream helps a lot!"

* item[+] insert answerItemX(PostInjectionConcern,[[12)]],[[Post injection concern or possible reaction identified?]])
* item[=].answer.valueBoolean = true

* item[+] insert answerItemX(PostInjectionConcernDetails,[[12.1)]],[[If Yes, Record Details, Symptoms, Actions Taken and Follow-Up Plan (enter text)]])
* item[=].answer.valueString = "Madeleine had a bit more than the usual sensitivity at the injection site so we dished out extra ice cream, which was nice."

* item[+] insert answerItemX(AnyOtherConcerns,[[13)]],[[Were There Any Other Concerns or Issues Identified During the Visit?]])
* item[=].answer.valueBoolean = true

* item[+] insert answerItemX(OtherConcernsDetail,[[13.1)]],[[If yes, describe details, actions taken, and follow-up planned (enter text)]])
* item[=].answer.valueString = "A shortage of ice cream in our freezer led to some unnecessary worries for Madeleine."


* item[+] insert answerItemX(HealthEducationTopicsDiscussed,[[14)]],[[Health education topics discussed? (multiple choice)]])
* item[=].answer[0].valueString = "Secondary prophylaxis"
* item[=].answer[+].valueString = "Nutrition"
* item[=].answer[+].valueString = "Other"

* item[+] insert answerItemX(HealthEducationOtherDetail,[[14.1)]],[[Enter details of other health education topic discussed (enter text)]])
* item[=].answer.valueString = "Madeleine and I discussed the importance of punctuality and the benefits of planning ahead."

* item[+] insert answerItemX(RecentOrUpcomingAppointments,[[15)]],[[Any recent or upcoming follow-up appointments?]])
* item[=].answer.valueBoolean = true

* item[+] insert answerItemX(RecentOrUpcomingAppointmentsDetails,[[15.1)]],[[Enter details and dates of any recent or upcoming follow-up appointments (enter text)]])
* item[=].answer.valueString = "Madeleine has an upcoming follow-up appointment covering iOS calendar basics"

* item[+] insert answerItemX(PlanForNextMedicationAppointment,[[16)]],[[Comments for the next appointment (enter text)]])
* item[=].answer.valueString = "The plan for the next medication appointment is to keep up the good work"

