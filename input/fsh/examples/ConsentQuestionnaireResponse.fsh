Instance: ConsentQuestionnaireResponseExample
InstanceOf: ManaakiNgaTahiQuestionnaireResponse
Usage: #example
Description: "An example ManaakiNgaTahi QuestionnaireResponse"
* questionnaire = Canonical(COVIDPrivacyStatementQuestionTemplate)
* status = #completed
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "ZXP7823"
* subject.display = "Carey Carrington"
* encounter = Reference(EncounterExample)   // reference fixed to profiled type instead of specific instance 
* authored = "2022-08-29T20:39:27.360Z"
* author.type = "Practitioner"
* author.identifier.use = #official
* author.identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* author.identifier.value = "99ZZFX"
* author.display = "Dottie McStuffins"
* source.type = "Patient"
* source.identifier.use = #official
* source.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* source.identifier.value = "ZXP7823"
* source.display = "Carey Carrington"
* item.linkId = "1"
* item.text = "Please assure that person that all information discussed is strictly confidential and will only be used to support them while they are isolating.  It will only be shared and visible to other health professionals when and if required."
* item.answer.valueBoolean = true