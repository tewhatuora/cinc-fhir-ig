// Code systems and value sets for Urgent Care encounters

CodeSystem: SctNzUrgentCarePointOfCareTestsFragment
Id: sct-nz-urgent-care-point-of-care-tests-fragment
Title: "SNOMED CT NZ Edition Urgent Care Point of Care Tests Fragment"
Description: "A fragment of the SNOMED CT NZ edition (http://snomed.info/sct/21000210109) containing the point of care tests applicable to Urgent Care."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #fragment
* #105000003 "Troponin measurement" "Troponin measurement (procedure)"
* #26604007 "FBC - Full blood count" "Complete blood count (procedure)"
* #767002 "WBC - White blood cell count" "White blood cell count (procedure)"
* #79301008 "Electrolytes measurement" "Electrolytes measurement (procedure)"
* #70648006 "D-dimer assay" "D-dimer assay (procedure)"
* #55235003 "CRP - C-reactive protein level" "C-reactive protein measurement (procedure)"

ValueSet: UrgentCarePointOfCareTestsVS
Id: nz-urgent-care-point-of-care-tests-vs
Title: "Urgent Care Point of Care Tests"
Description: "Point of care tests applicable to Urgent Care."
* ^status = #active
* ^experimental = false
* include codes from system sct-nz-urgent-care-point-of-care-tests-fragment

CodeSystem: SharedCareRegistrationCodeCS
Id: shared-care-registration-code-cs
Title: "Shared Care Registration Code"
Description: "Patient enrolment status at the practice."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #enrolled "Enrolled" "Patient is enrolled (registered) with this practice"
* #casual "Casual" "Patient is a casual patient of this practice"

ValueSet: SharedCareRegistrationCodeVS
Id: shared-care-registration-code-vs
Title: "Shared Care Registration Code"
Description: "Patient enrolment status at the practice (enrolled or casual)."
* ^status = #active
* ^experimental = false
* include codes from system shared-care-registration-code-cs
