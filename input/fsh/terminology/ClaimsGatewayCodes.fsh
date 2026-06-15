CodeSystem: NzPharmacyTransactionCategory
Id: nz-pharmacy-transaction-category
Title: "NZ Pharmacy Transaction Category"
Description: "Transaction category codes used for NZ Pharmacy Claims."
* ^status = #draft
* ^caseSensitive = true
* #I "Invoice"
* #C "Credit"
* #N "Non-claim"
* #R "Resubmission"
* #O "Owed balance"

CodeSystem: PatientCohort
Id:  pharmacy-claim-patient-cohort-codes
Title: "Patient Cohort CodeSystem"
Description: "Cohort classifications for patients."
* ^publisher = "Health New Zealand | Te Whatu Ora"
* ^version = "1.0.0"
* ^experimental = false
* ^status = #active
// * ^url = "http://hl7.org.nz/fhir/CodeSystem/patient-cohort"
* #CRC "Community Residential Care"
* #ARRC "Aged Residential Care"
* #LTC "Long Term Condition"
* #CDOS "Co-Dispensed Opioid Service"
* #PRISON "Prison"
/// OTHERS TO ADD

CodeSystem: PharmacyAdjudicationCategoryCodeSystem
Id: pharmacy-adjudication-category
Title: "Pharmacy Adjudication Category Code System"
Description: "Code system for pharmacy adjudication categories"
* ^url = "https://standards.digital.health.nz/ns/pharmacy-adjudication-category"
* ^caseSensitive = true
* #drugcost "Drug Cost" "Cost of the pharmaceutical drug"
* #markups "Markups" "Markup amounts applied"
* #pharmaceuticalsubsidy "Pharmaceutical Subsidy" "Government pharmaceutical subsidy amount"
* #copay "Co-payment" "Patient co-payment amount"
* #professionalfees "Professional Fees" "Professional service fees"
* #amountpaid "Amount Paid" "Total amount paid"
* #packsize "Pack Size" "Package size information"

CodeSystem: NzPharmacyClaimItemClassificationCS
Id: nz-pharmcy-claim-item-classification-cs
Title: "NZ Pharmacy Claim Item Classification CodeSystem"
Description: "Code system for pharmacy claim item classification"
* #GRASB "GRASB"