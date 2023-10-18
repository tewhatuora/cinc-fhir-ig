ValueSet: RheumaticFeverMedicationAllergyValueSet
Id: rf-medicationallergy-code
Title: "Rheumatic fever medication allergy codes"
Description:  "This value set includes codes for the RF secondary prophylaxis medications / substances a patient has an allergic reaction to"
* ^version = "1.0"
* ^experimental = false
* ^status = #draft

//18/10/2023 Won't use NZHTS until the SNOMED licensing and terminology publishing issues sorted out so the codes can actually be used!
//* ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/Rheumatic-fever-medication-allergy"
* $sct#372725003 "Phenoxymethylpenicillin (substance)"  // Penicillin V
* $sct#12578001 "Erythromycin ethyl succinate"      // Erythromycin ethyl succinate
* $sct#75247008 "Benzathine benzylpenicillin"       // Benzathine penicillin
// * $sct#TBC                                          Components of bicillin
* $sct#387480006 "Lignocaine"                       // Lignocaine
* $sct#22005007 "Ethyl chloride"                    // Ethylchloride spray (if used)
* $sct#387362001 "Adrenaline"                       // Adrenaline
* $sct#372756006 "Warfarin"                         // Warfarin
* $sct#259268001 "Isopropyl alcohol"                // Alcohol swabs
* $sct#111088007 "Latex"                            // Latex (if gloves used)
* $sct#418920007 "Adhesive agent"                   // Tape