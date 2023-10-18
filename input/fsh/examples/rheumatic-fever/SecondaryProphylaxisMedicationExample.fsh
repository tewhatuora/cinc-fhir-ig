Instance: SecondaryProphylaxisMedicationExample
InstanceOf: Medication
Description: "Example of medication used in rheumatic fever secondary prophylaxis (prevention) as NZMT terminology"
Usage: #example

* meta.profile = Canonical(Medication)
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-06T08:00:00Z"

// NZMT codes are published by NZ on NZHTS
* code insert NZMTMedicationCoding(43924201000116108,[[Bicillin L-A]])
* ingredient.itemCodeableConcept insert NZMTMedicationCoding(10134211000116105,[[benzathine penicillin (as benzathine benzylpenicillin tetrahydrate)]])

