
//Claim Extensions

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

Extension: BalanceOwing
Id: hsaap-balance-owing
Title: "Balance Owing"
Description: "Indicates the balance owing for the pharmacy claim item detail."
Context: Claim.item.detail
* value[x] only string
* valueString 1..1

Extension: WastageQuantity
Id: wastageQuantity
Title: "Wastage Quantity"
Description: "Indicates the wastage quantity for the pharmacy claim item detail."
Context: Claim.item.detail
* value[x] only Quantity
* valueQuantity 1..1

Extension: CbsSubsidy
Id: cbsSubsidy
Title: "CBS Subsidy"
Description: "Indicates the CBS subsidy for the pharmacy claim item detail."
Context: Claim.item.detail
* value[x] only Money
* valueMoney 1..1

Extension: CbsPackSize
Id: cbsPackSize
Title: "CBS Pack Size"
Description: "Indicates the CBS pack size for the pharmacy claim item detail."
Context: Claim.item.detail
* value[x] only Quantity
* valueQuantity 1..1

//ClaimResponse Extensions

Extension: TraceNumberExtension
Id: trace-number
Title: "Trace Number Extension"
Description: "Extension for tracking numbers in pharmacy claim responses"
* ^url = "https://standards.digital.health.nz/fhir/StructureDefinition/trace-number"
* ^context.type = #element
* ^context.expression = "ClaimResponse"
* value[x] only Identifier
* valueIdentifier ^short = "Trace number identifier"


Extension: ProductOrServiceExtension
Id: product-or-service
Title: "Product Or Service Extension"
Description: "Extension for product or service codes in pharmacy claim response items"
* ^url = "https://standards.digital.health.nz/fhir/StructureDefinition/product-or-service"
* ^context.type = #element
* ^context.expression = "ClaimResponse.item"
* value[x] only CodeableConcept
* valueCodeableConcept ^short = "Product or service code"
* valueCodeableConcept from PurchaseUnitValueSet (required)