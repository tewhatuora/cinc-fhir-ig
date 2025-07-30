Extension: PatientCohort
Id: patient-cohort
Title: "Patient Cohort"
Description: "Indicates the cohort for which the patient belongs, such as CRC, ARRC, LTC, CDOS, PRISON, etc."
Context: Claim
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from pharmacy-claim-patient-cohort-valueset (required)

Extension: ClaimantNumber
Id: claimant-number
Title: "Claimant Number"
Description: "The claimant number for the patient."
Context: Claim
* value[x] only string
* valueString 1..1

Extension: OriginatingClaimantNumber
Id: originating-claimant-number
Title: "Originating Claimant Number"
Description: "The claimant number for the the previous owner."
Context: Claim
* value[x] only string
* valueString 1..1

Extension: PatientFlag
Id: patient-flag
Title: "Patient Flag"
Description: "Indicates a flag relevant to the patient for the pharmacy claim."
Context: Claim.item
* value[x] only boolean
* valueBoolean 1..1

Extension: PrescriberFlag
Id: prescriber-flag
Title: "Prescriber Flag"
Description: "Indicates a flag relevant to the prescriber for the pharmacy claim."
Context: Claim.item
* value[x] only boolean
* valueBoolean 1..1


Extension: PrescriptionFlag
Id: prescription-flag
Title: "Prescription Flag"
Description: "Indicates a flag relevant to the prescription for the pharmacy claim."
Context: Claim.item
* value[x] only boolean
* valueBoolean 1..1

Extension: DoseFlag
Id: dose-flag
Title: "Dose Flag"
Description: "Indicates a flag relevant to the dose for the pharmacy claim."
Context: Claim.item
* value[x] only boolean
* valueBoolean 1..1

Extension: GroupId
Id: group-id
Title: "Group ID"
Description: "A group identifier relevant to the pharmacy claim."
Context: Claim.item
* value[x] only string
* valueString 1..1
