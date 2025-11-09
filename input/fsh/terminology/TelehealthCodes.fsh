// Code Systems for Telehealth
// CodeSystem: NzClaimTypeCS
// Id: nz-claim-type-cs
// Title: "NZ Claim Type Code System"
// Description: "Code system for NZ claim types"
// * ^status = #draft
// * ^caseSensitive = true
// * #professional "Professional" "Outpatient claims from physicians including GPs, telehealth, primary maternity, diagnostic & labs, etc."
// * #pharmacy "Pharmacy" "Pharmacy claims for goods & services"
// * #oral "Oral" "Should be used for HSAAP dental claims including CDA, low-income dental, etc."

CodeSystem: NzClaimSubtypeCS
Id: nz-claim-subtype-cs
Title: "NZ Claim Subtype Code System"
Description: "Code system for NZ claim subtypes"
* ^status = #draft
* ^caseSensitive = true
* #telehealth "Telehealth" "Online GP/telehealth claims for subsidised Health NZ services"
* #ICPSA "ICPSA" "Community pharmacy claims under ICPSA"
* #PCT "PCT" "Hospital pharmacy claims"

CodeSystem: AustralasianTriageScaleCS
Id: australasian-triage-scale-cs
Title: "Australasian Triage Scale Code System"
Description: "Code system for Australasian Triage Scale (ATS) categories"
* ^status = #draft
* ^caseSensitive = true
* #1 "Category 1" "Immediately life-threatening - Immediate simultaneous triage and treatment"
* #2 "Category 2" "Imminently life-threatening, or important time-critical - 10 minutes"
* #3 "Category 3" "Potentially life-threatening, potential adverse outcomes from delay > 30 min, or severe discomfort or distress - 30 minutes"
* #4 "Category 4" "Potentially serious, or potential adverse outcomes from delay > 60 min, or significant complexity or severity, or discomfort or distress - 60 minutes"
* #5 "Category 5" "Less urgent, or dealing with administrative issues only - 120 minutes"

CodeSystem: ClaimDecisionCS
Id: claim-decision-cs
Title: "Claim Decision Code System"
Description: "Code system for claim decisions"
* ^status = #draft
* ^caseSensitive = true
* #approved "Approved" "Claim has been approved"
* #denied "Denied" "Claim has been denied"
* #partial "Partial" "Claim has been partially approved"
* #pending "Pending" "Claim is pending review"

CodeSystem: ClaimDecisionReasonCS
Id: claim-decision-reason-cs
Title: "Claim Decision Reason Code System"
Description: "Code system for claim decision reasons based on FHIR R5 claim-decision-reason"
* ^status = #draft
* ^caseSensitive = true
* #0001 "Not medically necessary" "The payer has determined this product, service, or procedure as not medically necessary."
* #0002 "Prior authorization not obtained" "Prior authorization was not obtained prior to providing the product, service, or procedure."
* #0003 "Provider out-of-network" "This provider is considered out-of-network by the payer for this plan."
* #0004 "Service inconsistent with patient age" "The payer has determined this product, service, or procedure is not consistent with the patient's age."
* #0005 "Benefit limits exceeded" "The patient or subscriber benefit's have been exceeded."

CodeSystem: ProviderQualificationCS
Id: provider-qualification-cs
Title: "Provider Qualification Code System"
Description: "Code system for provider qualifications"
* ^status = #draft
* ^caseSensitive = true
* #gp "General Practitioner" "General Practitioner"
* #specialist "Specialist" "Medical Specialist"

CodeSystem: AdjudicationValueCS
Id: adjudication-value-cs
Title: "Adjudication Value Code System"
Description: "Code system for adjudication values"
* ^status = #draft
* ^caseSensitive = true
* #benefit "Benefit" "Benefit amount"
* #copay "Copay" "Patient copayment"
* #deductible "Deductible" "Deductible amount"

CodeSystem: AdjudicationReasonCS
Id: adjudication-reason-cs
Title: "Adjudication Reason Code System"
Description: "Code system for adjudication reasons"
* ^status = #draft
* ^caseSensitive = true
* #policy "Policy" "Per policy guidelines"
* #prior-auth "Prior Authorization" "Prior authorization required"