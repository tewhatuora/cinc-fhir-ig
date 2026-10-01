Instance: SharedCareFHIRAPICapabilityStatement
InstanceOf: HnzToolingCapabilityStatement
Usage: #definition

* name = "SharedCareFHIRAPICapabilityStatement"
* title = "Shared Care FHIR Server Capability Statement"
* contact[+].name = "Health New Zealand Te Whatu Ora"
* contact[=].telecom.value = "https://www.tewhatuora.govt.nz"
* contact[=].telecom.system = #url
* version = "0.4.11"
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

* rest.interaction.code = #transaction

* rest.resource[+].type = #Appointment
* rest.resource[=].supportedProfile[+] = Canonical(Appointment)
* rest.resource[=].supportedProfile[+] = Canonical(DHOAppointment)
* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=].searchInclude[+] = "*"
* rest.resource[=].searchRevInclude = "*"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#clinical-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "clinical-identifier"
* rest.resource[=].searchParam[+].name = "actor"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Appointment-actor"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Any one of the individuals participating in the appointment (Practitioner, Device, Patient, HealthcareService, PractitionerRole, RelatedPerson, Location)"
* rest.resource[=].searchParam[+].name = "appointment-type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Appointment-appointment-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Any one of the individuals participating in the appointment (Practitioner, Device, Patient, HealthcareService, PractitionerRole, RelatedPerson, Location)"
* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Appointment date/time"
* rest.resource[=].searchParam[+].name = "location"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Appointment-location"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Appointment location"
* rest.resource[=].searchParam[+].name = "part-status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Appointment-part-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Participation status of the Subject or other participant on the appointment"
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who the appointment is for \n [Patient](http://hl7.org/fhir/R4/patient.html)"
* rest.resource[=].searchParam[+].name = "practitioner"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Appointment-practitioner"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who the practitioner is \n [Practitioner](http://hl7.org/fhir/R4/practitioner.html)"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Appointment-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "proposed | pending | booked | arrived | fulfilled | cancelled | noshow | entered-in-error | checked-in | waitlist"
* rest.resource[=].searchParam[+].name = "appointment-method"
* rest.resource[=].searchParam[=].definition = "https://fhir-ig.digital.health.nz/shared-care/SearchParameter/dho-appointment-appointmentMethod"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Search by appointment delivery method (Appointment.extension:appointmentMethod)"
// Admin backfill operations - see input/fsh/operations/DHOAppointmentBackfill.fsh
* rest.resource[=].operation[+].name = "backfill"
* rest.resource[=].operation[=].definition = Canonical(DHOAppointmentBackfill)
* rest.resource[=].operation[+].name = "backfill-status"
* rest.resource[=].operation[=].definition = Canonical(DHOAppointmentBackfillStatus)
* rest.resource[=].operation[+].name = "backfill-cancel"
* rest.resource[=].operation[=].definition = Canonical(DHOAppointmentBackfillCancel)

// DH Outpatients AppointmentResponse Resource - Used to Confirm an Appointment
* rest.resource[+].type = #AppointmentResponse
* rest.resource[=].supportedProfile[+] = Canonical(DHOAppointmentResponse)
* rest.resource[=].documentation = "Dunedin Hospital Outpatients - Used to confirm an appointment"
* rest.resource[=] insert CreateUpdateInteractions
/*
* Current interaction is Create and Update only so search is disabled on this Resource.
* rest.resource[=].searchInclude[+] = "*"
* rest.resource[=].searchParam[=].documentation = "The AppointmentResponse clinical identifier"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#clinical-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "actor"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AppointmentResponse-actor"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].name = "appointment"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AppointmentResponse-appointment"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].name = "location"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AppointmentResponse-location"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].name = "part-status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AppointmentResponse-part-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AppointmentResponse-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].name = "practitioner"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AppointmentResponse-practitioner"
* rest.resource[=].searchParam[=].type = #reference
*/


* rest.resource[+].type = #Condition
* rest.resource[=].profile = Canonical(DHOCondition)
* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=].searchParam[+].name = "patient"
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

