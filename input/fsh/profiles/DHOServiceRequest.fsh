// ------------------------------
// Profile
// ------------------------------
Profile: DHOServiceRequest
Parent: ServiceRequest
Id: DHOServiceRequest
Title: "DHO Service Request Profile"
Description: "This profile derives from the [ServiceRequest](https://hl7.org/fhir/R4B/servicerequest.html) Resource, providing a lightweight referral/order resource for use in the Dunedin Hospital Outpatients context."
* ^version = "0.0.1"
* ^purpose = "Lightweight Dunedin Hospital Outpatient Service Request used to represent referrals/orders for outpatient services"
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ

// ---------------------------------------------------------
// Inserts
// ---------------------------------------------------------
* insert DHODerivedMetaDataRules
* insert DHOProfilePatient(subject)

// ---------------------------------------------------------
// Identifier metadata
// ---------------------------------------------------------
* identifier 0..*
  * use 0..1 MS
  * system 0..1 MS
  * value 1..1 MS
  * period 0..0
  * assigner 0..1
  * id 0..0
* identifier ^short = "External (provider) and Health NZ business identifiers"

// ---------------------------------------------------------
// Cardinality tightening
// ---------------------------------------------------------
* status 1..1 MS
* intent 1..1 MS
* category 0..1
* priority 0..1 MS
* code 1..1 MS
* encounter 0..1
* occurrence[x] 0..1
* occurrence[x] only dateTime or Period
* authoredOn 0..1 MS
* requester 0..1 MS
* performer 0..* MS
* reasonCode 0..*
* reasonReference 0..*
* locationReference 0..1
* note 0..*
* patientInstruction 0..1

// ---------------------------------------------------------
// Prohibited elements (lightweight profile)
// ---------------------------------------------------------
* asNeeded[x] 0..0
* doNotPerform 0..0
* basedOn 0..0
* replaces 0..0
* requisition 0..0
* bodySite 0..0
* quantity[x] 0..0
* orderDetail 0..0
* performerType 0..0
* locationCode 0..0
* insurance 0..0
* supportingInfo 0..0
* specimen 0..0
* relevantHistory 0..0
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* implicitRules 0..0
* language 0..0
* modifierExtension 0..0

// ---------------------------------------------------------
// Terminology bindings
// ---------------------------------------------------------
* code from DHOHealthSpecialityVS (extensible)

// ---------------------------------------------------------
// Reference constraints
// ---------------------------------------------------------
* encounter only Reference(DHOEncounter or Encounter)
* requester only Reference(NzPractitioner or NzPractitionerRole or NzOrganization)
* performer only Reference(NzPractitioner or NzPractitionerRole or NzHealthcareService or NzOrganization)
* locationReference only Reference(DHOLocation)

// --------------------------------------------------------
// Short Descriptions
// --------------------------------------------------------
* code ^short = "The specialty or service being requested"
* requester ^short = "The clinician or organisation making the referral"
* performer ^short = "The clinician, team or service the referral is directed to"
* locationReference ^short = "The location the referred service will be delivered at"
