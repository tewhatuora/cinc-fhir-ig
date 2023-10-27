Instance: ProvConsentCoverageExample
InstanceOf: ManaakiNgaTahiConsent
Usage: #example
Description: "Example of a provisional consent made by the Te Tai Tokerau Lead Provider organisation.
These types of Consent are a provisional arrangement by which a lead provider org. -- Te Tai Tokerau in this case -- 
can store and access patient data in FHIR before the patient's consent has actually been obtained and 
recorded as a FHIR #active Consent instance.

This example includes sample `data.references` which show how the FHIR resources to be access-controlled are identified."

* status = #proposed
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Privacy Consent"

* category = http://terminology.hl7.org/CodeSystem/consentcategorycodes#npp "Notice of Privacy Practices"
* dateTime = "2023-06-12T02:30:35.982Z"

* patient insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])
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