* rest.resource[+].type = #Bundle
* rest.resource[=].profile = Canonical(Bundle)
* rest.resource[=] insert GenericCRUDInteractions

* rest.resource[+].type = #Encounter
* rest.resource[=].supportedProfile[+] = Canonical(DHOEncounter)
* rest.resource[=].supportedProfile[+] = Canonical(DHOEncounterCreate)
* rest.resource[=].supportedProfile[+] = Canonical(DHOEncounterUpdate)
* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=].searchInclude[+] = "*"
* rest.resource[=].searchInclude[+] = "Encounter:diagnosis"
* rest.resource[=].searchInclude[+] = "Encounter:appointment"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#clinical-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "clinical-identifier"
* rest.resource[=].searchParam[+].name = "appointment"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Encounter-appointment"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The appointment associated with the encounter"
* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "A date within the period the Encounter lasted"
* rest.resource[=].searchParam[+].name = "date-start"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Encounter-date-start"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "The actual start date of the Encounter"
* rest.resource[=].searchParam[+].name = "date-end"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Encounter-date-end"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "The actual end date of the Encounter"
* rest.resource[=].searchParam[+].name = "location"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Encounter-location"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Location the encounter takes place"
* rest.resource[=].searchParam[+].name = "participant"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Encounter-participant"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Persons involved in the encounter other than the patient"
* rest.resource[=].searchParam[+].name = "participant-type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Encounter-participant-type"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Persons involved in the encounter other than the patient"
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The patient or group present at the encounter"
* rest.resource[=].searchParam[+].name = "practitioner"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Encounter-practitioner"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Persons involved in the encounter other than the patient"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Encounter-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "planned | arrived | triaged | in-progress | onleave | finished | cancelled +"
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Encounter-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The patient or group present at the encounter"
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "When the resource version last changed"

* rest.resource[+].type = #ServiceRequest
* rest.resource[=].supportedProfile[+] = Canonical(DHOServiceRequest)
* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ServiceRequest-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "priority"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ServiceRequest-priority"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ServiceRequest-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].name = "performer"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ServiceRequest-performer"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].name = "requester"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ServiceRequest-requester"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"
* rest.resource[=].searchRevInclude = "*"

// Dunedin Hospital Outpatients Patient Profiled type
* rest.resource[+].type = #Patient
* rest.resource[=].profile = Canonical(NzPatient)
* rest.resource[=].documentation = "Dunedin Hospital Outpatients - Patient Profile"
* rest.resource[=] insert ReadInteractions
* rest.resource[=].searchInclude[+] = "*"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Logical id of this artifact"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#Patient-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The patient's official NHI identifier"
* rest.resource[=].searchParam[+].name = "_profile"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#Resource-profile"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Filter **Patient instances** using the applicable profile canonical Url from IG"
* rest.resource[=].searchParam[+].name = "individual-family"
* rest.resource[=].searchParam[=].definition = "https://www.hl7.org/fhir/R4/searchparameter-registry.html#individual-family"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A portion of the family name of the patient - Patient.name.family"
* rest.resource[=].searchParam[+].name = "individual-given"
* rest.resource[=].searchParam[=].definition = "https://www.hl7.org/fhir/R4/searchparameter-registry.html#individual-given"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A portion of the given name of the patient - Patient.name.given"
* rest.resource[=].searchParam[+].name = "Patient-name"
* rest.resource[=].searchParam[=].definition = "https://www.hl7.org/fhir/R4/searchparameter-registry.html#Patient-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A server defined search that may match any of the string fields in the HumanName, including family, give, prefix, suffix, suffix, and/or text - Patient.name"
* rest.resource[=].searchParam[+].name = "individual-phonetic"
* rest.resource[=].searchParam[=].definition = "https://www.hl7.org/fhir/R4/searchparameter-registry.html#individual-phonetic"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A portion of either family or given name using some kind of phonetic matching algorithm - Patient.name"
* rest.resource[=].searchParam[+].name = "individual-email"
* rest.resource[=].searchParam[=].definition = "https://www.hl7.org/fhir/R4/searchparameter-registry.html#individual-email"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Patient's email contact record - Patient.telecom.where(system='email') | Person"

