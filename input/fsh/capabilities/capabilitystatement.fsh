Instance: CareInTheCommunityCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition

* name = "CareInTheCommunityCapabilityStatement"
* title = "Care In The Community FHIR Server Capability Statement"
* status = #active
* date = "2023-10-19"
* publisher = "Te Whatu Ora"
* description = "The Manaaki Nga Tahi - Care In The Community FHIR API"
* kind = #instance
* implementation.description = "The Care In The Community Manaaki Nga Tahi FHIR API"
* implementation.url = "https://fhir.ap1.digital.health.nz/R4"
* fhirVersion = #4.0.1
* format = #json
* rest.mode = #server
* rest.security.cors = true
* rest.security.service = #SMART-on-FHIR
* rest.security.extension[+].url = "http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris"
* rest.security.extension[=].extension[+].url = "token"
* rest.security.extension[=].extension[=].valueUri = "https://auth.integration.covid19.health.nz/oauth2/token"
* rest.security.extension[+].url = "http://fhir-registry.smarthealthit.org/StructureDefinition/capabilities"
* rest.security.extension[=].valueCode = #client-confidential-symmetric

* rest.interaction.code = #transaction

* rest.resource[0].type = #AllergyIntolerance
* rest.resource[=].profile = Canonical(ManaakiNgaTahiAllergyIntolerance)
* rest.resource[=].supportedProfile = Canonical(ManaakiNgaTahiAllergyIntolerance)
* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who the sensitivity is for \n [Patient](http://hl7.org/fhir/R4/patient.html)"
* rest.resource[=].searchParam[+].name = "recorder"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AllergyIntolerance-recorder"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who recorded the sensitivity \n [AllergyIntolerance.recorder](http://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.recorder)"
* rest.resource[=].searchParam[+].name = "code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Code that identifies the allergy or intolerance \n [AllergyIntolerance Code ValueSet](http://hl7.org/fhir/ValueSet/allergyintolerance-code)"
* rest.resource[=].searchParam[+].name = "category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AllergyIntolerance-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Must be one of \n* food\n* medication\n* environment\n* biologic \n [AllergyIntolerance Category ValueSet](http://hl7.org/fhir/ValueSet/allergy-intolerance-category)"
* rest.resource[=].searchParam[+].name = "clinical-status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AllergyIntolerance-clinical-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Must be one of \n* active\n * inactive\n * resolved\n[AllergyIntolerance Clinical Status ValueSet](http://hl7.org/fhir/R4/valueset-allergyintolerance-clinical.html)"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition-ManaakiNgaTahiAllergyIntolerance-definitions.html#AllergyIntolerance.id"
* rest.resource[=].searchParam[=].documentation = "[Resource Identifier](https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition-ManaakiNgaTahiAllergyIntolerance-definitions.html#AllergyIntolerance.id)"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "When the resource version last changed"

* rest.resource[0].type = #Appointment
* rest.resource[=].profile = Canonical(Appointment)
* rest.resource[=].supportedProfile = Canonical(Appointment)
* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who the sensitivity is for \n [Patient](http://hl7.org/fhir/R4/patient.html)"
* rest.resource[=].searchParam[+].name = "actor"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Appointment-actor"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Any one of the individuals participating in the appointment (Practitioner, Device, Patient, HealthcareService, PractitionerRole, RelatedPerson, Location)"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Appointment-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "proposed | pending | booked | arrived | fulfilled | cancelled | noshow | entered-in-error | checked-in | waitlist"
* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Appointment date/time"

* rest.resource[0].type = #Bundle
* rest.resource[=].profile = Canonical(Bundle)
* rest.resource[=].supportedProfile = Canonical(Bundle)
* rest.resource[=] insert GenericCRUDInteractions

* rest.resource[+].type = #CarePlan
* rest.resource[=].profile = Canonical(ManaakiNgaTahiCarePlan)
* rest.resource[=].supportedProfile = Canonical(RheumaticFeverCarePlan)
* rest.resource[=] insert ResourceDocumentation([[
This server supports two subtypes of FHIR CarePlan - refer to Profiles
1. ManaakiNgaTahiCarePlan - for care in the community health applications
1. RheumaticFeverCarePlan - for rheumatic fever health applications
]])
* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchInclude[+] = "CarePlan:encounter"
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who the care plan is for"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CarePlan-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "draft | active | on-hold | revoked | completed | entered-in-error | unknown"
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CarePlan-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who the care plan is for"
* rest.resource[=].searchParam[+].name = "_profile"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#Resource-profile"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Filter **RheumaticFeverCarePlan instances** using ?Resource-profile=https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/cinc-rheumaticfever-careplan"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"
* rest.resource[=].searchParam[+].name = "category"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#CarePlan-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Care plan search by category (SNOMED) code.  Rheumatic fever secondary prevention care plans have category=http://snomed.sct/info|320721000210102"

// rheumatic fever profiled type
* rest.resource[+].type = #CareTeam
* rest.resource[=].supportedProfile = Canonical(RheumaticFeverCareTeam)
* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=] insert ResourceDocumentation([[
This server supports one subtype of FHIR CareTeam - refer to Profiles
1. RheumaticFeverCareTeam - simply requires use of particular Condition.category codes in rheumatic fever health applications
]])
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#Patient-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The patient's official NHI identifier"
* rest.resource[=].searchParam[+].name = "category"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#CareTeam-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Rheumatic fever care teams will be found by the category code (NZ SNOMED Edition) category=http://snomed.sct/info|320741000210108"
* rest.resource[=].searchParam[+].name = "_profile"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#Resource-profile"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Filter **RheumaticFeverCareTeam instances** using ?Resource-profile=https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/cinc-rheumaticfever-careteam"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"

* rest.resource[+].type = #Condition
* rest.resource[=].profile = Canonical(ManaakiNgaTahiCondition)
* rest.resource[=].supportedProfile = Canonical(RheumaticFeverCondition)
* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=] insert ResourceDocumentation([[
This server supports two subtypes of FHIR Condition - refer to Profiles
1. ManaakiNgaTahiCondition - for care in the community health applications
1. RheumaticFeverCondition - for rheumatic fever health applications
]])
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who has the condition?"
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Condition-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who has the condition?"
* rest.resource[=].searchParam[+].name = "_profile"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#Resource-profile"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Filter **RheumaticFeverCondition instances** using ?Resource-profile=https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/cinc-rheumaticfever-condition"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"

