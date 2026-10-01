CodeSystem: ProvenanceReasonTypeCS
Id: provenance-reason-type-cs
Title: "Provenance Reason Type"
Description: "Local Reason type codes for Provenance tracking in the Dunedin Hospital Outpatients context"
* ^status = #active
* ^caseSensitive = true
* ^content = #complete
* #nhi-merge "NHI Merge" "Updated subject NHI logical identifier"
* #nhi-unmerge "NHI Unmerge" "Updated subject NHI logical identifier"

ValueSet: ProvenanceReasonTypeVS
Id: provenance-reason-type-vs
Title: "Provenance Reason Type"
Description: "Reason type codes for Provenance tracking, combining HL7 v3 DataOperation codes with local DHO reason types"
* ^status = #active
* include codes from system http://terminology.hl7.org/CodeSystem/v3-DataOperation
* include codes from system provenance-reason-type-cs
