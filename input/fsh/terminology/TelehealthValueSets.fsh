// Value Sets for Telehealth
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
* include codes from system http://terminology.hl7.org/CodeSystem/diagnosis-role

ValueSet: SharedCareEncounterTypeValueSet
Id: shared-care-encounter-type-valueset
Title: "Shared Care Encounter Type Value Set"
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