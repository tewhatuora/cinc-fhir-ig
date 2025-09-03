ValueSet: RPMEducationModuleVS
Id: rpm-education-module-vs
Title: "Education Module ValueSet"
Description: "Codes representing available education modules."
* ^url = "http://example.org/fhir/ValueSet/education-module-vs"
* ^status = #draft
* include codes from system RPMEducationModuleCS



CodeSystem: RPMEducationModuleCS
Id: rpm-education-module-cs
Title: "Education Module CodeSystem"
Description: "CodeSystem for education modules."
* ^url = "http://example.org/fhir/CodeSystem/education-module-cs"
* ^status = #active
* ^content = #complete

* #safe-prescribing "Safe Prescribing Training Module"
* #medication-safety "Medication Safety Module"
* #infection-control "Infection Control Education Module"