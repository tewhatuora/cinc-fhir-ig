ValueSet: OutpatientActivityStatusReasonVS
Id: outpatient-activity-status-reason-vs
Title: "Outpatient Activity Status Reason"
Description: "Status reasons for outpatient activity workflow tracking"
* ^status = #active
* include codes from system outpatient-activity-status-reason-cs

ValueSet: ProvenanceReasonTypeVS
Id: provenance-reason-type-vs
Title: "Provenance Reason Type"
Description: "Reason type codes for Provenance tracking, combining HL7 v3 DataOperation codes with local DHO reason types"
* ^status = #active
* include codes from system http://terminology.hl7.org/CodeSystem/v3-DataOperation
* include codes from system provenance-reason-type-cs

ValueSet: DHOEncounterClassVS
Id: dho-encounter-class-vs
Title: "DHO Encounter Class"
Description: "Allowed Encounter.class codes for DHO Encounter profiles (ambulatory or inpatient)."
* ^status = #active
* $v3-ActCode#AMB
* $v3-ActCode#IMP