* rest.resource[+].type = #Consent
* rest.resource[=].profile = Canonical(ManaakiNgaTahiConsent)
* rest.resource[=].supportedProfile = Canonical(ManaakiNgaTahiConsent)
* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchInclude[+] = "Consent:source-reference"
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who the consent applies to"
* rest.resource[=].searchParam[+].name = "data"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Consent-data"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The actual data reference"
* rest.resource[=].searchParam[+].name = "source-reference"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Consent-source-reference"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Search by reference to a Consent, DocumentReference, Contract  or QuestionnaireResponse"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Consent-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "draft | proposed | active | rejected | inactive | entered-in-error"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"

* rest.resource[+].type = #Encounter
* rest.resource[=].profile = Canonical(ManaakiNgaTahiEncounter)
* rest.resource[=].supportedProfile = Canonical(ManaakiNgaTahiEncounter)
* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchInclude[+] = "Encounter:diagnosis"
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The patient or group present at the encounter"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Encounter-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "planned | arrived | triaged | in-progress | onleave | finished | cancelled +"
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Encounter-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The patient or group present at the encounter"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"

* rest.resource[+].type = #MedicationRequest
* rest.resource[=].profile = Canonical(NzMedicationRequest)
* rest.resource[=].supportedProfile = Canonical(MedicationRequest)
* rest.resource[=].supportedProfile = Canonical(RheumaticFeverMedicationRequest)
* rest.resource[=] insert ResourceDocumentation([[
This server supports two profiles in addition to the base FHIR MedicationRequest resource.
1. NzMedicationRequest - from the NZ Base Implementation Guide 2.0
1. RheumaticFeverMedicationRequest - for rheumatic fever, captures the medication frequency which is the interval between appointments for benzathine injection.
]])
* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The rheumatic fever patient for whom this medication is prescribed"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Medication-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown +"
* rest.resource[=].searchParam[+].name = "medication"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/medications-medication"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Return all MedicationRequests that relate to this type of medication"

* rest.resource[+].type = #MedicationStatement
* rest.resource[=].profile = Canonical(NzMedicationStatement)
* rest.resource[=].supportedProfile = Canonical(MedicationStatement)
* rest.resource[=] insert ResourceDocumentation([[
This server supports the NZ Base IG profiles NzMedicationStatement in addition to the base MedicationStatement FHIR resource.
]])
* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The rheumatic fever patient to whom medication was administered"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Medication-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "active | completed | entered-in-error | intended | stopped | on-hold | unknown | not-taken +"
* rest.resource[=].searchParam[+].name = "medication"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/medications-medication"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Return all instances of administration of this medication"

