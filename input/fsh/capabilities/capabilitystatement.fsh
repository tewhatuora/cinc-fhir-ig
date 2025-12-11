Instance: SharedCareFHIRAPICapabilityStatement
InstanceOf: HnzToolingCapabilityStatement
Usage: #definition

* name = "SharedCareFHIRAPICapabilityStatement"
* title = "Shared Care FHIR Server Capability Statement"
* contact[+].name = "Health New Zealand Te Whatu Ora"
* contact[=].telecom.value = "https://www.tewhatuora.govt.nz"
* contact[=].telecom.system = #url
* version = "0.4.7"
* status = #active
* date = "2024-07-03"
* publisher = "Te Whatu Ora"
* description = "Health NZ | Te Whatu Ora Shared Care FHIR API"
* kind = #instance
* implementation.description = "Health NZ | Te Whatu Ora Shared Care FHIR API"
* implementation.url = "https://fhir.api.digital.health.nz/R4"
* fhirVersion = #4.0.1
* format = #json
* rest.mode = #server
* rest.security.cors = true
* rest.security.service = #SMART-on-FHIR
* rest.security.extension.url = "http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris"
* rest.security.extension.extension[+].url = "token"
* rest.security.extension.extension[=].valueUri = "https://ppd.auth.services.health.nz/realms/hnz-integration/protocol/openid-connect/token"
* rest.security.extension[+].url = "http://fhir-registry.smarthealthit.org/StructureDefinition/capabilities"
* rest.security.extension[=].valueCode = #client-confidential-symmetric

* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[+].url = Canonical(HnzCustomHeadersExtension)
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[key].valueString = "X-Correlation-Id"
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[value].valueUri = "https://raw.githubusercontent.com/tewhatuora/schemas/main/shared-care/Correlation-Id.json"
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[required].valueBoolean = true
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[+].extension[key].valueString = "Request-Context"
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[value].valueUri = "https://raw.githubusercontent.com/tewhatuora/schemas/main/shared-care/Request-Context.json"
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[required].valueBoolean = true
* extension[HnzApiSpecBuilderExtension].extension[licenseURL].valueUri = "https://www.tewhatuora.govt.nz/assets/Our-health-system/Digital-health/Digital-Service-Hub/API-Access-and-Use-Agreement.docx"
* extension[HnzApiSpecBuilderExtension].extension[licenseName].valueString = "Health New Zealand Digital Services Hub API Access and Use Agreement"
* extension[HnzApiSpecBuilderExtension].extension[externalDocs].valueUri = "https://fhir-ig.digital.health.nz/shared-care"

//* rest.interaction.code = #transaction

// DH Outpatients AppointmentResponse Resource - Used to Confirm an Appointment
* rest.resource[+].type = #AppointmentResponse
* rest.resource[=].supportedProfile[+] = Canonical(DHOutpatientAppointmentResponse)
* rest.resource[=].documentation = "Dunedin Hospital Outpatients - Used to confirm an appointment"
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].searchInclude[+] = "*"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#clinical-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The AppointmentResponse clinical identifier"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"

* rest.resource[+].type = #Encounter
* rest.resource[=].supportedProfile[+] = Canonical(DHOutpatientEncounter)
* rest.resource[=].supportedProfile[+] = Canonical(DHOutpatientEncounterCreate)
* rest.resource[=].supportedProfile[+] = Canonical(DHOutpatientEncounterUpdate)
* rest.resource[=].supportedProfile[+] = Canonical(DHOutpatientEncounterDelete)
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].searchInclude[+] = "*"
* rest.resource[=].searchInclude[+] = "Encounter:appointment"
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The patient or group present at the encounter"
* rest.resource[=].searchParam[+].name = "appointment"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-identifer"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The appointment associated with the encounter"
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

// Dunedin Hospital Outpatients Patient Profiled type
* rest.resource[+].type = #Patient
* rest.resource[=].profile = Canonical(NzPatient)
* rest.resource[=].documentation = "Dunedin Hospital Outpatients - Patient Profile"
* rest.resource[=].supportedProfile[+] = Canonical(DHOutpatientUpdate)
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchInclude[+] = "*"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#PatientIdentifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The patient's official NHI identifier"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Patient name"
