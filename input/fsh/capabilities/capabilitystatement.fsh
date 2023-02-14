Instance: CareInTheCommunityCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition

* name = "CareInTheCommunityCapabilityStatement"
* title = "Care In The Community FHIR Server Capability Statement"
* status = #active
* date = "2023-02-14"
* publisher = "Te Whatu Ora"
* description = "The Manaaki Nga Tahi - Care In The Community FHIR API"
* kind = #instance
* implementation.description = "The Care In The Community Manaaki Nga Tahi FHIR API"
* implementation.url = "https://fhir.ap1.digital.health.nz/R4"
* fhirVersion = #4.0.1
* format = #json
* rest.mode = #server
* rest.security.cors = true
* rest.security.service = http://terminology.hl7.org/CodeSystem/restful-security-service#OAuth
* rest.security.extension.url = "http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris"
* rest.security.extension.extension[0].url = "token"
* rest.security.extension.extension[=].valueUri = "https://auth.integration.covid19.health.nz/oauth2/token"
* rest.security.extension.extension[+].url = "authorize"
* rest.security.extension.extension[=].valueUri = "https://auth.integration.covid19.health.nz/oauth2/authorize"
* rest.resource[0].type = #CarePlan
* rest.resource[=].profile = Canonical(ManaakiNgaTahiCarePlan)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].versioning = #versioned
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
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
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"
* rest.resource[+].type = #AllergyIntolerance
* rest.resource[=].profile = Canonical(ManaakiNgaTahiAllergyIntolerance)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].versioning = #versioned
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who the sensitivity is for"
* rest.resource[=].searchParam[+].name = "recorder"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-practitioner"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who recorded the sensitivity"
* rest.resource[=].searchParam[+].name = "clinical-status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AllergyIntolerance-clinicalStatus"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "active | inactive | resolved"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"
* rest.resource[+].type = #Condition
* rest.resource[=].profile = Canonical(ManaakiNgaTahiCondition)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].versioning = #versioned
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who has the condition?"
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Condition-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who has the condition?"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"
* rest.resource[+].type = #Encounter
* rest.resource[=].profile = Canonical(ManaakiNgaTahiEncounter)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].versioning = #versioned
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
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
* rest.resource[+].type = #QuestionnaireResponse
* rest.resource[=].profile = Canonical(ManaakiNgaTahiQuestionnaireResponse)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].versioning = #versioned
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
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
* rest.resource[+].type = #Questionnaire
* rest.resource[=].profile = Canonical(ManaakiNgaTahiQuestionnaire)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].versioning = #versioned
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
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
* rest.resource[+].type = #Consent
* rest.resource[=].profile = Canonical(ManaakiNgaTahiConsent)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].versioning = #versioned
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
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
* rest.resource[+].type = #PlanDefinition
* rest.resource[=].profile = Canonical(ManaakiNgaTahiPlanDefinition)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].versioning = #versioned
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
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
* rest.resource[+].type = #Observation
* rest.resource[=].profile = Canonical(ManaakiNgaTahiObservation)
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].versioning = #versioned
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchParam[0].name = "code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [AllergyIntolerance](allergyintolerance.html): Code that identifies the allergy or intolerance\r\n* [Condition](condition.html): Code for the condition\r\n* [DeviceRequest](devicerequest.html): Code for what is being requested/ordered\r\n* [DiagnosticReport](diagnosticreport.html): The code for the report, as opposed to codes for the atomic results, which are the names on the observation resource referred to from the result\r\n* [FamilyMemberHistory](familymemberhistory.html): A search by a condition code\r\n* [List](list.html): What the purpose of this list is\r\n* [Medication](medication.html): Returns medications for a specific code\r\n* [MedicationAdministration](medicationadministration.html): Return administrations of this medication code\r\n* [MedicationDispense](medicationdispense.html): Returns dispenses of this medicine code\r\n* [MedicationRequest](medicationrequest.html): Return prescriptions of this medication code\r\n* [MedicationStatement](medicationstatement.html): Return statements of this medication code\r\n* [Observation](observation.html): The code of the observation type\r\n* [Procedure](procedure.html): A code to identify a  procedure\r\n* [ServiceRequest](servicerequest.html): What is being requested/ordered\r\n"
* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [AllergyIntolerance](allergyintolerance.html): Date first version of the resource instance was recorded\r\n* [CarePlan](careplan.html): Time period plan covers\r\n* [CareTeam](careteam.html): Time period team covers\r\n* [ClinicalImpression](clinicalimpression.html): When the assessment was documented\r\n* [Composition](composition.html): Composition editing time\r\n* [Consent](consent.html): When this Consent was created or indexed\r\n* [DiagnosticReport](diagnosticreport.html): The clinically relevant time of the report\r\n* [Encounter](encounter.html): A date within the period the Encounter lasted\r\n* [EpisodeOfCare](episodeofcare.html): The provided date search value falls within the episode of care's period\r\n* [FamilyMemberHistory](familymemberhistory.html): When history was recorded or last updated\r\n* [Flag](flag.html): Time period when flag is active\r\n* [Immunization](immunization.html): Vaccination  (non)-Administration Date\r\n* [List](list.html): When the list was prepared\r\n* [Observation](observation.html): Obtained date/time. If the obtained element is a period, a date that falls in the period\r\n* [Procedure](procedure.html): When the procedure was performed\r\n* [RiskAssessment](riskassessment.html): When was assessment made?\r\n* [SupplyRequest](supplyrequest.html): When the request was made\r\n"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [AllergyIntolerance](allergyintolerance.html): External ids for this item\r\n* [CarePlan](careplan.html): External Ids for this plan\r\n* [CareTeam](careteam.html): External Ids for this team\r\n* [Composition](composition.html): Version-independent identifier for the Composition\r\n* [Condition](condition.html): A unique identifier of the condition record\r\n* [Consent](consent.html): Identifier for this record (external references)\r\n* [DetectedIssue](detectedissue.html): Unique id for the detected issue\r\n* [DeviceRequest](devicerequest.html): Business identifier for request/order\r\n* [DiagnosticReport](diagnosticreport.html): An identifier for the report\r\n* [DocumentManifest](documentmanifest.html): Unique Identifier for the set of documents\r\n* [DocumentReference](documentreference.html): Master Version Specific Identifier\r\n* [Encounter](encounter.html): Identifier(s) by which this encounter is known\r\n* [EpisodeOfCare](episodeofcare.html): Business Identifier(s) relevant for this EpisodeOfCare\r\n* [FamilyMemberHistory](familymemberhistory.html): A search by a record identifier\r\n* [Goal](goal.html): External Ids for this goal\r\n* [ImagingStudy](imagingstudy.html): Identifiers for the Study, such as DICOM Study Instance UID and Accession number\r\n* [Immunization](immunization.html): Business identifier\r\n* [List](list.html): Business identifier\r\n* [MedicationAdministration](medicationadministration.html): Return administrations with this external identifier\r\n* [MedicationDispense](medicationdispense.html): Returns dispenses with this external identifier\r\n* [MedicationRequest](medicationrequest.html): Return prescriptions with this external identifier\r\n* [MedicationStatement](medicationstatement.html): Return statements with this external identifier\r\n* [NutritionOrder](nutritionorder.html): Return nutrition orders with this external identifier\r\n* [Observation](observation.html): The unique id for a particular observation\r\n* [Procedure](procedure.html): A unique identifier for a procedure\r\n* [RiskAssessment](riskassessment.html): Unique identifier for the assessment\r\n* [ServiceRequest](servicerequest.html): Identifiers assigned to this order\r\n* [SupplyDelivery](supplydelivery.html): External identifier\r\n* [SupplyRequest](supplyrequest.html): Business Identifier for SupplyRequest\r\n* [VisionPrescription](visionprescription.html): Return prescriptions with this external identifier\r\n"
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [AllergyIntolerance](allergyintolerance.html): Who the sensitivity is for\r\n* [CarePlan](careplan.html): Who the care plan is for\r\n* [CareTeam](careteam.html): Who care team is for\r\n* [ClinicalImpression](clinicalimpression.html): Patient or group assessed\r\n* [Composition](composition.html): Who and/or what the composition is about\r\n* [Condition](condition.html): Who has the condition?\r\n* [Consent](consent.html): Who the consent applies to\r\n* [DetectedIssue](detectedissue.html): Associated patient\r\n* [DeviceRequest](devicerequest.html): Individual the service is ordered for\r\n* [DeviceUseStatement](deviceusestatement.html): Search by subject - a patient\r\n* [DiagnosticReport](diagnosticreport.html): The subject of the report if a patient\r\n* [DocumentManifest](documentmanifest.html): The subject of the set of documents\r\n* [DocumentReference](documentreference.html): Who/what is the subject of the document\r\n* [Encounter](encounter.html): The patient or group present at the encounter\r\n* [EpisodeOfCare](episodeofcare.html): The patient who is the focus of this episode of care\r\n* [FamilyMemberHistory](familymemberhistory.html): The identity of a subject to list family member history items for\r\n* [Flag](flag.html): The identity of a subject to list flags for\r\n* [Goal](goal.html): Who this goal is intended for\r\n* [ImagingStudy](imagingstudy.html): Who the study is about\r\n* [Immunization](immunization.html): The patient for the vaccination record\r\n* [List](list.html): If all resources have the same subject\r\n* [MedicationAdministration](medicationadministration.html): The identity of a patient to list administrations  for\r\n* [MedicationDispense](medicationdispense.html): The identity of a patient to list dispenses  for\r\n* [MedicationRequest](medicationrequest.html): Returns prescriptions for a specific patient\r\n* [MedicationStatement](medicationstatement.html): Returns statements for a specific patient.\r\n* [NutritionOrder](nutritionorder.html): The identity of the person who requires the diet, formula or nutritional supplement\r\n* [Observation](observation.html): The subject that the observation is about (if patient)\r\n* [Procedure](procedure.html): Search by subject - a patient\r\n* [RiskAssessment](riskassessment.html): Who/what does assessment apply to?\r\n* [ServiceRequest](servicerequest.html): Search by subject - a patient\r\n* [SupplyDelivery](supplydelivery.html): Patient for whom the item is supplied\r\n* [VisionPrescription](visionprescription.html): The identity of a patient to list dispenses for\r\n"
* rest.resource[=].searchParam[+].name = "encounter"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-encounter"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Multiple Resources: \r\n\r\n* [Composition](composition.html): Context of the Composition\r\n* [DeviceRequest](devicerequest.html): Encounter during which request was created\r\n* [DiagnosticReport](diagnosticreport.html): The Encounter when the order was made\r\n* [DocumentReference](documentreference.html): Context of the document  content\r\n* [Flag](flag.html): Alert relevant during encounter\r\n* [List](list.html): Context in which list created\r\n* [NutritionOrder](nutritionorder.html): Return nutrition orders with this encounter identifier\r\n* [Observation](observation.html): Encounter related to the observation\r\n* [Procedure](procedure.html): Encounter created as part of\r\n* [RiskAssessment](riskassessment.html): Where was assessment performed?\r\n* [ServiceRequest](servicerequest.html): An encounter in which this request is made\r\n* [VisionPrescription](visionprescription.html): Return prescriptions with this encounter identifier\r\n"
* rest.resource[=].searchParam[+].name = "based-on"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-based-on"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Reference to the service request."
* rest.resource[=].searchParam[+].name = "category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The classification of the type of observation"
* rest.resource[=].searchParam[+].name = "combo-code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-combo-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The code of the observation type or component type"
* rest.resource[=].searchParam[+].name = "combo-data-absent-reason"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-combo-data-absent-reason"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The reason why the expected value in the element Observation.value[x] or Observation.component.value[x] is missing."
* rest.resource[=].searchParam[+].name = "combo-value-concept"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-combo-value-concept"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The value or component value of the observation, if the value is a CodeableConcept"
* rest.resource[=].searchParam[+].name = "combo-value-quantity"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-combo-value-quantity"
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[=].documentation = "The value or component value of the observation, if the value is a Quantity, or a SampledData (just search on the bounds of the values in sampled data)"
* rest.resource[=].searchParam[+].name = "component-code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-component-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The component code of the observation type"
* rest.resource[=].searchParam[+].name = "component-data-absent-reason"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-component-data-absent-reason"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The reason why the expected value in the element Observation.component.value[x] is missing."
* rest.resource[=].searchParam[+].name = "component-value-concept"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-component-value-concept"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The value of the component observation, if the value is a CodeableConcept"
* rest.resource[=].searchParam[+].name = "component-value-quantity"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-component-value-quantity"
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[=].documentation = "The value of the component observation, if the value is a Quantity, or a SampledData (just search on the bounds of the values in sampled data)"
* rest.resource[=].searchParam[+].name = "data-absent-reason"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-data-absent-reason"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The reason why the expected value in the element Observation.value[x] is missing."
* rest.resource[=].searchParam[+].name = "derived-from"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-derived-from"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Related measurements the observation is made from"
* rest.resource[=].searchParam[+].name = "device"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-device"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The Device that generated the observation data."
* rest.resource[=].searchParam[+].name = "focus"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-focus"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The focus of an observation when the focus is not the patient of record."
* rest.resource[=].searchParam[+].name = "has-member"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-has-member"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Related resource that belongs to the Observation group"
* rest.resource[=].searchParam[+].name = "method"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-method"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The method used for the observation"
* rest.resource[=].searchParam[+].name = "part-of"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-part-of"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Part of referenced event"
* rest.resource[=].searchParam[+].name = "performer"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-performer"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who performed the observation"
* rest.resource[=].searchParam[+].name = "specimen"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-specimen"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Specimen used for this observation"
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
* rest.resource[=].searchParam[+].name = "_profile"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-profile"
* rest.resource[=].searchParam[=].type = #uri
* rest.resource[=].searchParam[=].documentation = "Profiles this resource claims to conform to"
* rest.resource[=].searchParam[+].name = "_security"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-security"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Security Labels applied to this resource"
* rest.resource[=].searchParam[+].name = "_source"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-source"
* rest.resource[=].searchParam[=].type = #uri
* rest.resource[=].searchParam[=].documentation = "Identifies where the resource comes from"
* rest.resource[=].searchParam[+].name = "_tag"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-tag"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Tags applied to this resource"
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
* rest.resource[=].searchRevInclude[0] = "*"
* rest.resource[=].searchRevInclude[+] = "ActivityDefinition:composed-of"
* rest.resource[=].searchRevInclude[+] = "ActivityDefinition:depends-on"
* rest.resource[=].searchRevInclude[+] = "ActivityDefinition:derived-from"
* rest.resource[=].searchRevInclude[+] = "ActivityDefinition:predecessor"
* rest.resource[=].searchRevInclude[+] = "ActivityDefinition:successor"
* rest.resource[=].searchRevInclude[+] = "Appointment:reason-reference"
* rest.resource[=].searchRevInclude[+] = "Appointment:supporting-info"
* rest.resource[=].searchRevInclude[+] = "AuditEvent:entity"
* rest.resource[=].searchRevInclude[+] = "Basic:subject"
* rest.resource[=].searchRevInclude[+] = "ChargeItem:service"
* rest.resource[=].searchRevInclude[+] = "ClinicalImpression:finding-ref"
* rest.resource[=].searchRevInclude[+] = "ClinicalImpression:investigation"
* rest.resource[=].searchRevInclude[+] = "ClinicalImpression:supporting-info"
* rest.resource[=].searchRevInclude[+] = "Communication:based-on"
* rest.resource[=].searchRevInclude[+] = "Communication:part-of"
* rest.resource[=].searchRevInclude[+] = "CommunicationRequest:based-on"
* rest.resource[=].searchRevInclude[+] = "Composition:entry"
* rest.resource[=].searchRevInclude[+] = "Composition:subject"
* rest.resource[=].searchRevInclude[+] = "Condition:evidence-detail"
* rest.resource[=].searchRevInclude[+] = "Consent:data"
* rest.resource[=].searchRevInclude[+] = "Contract:subject"
* rest.resource[=].searchRevInclude[+] = "DetectedIssue:implicated"
* rest.resource[=].searchRevInclude[+] = "DeviceRequest:based-on"
* rest.resource[=].searchRevInclude[+] = "DeviceRequest:prior-request"
* rest.resource[=].searchRevInclude[+] = "DiagnosticReport:result"
* rest.resource[=].searchRevInclude[+] = "DocumentManifest:item"
* rest.resource[=].searchRevInclude[+] = "DocumentManifest:related-ref"
* rest.resource[=].searchRevInclude[+] = "DocumentReference:related"
* rest.resource[=].searchRevInclude[+] = "Encounter:reason-reference"
* rest.resource[=].searchRevInclude[+] = "EventDefinition:composed-of"
* rest.resource[=].searchRevInclude[+] = "EventDefinition:depends-on"
* rest.resource[=].searchRevInclude[+] = "EventDefinition:derived-from"
* rest.resource[=].searchRevInclude[+] = "EventDefinition:predecessor"
* rest.resource[=].searchRevInclude[+] = "EventDefinition:successor"
* rest.resource[=].searchRevInclude[+] = "Evidence:composed-of"
* rest.resource[=].searchRevInclude[+] = "Evidence:depends-on"
* rest.resource[=].searchRevInclude[+] = "Evidence:derived-from"
* rest.resource[=].searchRevInclude[+] = "Evidence:predecessor"
* rest.resource[=].searchRevInclude[+] = "Evidence:successor"
* rest.resource[=].searchRevInclude[+] = "EvidenceVariable:composed-of"
* rest.resource[=].searchRevInclude[+] = "EvidenceVariable:depends-on"
* rest.resource[=].searchRevInclude[+] = "EvidenceVariable:derived-from"
* rest.resource[=].searchRevInclude[+] = "EvidenceVariable:predecessor"
* rest.resource[=].searchRevInclude[+] = "EvidenceVariable:successor"
* rest.resource[=].searchRevInclude[+] = "Immunization:reaction"
* rest.resource[=].searchRevInclude[+] = "Immunization:reason-reference"
* rest.resource[=].searchRevInclude[+] = "ImmunizationRecommendation:information"
* rest.resource[=].searchRevInclude[+] = "ImplementationGuide:resource"
* rest.resource[=].searchRevInclude[+] = "Library:composed-of"
* rest.resource[=].searchRevInclude[+] = "Library:depends-on"
* rest.resource[=].searchRevInclude[+] = "Library:derived-from"
* rest.resource[=].searchRevInclude[+] = "Library:predecessor"
* rest.resource[=].searchRevInclude[+] = "Library:successor"
* rest.resource[=].searchRevInclude[+] = "Linkage:item"
* rest.resource[=].searchRevInclude[+] = "Linkage:source"
* rest.resource[=].searchRevInclude[+] = "List:item"
* rest.resource[=].searchRevInclude[+] = "Measure:composed-of"
* rest.resource[=].searchRevInclude[+] = "Measure:depends-on"
* rest.resource[=].searchRevInclude[+] = "Measure:derived-from"
* rest.resource[=].searchRevInclude[+] = "Measure:predecessor"
* rest.resource[=].searchRevInclude[+] = "Measure:successor"
* rest.resource[=].searchRevInclude[+] = "MeasureReport:evaluated-resource"
* rest.resource[=].searchRevInclude[+] = "MedicationStatement:part-of"
* rest.resource[=].searchRevInclude[+] = "MessageHeader:focus"
* rest.resource[=].searchRevInclude[+] = "Observation:derived-from"
* rest.resource[=].searchRevInclude[+] = "Observation:focus"
* rest.resource[=].searchRevInclude[+] = "Observation:has-member"
* rest.resource[=].searchRevInclude[+] = "PaymentNotice:request"
* rest.resource[=].searchRevInclude[+] = "PaymentNotice:response"
* rest.resource[=].searchRevInclude[+] = "PlanDefinition:composed-of"
* rest.resource[=].searchRevInclude[+] = "PlanDefinition:depends-on"
* rest.resource[=].searchRevInclude[+] = "PlanDefinition:derived-from"
* rest.resource[=].searchRevInclude[+] = "PlanDefinition:predecessor"
* rest.resource[=].searchRevInclude[+] = "PlanDefinition:successor"
* rest.resource[=].searchRevInclude[+] = "Procedure:part-of"
* rest.resource[=].searchRevInclude[+] = "Procedure:reason-reference"
* rest.resource[=].searchRevInclude[+] = "Provenance:entity"
* rest.resource[=].searchRevInclude[+] = "Provenance:target"
* rest.resource[=].searchRevInclude[+] = "QuestionnaireResponse:part-of"
* rest.resource[=].searchRevInclude[+] = "QuestionnaireResponse:subject"
* rest.resource[=].searchRevInclude[+] = "ResearchDefinition:composed-of"
* rest.resource[=].searchRevInclude[+] = "ResearchDefinition:depends-on"
* rest.resource[=].searchRevInclude[+] = "ResearchDefinition:derived-from"
* rest.resource[=].searchRevInclude[+] = "ResearchDefinition:predecessor"
* rest.resource[=].searchRevInclude[+] = "ResearchDefinition:successor"
* rest.resource[=].searchRevInclude[+] = "ResearchElementDefinition:composed-of"
* rest.resource[=].searchRevInclude[+] = "ResearchElementDefinition:depends-on"
* rest.resource[=].searchRevInclude[+] = "ResearchElementDefinition:derived-from"
* rest.resource[=].searchRevInclude[+] = "ResearchElementDefinition:predecessor"
* rest.resource[=].searchRevInclude[+] = "ResearchElementDefinition:successor"
* rest.resource[=].searchRevInclude[+] = "Task:based-on"
* rest.resource[=].searchRevInclude[+] = "Task:focus"
* rest.resource[=].searchRevInclude[+] = "Task:subject"
* rest.resource[=].searchRevInclude[+] = "VerificationResult:target"
* rest.interaction.code = #transaction
