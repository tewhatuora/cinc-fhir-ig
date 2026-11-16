// Extensions for Urgent Care (phase 2)
Extension: UrgentCareEncounterReason
Id: nz-urgent-care-encounter-reason
Title: "Urgent Care Encounter Reason"
Description: "Administrative reason, applicable to Urgent Care, for the encounter"
Context: Encounter
* value[x] only CodeableConcept

Extension: UrgentCarePointOfCareTests
Id: nz-urgent-care-pocts
Title: "Urgent Care Point of Care Tests"
Description: "Point of care test (POCT) that was performed during the Urgent Care encounter"
Context: Encounter
* value[x] only CodeableConcept
* valueCodeableConcept from UrgentCarePointOfCareTestsVS (required)

Extension: UrgentCarePocusPerformed
Id: nz-urgent-care-pocus-performed
Title: "Urgent Care POCUS Performed"
Description: "Whether a point of care ultrasound (POCUS) was performed during the Urgent Care encounter"
Context: Encounter
* value[x] only boolean

Extension: UrgentCareRadiologyPerformed
Id: nz-urgent-care-radiology-performed
Title: "Urgent Care Radiology Performed"
Description: "Whether radiology (e.g. X-ray) was performed during the Urgent Care encounter"
Context: Encounter
* value[x] only boolean

Extension: SharedCarePatientPaid
Id: shared-care-patient-paid
Title: "Shared Care Patient Paid"
Description: "Co-payment amount paid by the patient (includes GST, excludes any additional charges). Same attribute as the patientPaid extension within a Claim.item."
Context: Encounter
* value[x] only Money

Extension: UrgentCarePrimeCallout
Id: nz-urgent-care-prime-callout
Title: "Urgent Care PRIME Callout"
Description: "Whether the Urgent Care consultation was due to a PRIME callout"
Context: Encounter
* value[x] only boolean

Extension: UrgentCarePrimeIncidentNumber
Id: nz-urgent-care-prime-incident-number
Title: "Urgent Care PRIME Incident Number"
Description: "Master incident number associated to the PRIME callout"
Context: Encounter
* value[x] only string
