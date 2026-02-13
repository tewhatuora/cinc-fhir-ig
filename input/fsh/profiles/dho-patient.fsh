RuleSet: CommonPatientConstraints

* ^version = "1.0.0"
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#NZ

* insert DHODerivedMetaDataRules
* address only NzAddress
* telecom only NzContactPoint
* extension contains $sd-interpreter-required named interpreter-required 0..1
* extension[nzCitizen] ^short = "Is this person a New Zealand citizen"
* active 0..1
// If you look at the definition of a FHIR patient (https://www.hl7.org/fhir/patient.html), deceased[x] is a a choice of data types
// which (per the spec https://www.hl7.org/fhir/formats.html#choice) must resolve into only one of the options. The deceased[x]
// element also has a cardinality of one. The upshot of all of this is that a valid FHIR Patient resource can have either a
// deceasedBoolean or a deceasedDateTime but not both. The “correct” behaviour for receiving an invalid FHIR resource is undefined,
// but this is implementation specific.
// Therefore no * deceasedDateTime 0..0
* deceasedBoolean 0..0
* photo 0..0
* communication 0..0
* managingOrganization 0..0
* link 0..0
* contained 0..0
* implicitRules 0..0
* language 0..0

Profile: DHOPatient
Parent: NzPatient
Title: "Dunedin Hospital Outpatient Get Patient Profile"
Description: "This profile derives from the [Patient](https://hl7.org/fhir/R4B/patient.html) Resource with localisations using international and NZ standards including the [FHIR NZ Base IG](https://fhir.org.nz/ig/base/StructureDefinition-NzPatient.html), for use in the NZ context."
* ^purpose = "Dunedin Hospital outpatient profile"
* insert CommonPatientConstraints
* name 1..* MS
  * use 1..1 MS
    * ^short = "one of: usual / old"
  * family 1..1 MS
  * given MS
  * prefix MS
  * suffix 0..0
  * extension 0..0
  * id 0..0
* telecom 0..* MS
  * obeys dho-telecom-notification-valid-system
  * extension contains DHOTelecomNotification named notification-enabled 0..1 MS
  * extension[notification-enabled] ^short = "True if notifications can be sent to this email or SMS address"
  * extension[cp-purpose] 0..0
  * extension[notification-enabled] MS
  * period 0..0
  * system 1..1 MS
  * value 1..1 MS
  * rank 0..1
//  * extension 0..0
  * id 0..0
* birthDate 1..1 MS
// If you look at the definition of a FHIR patient (https://www.hl7.org/fhir/patient.html), deceased[x] is a a choice of data types
// which (per the spec https://www.hl7.org/fhir/formats.html#choice) must resolve into only one of the options. The deceased[x]
// element also has a cardinality of one. The upshot of all of this is that a valid FHIR Patient resource can have either a
// deceasedBoolean or a deceasedDateTime but not both. The “correct” behaviour for receiving an invalid FHIR resource is undefined,
// but this is implementation specific.
// Therefore no * deceasedDateTime 0..0
* deceasedBoolean 0..0
* address 0..* MS
  * extension[domicile-code] 0..1 MS
    * valueCodeableConcept.coding 0..1 MS
    * valueCodeableConcept.coding.code 0..1 MS
    * valueCodeableConcept.coding.system 0..1 MS
    * valueCodeableConcept.coding.display 0..1 MS
    * valueCodeableConcept.coding.version 0..0
    * valueCodeableConcept.coding.userSelected 0..0
    * valueCodeableConcept.text 0..1
    * id 0..0
  * extension[suburb] 0..1 MS
  * use 1..1 MS
  * type 1..1 MS
  * type ^short = "PHYSICAL | POSTAL"
  * text 0..0
  * line 0..2 MS
  * city 0..1 MS
  * district 0..0
  * state 0..1 MS       // req'd for foreign addresses
  * postalCode 0..1 MS
  * country 0..1 MS
  * period 0..0
  * id 0..0
* maritalStatus 0..1
* multipleBirth[x] 0..1
* contact 0..* MS
  * relationship from $vs-patient-contact-relationship
  * extension contains PatientContactRole named role 0..*
  * name 1..1 MS
    * use 0..0
    * text 1..1 MS
    * family 1..1 MS
    * given MS
    * prefix 0..1 MS
    * suffix 0..0
    * extension 0..0
    * id 0..0
  * telecom 0..* MS
    * system 1..1 MS
    * value 1..1 MS
    * use 1..1 MS
    * period 0..0
    * extension 0..0
    * id 0..0
  * address 0..0
  * gender 0..0
  * organization 0..0
  * period 0..1 MS
  * id 0..0
* generalPractitioner only Reference(NzOrganization or NzPractitioner or NzPractitionerRole)
* extension[ethnicity] 0..*

Profile: DHOPatientUpdate
Parent: NzPatient
Title: "Dunedin Hospital Outpatient Update profile"
Description: "This profile derives from the [Patient](https://hl7.org/fhir/R4B/patient.html) Resource with localisations using international and NZ standards including the [FHIR NZ Base IG](https://fhir.org.nz/ig/base/StructureDefinition-NzPatient.html), for use in the DH outpatients context."
* insert CommonPatientConstraints
* name 0..0
* telecom 1..* MS
  * obeys dho-telecom-notification-valid-system
  * extension contains DHOTelecomNotification named notification-enabled 0..1 MS
  * extension[notification-enabled] ^short = "True if notifications can be sent to this email or SMS address"
  * extension[cp-purpose] 0..0
  * extension[notification-enabled] MS
  * period 0..0
  * system 1..1 MS
  * value 1..1 MS
  * use 1..1 MS
  * rank 0..1
//  * extension 0..0
  * id 0..0
* birthDate 0..0
* address 0..0
* maritalStatus 0..0
* multipleBirthBoolean 0..0
* contact 0..0
* generalPractitioner 0..0
* managingOrganization 0..0
* extension[ethnicity] 0..0

Invariant: dho-telecom-notification-valid-system
Description: "The notification-enabled extension should only be present when the telecom system is 'email', 'sms', or 'phone' with use 'mobile'."
Severity: #warning
Expression: "extension.where(url = 'https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/dho-telecom-notification').exists() implies (system = 'email' or system = 'sms' or (system = 'phone' and use = 'mobile'))"
