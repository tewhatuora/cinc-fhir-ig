Instance: ActiveConsentExample
InstanceOf: ManaakiNgaTahiConsent
Usage: #example
Description: "Example of an active patient consent recorded by the Te Tai Tokerau Lead Provider organisation.

Patient consents are expected to be in a provisional (*#proposed* status) initially, because the consent is 
commonly not obtained until the first secondary prophylaxis appointment which is sometime after registration
and care plan setup.  Once obtained clients are expected to upgrade the Consent instance to an *#active* status 
like this example.

This example includes sample `data.references` which identify the FHIR resource instances to be protected."

* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Privacy Consent"

* category = http://terminology.hl7.org/CodeSystem/consentcategorycodes#npp "Notice of Privacy Practices"
* dateTime = "2023-06-12T02:30:35.982Z"

* patient insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
* organization insert ReferenceOrganisation(GOM086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])
* performer insert ReferenceOrganisation(GOM086-B,[[Te Tai Tokerau Rheumatic Fever Secondary Prevention Service]])

* policy[0].authority = "https://www.privacy.org.nz"
* policy[=].uri = "https://www.privacy.org.nz/privacy-act-2020/"
* policy[+].authority = "https://www.privacy.org.nz"
* policy[=].uri = "https://www.privacy.org.nz/privacy-act-2020/codes-of-practice/hipc2020/"

// ********
// make a provision for access by RF provider orgs 
* provision.period.start = "2023-06-12T02:30:35Z"
* provision.period.end = "2026-06-11T02:30:35Z"     // a 3 year period in this example
* provision.type = #permit
* provision.actor[0].role = http://terminology.hl7.org/CodeSystem/extra-security-role-type#datacollector "data collector"
* provision.actor[=].reference = Reference(LeadProvidersGroup)

* provision.actor[+].role = http://terminology.hl7.org/CodeSystem/extra-security-role-type#datasubject "data subject"
* provision.actor[=].reference insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])

// setup a boatload of example data references to consent-protected resource instances
* provision insert ConsentInstanceDataRef( LeadProvidersGroup )
* provision insert ConsentInstanceDataRef( SevereRfConditionExample )
* provision insert ConsentInstanceDataRef( WhanauCareTeam )
* provision insert ConsentInstanceDataRef( SecondaryProphylaxisCareTeam )
* provision insert ConsentInstanceDataRef( SecondaryProphylaxisAppointment-Encounter )

* provision insert ConsentInstanceDataRef( PatientMedicationAllergyQuestionnaireResponse )
* provision insert ConsentInstanceDataRef( MedicationsAndFollowUpGuidanceQuestionnaireResponse )
* provision insert ConsentInstanceDataRef( PatientWhanauGoalsPreferencesQuestionnaireResponse )
* provision insert ConsentInstanceDataRef( RFPatientHealthAssessmentQuestionnaireResponse )

* provision insert ConsentInstanceDataRef( CarePlanWithOneAppointmentCompleted ) 



