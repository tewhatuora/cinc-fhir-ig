// Value Sets for Telehealth
ValueSet: NzClaimTypes
Id: nz-claim-types
Title: "NZ Claim Types"
Description: "Types of claims in New Zealand"
* ^status = #draft
* include codes from system nz-claim-type-cs

ValueSet: NzClaimSubtypes
Id: nz-claim-subtypes
Title: "NZ Claim Subtypes"
Description: "Subtypes of claims in New Zealand"
* ^status = #draft
* include codes from system nz-claim-subtype-cs

ValueSet: ClaimCareTeamRoleCodes
Id: claim-careteam-role-codes
Title: "Claim Care Team Role Codes"
Description: "Roles for care team members in claims"
* ^status = #draft
* include codes from system claim-careteam-role-cs

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
