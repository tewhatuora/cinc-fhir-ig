Extension:  RheumaticFeverCaseManagement
Id:         nz-careplan-rf-case-management
Title: "Additional elements for NZ Rheumatic Fever Service case management"
* extension contains
  pathwayStatus 0..1 and
  onholdReason 0..1 and
  closureReason 0..1
* extension[pathwayStatus].value[x] only Coding
* extension[pathwayStatus].valueCoding from LongTermConditionPathwayStates (required)
* extension[pathwayStatus]. ^short = "Defines status of a patient rheumatic fever case"
* extension[onholdReason].value[x] only string
* extension[onholdReason]. ^short = "Explains why a management of a patient's long term condition has been suspended."
* extension[closureReason].value[x] only string
* extension[closureReason]. ^short = "Explains why a management of a patient's long term condition has ceased."