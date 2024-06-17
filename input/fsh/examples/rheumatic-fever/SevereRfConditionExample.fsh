Instance: SevereRfConditionExample
InstanceOf: RheumaticFeverCondition
Usage: #example
Description: "An example of a rheumatic fever Condition"

* meta.profile = Canonical(RheumaticFeverCondition|1.0.0)
* meta.versionId = "3"
* meta.lastUpdated = "2023-12-14T20:00:00Z"

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

* extension[rhdSeverity].url = Canonical(RfConditionRhdSeverityExtension)
* extension[rhdSeverity].valueCoding = $sct#24484000 "Severe (severity modifier) (qualifier value)"

* extension[diagnosticCertainty].url = Canonical(RfConditionDiagnosticCertaintyExtension)
* extension[diagnosticCertainty].valueCoding = $RFdiagnosticCertaintyCS#probable "probable"

* extension[assessmentDate].url = Canonical(RfConditionAssessmentDateExtension)
* extension[assessmentDate].valueDate = "2022-04-14"
