Instance: SevereRfConditionExample
InstanceOf: RheumaticFeverCondition
Usage: #example
Description: "An example of a rheumatic fever Condition"

* meta.profile = Canonical(RheumaticFeverCondition)
* meta.versionId = "2"
* meta.lastUpdated = "2023-11-07T04:00:00Z"

* identifier[NationalSystem][0] insert SalesforceConditionIdentifier([[CON-0206]])     // corresponding salesforce record
* identifier[NationalSystem][+] insert  EpisurvNumber(21-383414-AK)                    // EPISurv nunber as notified to in diagnosis

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category.coding[0] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis "Encounter Diagnosis"
* category.coding[+] = http://snomed.info/sct#439401001 "Diagnosis"
* category.text = "Diagnosis"
* severity = http://snomed.info/sct#24484000 "Severe"
* code = $sct#195528001 "Acute rheumatic fever (disorder)"

* subject insert NHIPatientRef(SCF7824,[[Madeleine Meringue]])

* onsetDateTime = "2023-02-05"
* recordedDate = "2022-04-20"

* recorder insert ReferencePractitioner(99ZZFX,[[Dottie McStuffins]])

* extension[rhdSeverity].url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/rf-condition-rhdseverity"
* extension[rhdSeverity].valueCoding = $sct#24484000 "Severe (severity modifier) (qualifier value)"

* extension[diagnosticCertainty].url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/rf-condition-diagnosticcertainty"
* extension[diagnosticCertainty].valueCoding = $RFdiagnosticCertaintyCS#probable "probable"
