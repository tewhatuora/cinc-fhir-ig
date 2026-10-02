// Value Sets for Claim system
ValueSet: NzAppointmentReasonCodes
Id: nz-onlinegp-appointment-reason-codes
Title: "NZ Appointment Reason Codes Code System"
Description: "Code system for NZ appointment reason codes"
* ^status = #draft
* $sct#266934004 "Transport problem (finding)"
* $sct#74964007 "Other (qualifier value)"

// NZ Edition SNOMED CT codes
* $sct|http://snomed.info/sct/21000210109#566531000210101 "Timely in person appointment unavailable"
* $sct|http://snomed.info/sct/21000210109#566541000210109 "Unable to attend in person due to impaired mobility"
* $sct|http://snomed.info/sct/21000210109#566551000210107 "Lives in rural or remote location"
* $sct|http://snomed.info/sct/21000210109#566561000210105 "Unable to attend in person due to work or family constraint"
* $sct|http://snomed.info/sct/21000210109#566571000210104 "Avoiding possible exposure to infectious disease"
* $sct|http://snomed.info/sct/21000210109#566581000210102 "Telehealth appointment booked for convenience"
* $sct|http://snomed.info/sct/21000210109#566351000210102 "Patient not registered - not needed"
* $sct|http://snomed.info/sct/21000210109#185369008 "Referred by pharmacist"
* $sct|http://snomed.info/sct/21000210109#659821000210106 "Referred by urgent care clinic"
* $sct|http://snomed.info/sct/21000210109#301661000210103 "Referred by emergency department"

ValueSet: NzClaimTypes
Id: nz-claim-types
Title: "NZ Claim Types"
Description: "Types of claims in New Zealand"
* ^status = #draft
* http://terminology.hl7.org/CodeSystem/claim-type#professional "Professional claim for practitioner services"
* http://terminology.hl7.org/CodeSystem/claim-type#pharmacy "Pharmacy claim for medication dispensing"
* http://terminology.hl7.org/CodeSystem/claim-type#oral "Should be used for HSAAP dental claims including CDA, low-income dental, etc."

ValueSet: NzClaimSubtypes
Id: nz-claim-subtypes
Title: "NZ Claim Subtypes"
Description: "Subtypes of claims in New Zealand"
* ^status = #draft
* include codes from system nz-claim-subtype-cs

ValueSet: ProviderQualificationCodes
Id: provider-qualification-codes
Title: "Provider Qualification Codes"
Description: "Qualification codes for providers"
* ^status = #draft
* include codes from system provider-qualification-cs

ValueSet: ClaimDecisionCodes
Id: claim-decision-codes
Title: "Claim Decision Codes"
Description: "Codes for claim decisions"
* ^status = #draft
* include codes from system claim-decision-cs

ValueSet: ClaimDecisionReasonCodes
Id: claim-decision-reason-codes
Title: "Claim Decision Reason Codes"
Description: "Codes for claim decision reasons"
* ^status = #draft
* include codes from system claim-decision-reason-cs

ValueSet: AdjudicationValueCodes
Id: adjudication-value-codes
Title: "Adjudication Value Codes"
Description: "Codes for adjudication values"
* ^status = #draft
* include codes from system adjudication-value-cs

ValueSet: AdjudicationReasonCodes
Id: adjudication-reason-codes
Title: "Adjudication Reason Codes"
Description: "Codes for adjudication reasons"
* ^status = #draft
* include codes from system adjudication-reason-cs

ValueSet: AustralasianTriageScale
Id: australasian-triage-scale
Title: "Australasian Triage Scale"
Description: "Australasian Triage Scale (ATS) categories used in New Zealand and Australia"
* ^status = #draft
* include codes from system australasian-triage-scale-cs

ValueSet: PaymentTypeCodes
Id: payment-type-codes
Title: "Payment Type Codes"
Description: "Codes for payment types"
* ^status = #draft
* include codes from system http://terminology.hl7.org/CodeSystem/ex-paymenttype

ValueSet: DiagnosisUseCodes
Id: diagnosis-use-codes
Title: "Diagnosis Use Codes"
Description: "Codes for diagnosis use (working vs final)"
* ^status = #draft
* include codes from system $diagnosis-role

ValueSet: UrgentCareEncounterTypeValueSet
Id: urgent-care-encounter-type-valueset
Title: "Urgent Care Encounter Type Value Set"
Description: "Encounter types for Urgent Care"
* ^status = #draft

// Include specific preferred codes
* $sct#1269515004 "Face to face consultation with patient"
* $sct#386472008 "Telephone consultation"
* $sct#719410009 "Video consultation"

ValueSet: OnlineGPEncounterTypeValueSet
Id: online-gp-encounter-type-valueset
Title: "Online GP Encounter Type Value Set"
Description: "Encounter types for Shared Care including specific codes and other SNOMED CT codes"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = false

// Include specific preferred codes
* $sct#1269515004 "Face to face consultation with patient"
* $sct#386472008 "Telephone consultation"
* $sct#719410009 "Video consultation"

// Include all SNOMED CT encounter type codes
// * include codes from system $sct where concept is-a #308335008 "Patient encounter procedure"


ValueSet: OnlineGpConsultationServiceType
Id: onlinegp-consultation-service-type
Title: "Online GP Consultation Service Type"
Description: "Allowed consultation types for Online GP encounters."
* ^status = #draft
* include codes from system OnlineGpConsultationServiceTypeCodes


ValueSet: OnlineGpReferralSource
Id: onlinegp-referral-source
Title: "Online GP Referral Source"
Description: "Allowed referral sources for Online GP encounters."
* ^status = #draft
* $sct#185369008 "Referred by pharmacist"
* $sct#659821000210106 "Referred by urgent care clinic"
* $sct#301661000210103 "Referred by emergency department"
* $sct#669431000210103 "Referred by integrated health services hub"
* $sct#669421000210100 "Referred by rural hospital service"
