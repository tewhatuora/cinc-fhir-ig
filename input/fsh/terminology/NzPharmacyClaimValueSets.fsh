ValueSet: PharmacyAdjudicationCategoryValueSet
Id: pharmacy-adjudication-category
Title: "Pharmacy Adjudication Category"
Description: "Categories for pharmacy claim adjudication amounts"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/pharmacy-adjudication-category"
* include codes from system PharmacyAdjudicationCategoryCodeSystem

ValueSet: PurchaseUnitValueSet
Id: purchase-unit
Title: "Purchase Unit"
Description: "Purchase unit codes for pharmacy items"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/purchase-unit"
* include codes from system PurchaseUnitCodeSystem

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

CodeSystem: PurchaseUnitCodeSystem
Id: purchase-unit
Title: "Purchase Unit Code System"
Description: "Code system for purchase unit codes used in pharmacy claims"
* ^url = "https://standards.digital.health.nz/ns/purchase-unit"
* ^caseSensitive = true
* #PU1234 "Purchase Unit 1234" "Example purchase unit code"