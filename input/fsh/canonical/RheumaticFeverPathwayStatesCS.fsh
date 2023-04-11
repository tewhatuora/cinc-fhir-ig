CodeSystem: LongTermConditionPathwayStateCodes
Id: longterm-pathway-state-cs
Title: "Managed pathway statuses for New Zealand patients with long-term conditions"
Description:  "Each code represents a possible pathway status"
* #registered "registered"
    "The patient is registered with Health New Zealand as having a long term disease / health condition"
* #allocated "allocated"
    "The patient is allocated to a health practitioner/provider."
* #on-hold "on-hold"
    "Patient management is suspended because the patient is overseas, in hospital or resident in a facility that provides healthcare"
* #pending-discharge "pending discharge"
   "A final clinical assessemnt/review is awaited prior to patient discharge"
* #discharged "discharged"
   "Patient has been discharged from long-term condition management"
* #closed "closed"
    "All alerts and escalations for the patient have ceased"
* ^publisher = "Te Whatu Ora / Health New Zealand"
* ^experimental = false
* ^caseSensitive = true
* ^purpose = "Enables HNZ to register and manage patients with long term health conditions such as rheumatic fever disorder."
* ^status = #draft
