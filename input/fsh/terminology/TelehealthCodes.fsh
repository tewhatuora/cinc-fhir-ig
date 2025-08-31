// Code Systems for Telehealth
CodeSystem: NzClaimTypeCS
Id: nz-claim-type-cs
Title: "NZ Claim Type Code System"
Description: "Code system for NZ claim types"
* ^status = #draft
* ^caseSensitive = true
* #professional "Professional" "Outpatient claim from a telehealth physician"

CodeSystem: NzClaimSubtypeCS
Id: nz-claim-subtype-cs
Title: "NZ Claim Subtype Code System"
Description: "Code system for NZ claim subtypes"
* ^status = #draft
* ^caseSensitive = true
* #online-gp-services "Online GP Services" "Online GP services subtype"

CodeSystem: ClaimCareTeamRoleCS
Id: claim-careteam-role-cs
Title: "Claim Care Team Role Code System"
Description: "Code system for claim care team roles"
* ^status = #draft
* ^caseSensitive = true
* #primary "Primary" "Primary care provider"

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

// CodeSystem: ClaimDecisionCS
// Id: claim-decision-cs
// Title: "Claim Decision Code System"
// Description: "Code system for claim decisions"
// * ^status = #draft
// * ^caseSensitive = true
// * #approved "Approved" "Claim has been approved"
// * #denied "Denied" "Claim has been denied"
// * #partial "Partial" "Claim has been partially approved"
// * #pending "Pending" "Claim is pending review"

// CodeSystem: ClaimDecisionReasonCS
// Id: claim-decision-reason-cs
// Title: "Claim Decision Reason Code System"
// Description: "Code system for claim decision reasons"
// * ^status = #draft
// * ^caseSensitive = true
// * #insufficient-info "Insufficient Information" "Insufficient information provided"
// * #not-covered "Not Covered" "Service not covered by policy"
// * #duplicate "Duplicate" "Duplicate claim submitted"
// * #invalid-provider "Invalid Provider" "Provider not authorized"
// * #exceeded-limit "Exceeded Limit" "Benefit limit exceeded"