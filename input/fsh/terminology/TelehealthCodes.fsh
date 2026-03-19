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
CodeSystem: NzAppointmentReasonCodesCS
Id: nz-onlinegp-appointment-reason-codes-cs
Title: "NZ Appointment Reason Codes Code System"
Description: "Code system for NZ appointment reason codes"
* ^status = #draft
* ^caseSensitive = true
* #566531000210101 "Timely in person appointment unavailable" "Service user unable to get into usual GP practice for in person appointment when required. GP booked / wait for appointment is too long"
* #566541000210109 "Unable to attend in person due to impaired mobility" "Service user has difficulty traveling to clinics"
* #566551000210107 "Lives in rural or remote location" "Service user has limited access to healthcare facilities in location of residence or current location"
* #566561000210105 "Unable to attend in person due to work or family constraint" "Service user has limited time / access to healthcare facilities due to work or family constraints / responsibilities"
* #566571000210104 "Avoiding possible exposure to infectious disease" "Service user has personal health concerns, immunocompromised status, or protecting vulnerable household members"
* #566581000210102 "Telehealth appointment booked for convenience" "Service user does not have accessibility or booking constraints but prefers convenience of telehealth service"
* #566351000210102 "Patient not registered - not needed" "Not registered in general practice"

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
Description: "Code system for claim decision reasons based on validation rule IDs"
* ^status = #draft
* ^caseSensitive = true

// Claim Level Validation Rules
* #DET040.014 "Passed" "A valid claim date has been provided."
* #DET040.015 "Failed" "Claim date provided is not valid."
* #DET052.001 "Passed" "No duplicate found for this claim"
* #DET052.002 "Failed" "Claim is a duplicate of claim [Claim Number] received on [Received Date]."
* #DET001.006 "Passed" "Agreement is valid for {service name} services"
* #DET001.001 "Failed" "Agreement number provided cannot be found in our records"
* #DET001.007 "Failed" "Agreement is not valid for {service name} services"
* #DET063.003 "Passed" "Provider HPI organisation is appropriate for the Agreement"
* #DET063.004 "Failed" "Provider HPI organisation is not appropriate for the Agreement"
* #DET055.001 "Passed" "NHI number found in our records."
* #DET055.002 "Failed" "NHI number cannot be found in our records."
* #DET055.004 "Passed" "NHI number validation passes for health service user."
* #DET055.018 "Passed" "Patient is eligible for subsidised healthcare"
* #DET055.019 "Failed" "Patient is not eligible for subsidised healthcare"

// Claim Item Level Validation Rules
* #DET041.088 "Passed" "Date of Service is earlier than or equal to Claim Date."
* #DET041.087 "Failed" "Date of Service is later than Claim Date."
* #DET020.003 "Passed" "Date of Service falls between Agreement start and end date."
* #DET020.002 "Failed" "Date of Service did not occur between the Agreement start and termination dates."
* #DET064.001 "Passed" "Record of encounter was found in our system."
* #DET064.002 "Failed" "Could not find the encounter with identifier {identifier} in our system."
* #DET064.003 "Passed" "Encounter is for the same Patient as the Claim."
* #DET064.004 "Failed" "Encounter and Claim do not refer to the same Patient."
* #DET064.005 "Passed" "Encounter is for the same Service Date as the Claim Item."
* #DET064.006 "Failed" "Encounter and Claim Item have different Service Dates."
* #DET064.007 "Passed" "Patient attended the Encounter."
* #DET064.008 "Failed" "Cannot claim for an Encounter that did not occur."
* #DET064.009 "Passed" "Encounter is only claimed once."
* #DET064.010 "Failed" "Encounter cannot be claimed more than once."
* #DET055.005 "Failed" "NHI number provided is for a deceased health service user."
* #DET064.011 "Passed" "Fee(s) found for purchase unit code and contracted service."
* #DET064.012 "Passed" "Purchase unit code not valid for this contracted service - no fee(s) found."

// Adjudication Validation Rules
* #DET064.013 "Passed" "Claimed fee {feeCode} is valid for the patient's age."
* #DET064.014 "Failed" "Patient's age was older than maximum allowed age for claimed fee {feeCode}."
* #DET064.015 "Failed" "Patient's age was younger than minimum allowed age for claimed fee {feeCode}."
* #DET064.016 "Passed" "Claimed fee {feeCode} is valid for consultation date & time."
* #DET064.017 "Failed" "Patient's consultation occurred outside of time period for claimed fee {feeCode}."
* #DET064.018 "Passed" "Claimed fee {feeCode} is valid for patient's CSC status."
* #DET064.019 "Failed" "Patient's CSC status does not correspond to the claimed fee {feeCode}."
* #DET064.020 "Passed" "Fee(s) found for product code and contracted service."
* #DET064.021 "Failed" "Product code not valid for this contracted service - no fee(s) found."

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