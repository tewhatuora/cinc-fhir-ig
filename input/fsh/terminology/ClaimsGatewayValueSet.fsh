ValueSet: PatientCohort
Id:  pharmacy-claim-patient-cohort-valueset
Title: "Patient Cohort ValueSet"
Description: "Allowed values for the Patient Cohort extension."
* include codes from system pharmacy-claim-patient-cohort-codes

ValueSet: PharmacyAdjudicationCategoryValueSet
Id: pharmacy-adjudication-category
Title: "Pharmacy Adjudication Category"
Description: "Categories for pharmacy claim adjudication amounts"
* include codes from system pharmacy-adjudication-category

ValueSet: NzPharmacyTransactionCategory
Id: nz-pharmacy-transaction-category
Title: "NZ Pharmacy Transaction Category"
Description: "Allowed transaction categories for NZ Pharmacy Claims."
* ^status = #draft
* include codes from system NzPharmacyTransactionCategory