* rest.resource[+].type = #Observation
* rest.resource[=].profile = Canonical(ManaakiNgaTahiObservation)
* rest.resource[=].supportedProfile = Canonical(ManaakiNgaTahiObservation)
* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=].searchParam[0].name = "code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Describes what was observed. Sometimes this is called the observation 'name'"
* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Observation.effective \n Obtained date/time. If the obtained element is a period, a date that falls in the period"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A unique identifier assigned to this observation."
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who the observation is for \n [Patient](http://hl7.org/fhir/R4/patient.html)"
* rest.resource[=].searchParam[+].name = "based-on"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-based-on"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Reference to the service request."
* rest.resource[=].searchParam[+].name = "encounter"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-encounter"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The Encounter resource associated with the Observation."
* rest.resource[=].searchParam[+].name = "category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The classification of the type of observation"
* rest.resource[=].searchParam[+].name = "derived-from"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-derived-from"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Related measurements the observation is made from"
* rest.resource[=].searchParam[+].name = "performer"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-performer"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who performed the observation"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The status of the observation"
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The subject that the observation is about"
* rest.resource[=].searchParam[+].name = "value-concept"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-value-concept"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The value of the observation, if the value is a CodeableConcept"
* rest.resource[=].searchParam[+].name = "value-date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-value-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "The value of the observation, if the value is a date or period of time"
* rest.resource[=].searchParam[+].name = "value-quantity"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-value-quantity"
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[=].documentation = "The value of the observation, if the value is a Quantity, or a SampledData (just search on the bounds of the values in sampled data)"
* rest.resource[=].searchParam[+].name = "value-string"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-value-string"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The value of the observation, if the value is a string, and also searches in CodeableConcept.text"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "When the resource version last changed"
* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchInclude[+] = "Observation:patient"
* rest.resource[=].searchInclude[+] = "Observation:encounter"
* rest.resource[=].searchInclude[+] = "Observation:based-on"
* rest.resource[=].searchInclude[+] = "Observation:derived-from"
* rest.resource[=].searchInclude[+] = "Observation:device"
* rest.resource[=].searchInclude[+] = "Observation:focus"
* rest.resource[=].searchInclude[+] = "Observation:has-member"
* rest.resource[=].searchInclude[+] = "Observation:part-of"
* rest.resource[=].searchInclude[+] = "Observation:performer"
* rest.resource[=].searchInclude[+] = "Observation:specimen"
* rest.resource[=].searchInclude[+] = "Observation:subject"

// rheumatic fever profiled type
* rest.resource[+].type = #Patient
* rest.resource[=].profile = Canonical(RheumaticFeverPatient)
* rest.resource[=].supportedProfile = Canonical(RheumaticFeverPatient)
* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=] insert ResourceDocumentation([[
This server supports one subsubtype of FHIR Patient (subtype of NzPatient) - refer to Profiles
1. RheumaticFeverPatient - for rheumatic fever health applications
]])
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#Patient-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The patient's official NHI identifier"
* rest.resource[=].searchParam[+].name = "_profile"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#Resource-profile"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Filter **RheumaticFeverPatient instances** using ?Resource-profile=https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/cinc-rheumaticfever-patient"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"


* rest.resource[+].type = #PlanDefinition
* rest.resource[=].supportedProfile = Canonical(ManaakiNgaTahiPlanDefinition)
* rest.resource[=].profile = Canonical(ManaakiNgaTahiPlanDefinition)
* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PlanDefinition-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "External identifier for the plan definition"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PlanDefinition-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Computationally friendly name of the plan definition"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PlanDefinition-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The current status of the plan definition"
* rest.resource[=].searchParam[+].name = "title"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PlanDefinition-title"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The human-friendly name of the plan definition"
* rest.resource[=].searchParam[+].name = "url"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PlanDefinition-url"
* rest.resource[=].searchParam[=].type = #uri
* rest.resource[=].searchParam[=].documentation = "The uri that identifies the plan definition"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"
* rest.resource[=].operation[0].name = "apply"
* rest.resource[=].operation[=].definition = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/OperationDefinition/PlanDefinition-apply"


* rest.resource[+].type = #Questionnaire
* rest.resource[=].supportedProfile = Canonical(Questionnaire)
* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Questionnaire-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "External identifier for the questionnaire"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Questionnaire-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Computationally friendly name of the questionnaire"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Questionnaire-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The current status of the questionnaire"
* rest.resource[=].searchParam[+].name = "title"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Questionnaire-title"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The human-friendly name of the questionnaire"
* rest.resource[=].searchParam[+].name = "url"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Questionnaire-url"
* rest.resource[=].searchParam[=].type = #uri
* rest.resource[=].searchParam[=].documentation = "The uri that identifies the questionnaire"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"


* rest.resource[+].type = #QuestionnaireResponse
* rest.resource[=].supportedProfile = Canonical(QuestionnaireResponse)
* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchInclude[+] = "QuestionnaireResponse:based-on"
* rest.resource[=].searchInclude[+] = "QuestionnaireResponse:encounter"
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The patient that is the subject of the questionnaire response"
* rest.resource[=].searchParam[+].name = "questionnaire"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-questionnaire"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The questionnaire the answers are provided for"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The status of the questionnaire response"
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The subject of the questionnaire response"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"

