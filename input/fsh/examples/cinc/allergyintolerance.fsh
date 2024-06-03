Instance: AllergyIntoleranceExample
InstanceOf: AllergyIntolerance
Usage: #example
Description: "An example payload for the Manaaki Nga Tahi AllergyIntolerance resource indicating an allergy to Penicillin"
* type = #allergy
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* code = http://snomed.info/sct#764146007 "Penicillin (substance)"
* category = #medication
* patient.identifier.use = #official
* patient.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* patient.identifier.value = "ZXP7823"
* recorder.identifier.use = #official
* recorder.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* recorder.identifier.value = "99ZZFX"
* reaction.manifestation = http://snomed.info/sct#241938005 "Penicillin-induced anaphylaxis (disorder)"
* reaction.severity = #severe