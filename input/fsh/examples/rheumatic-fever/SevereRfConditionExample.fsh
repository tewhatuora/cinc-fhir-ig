Instance: SevereRfConditionExample
InstanceOf: RheumaticFeverCondition
Usage: #example
Description: "An example of a rheumatic fever Condition"

* meta.profile = Canonical(RheumaticFeverCondition)
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-06T08:00:00Z"

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
* extension[rhdSeverity].valueCode = $sct#1255665007 "Severe (severity modifier) (qualifier value)"

* extension[diagnosticCertainty].url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/rf-condition-diagnosticcertainty"
* extension[diagnosticCertainty].valueCode = #probable "probable"

* meta.versionId = "1"
* meta.lastUpdated = "2022-09-20T02:21:06.157Z"
