Profile: NDHOutpatient
Parent: NzPatient
Title: "New Dundein Hospital Outpatient Get Patient Profile"
Description: "This profile derives from the [Patient](https://hl7.org/fhir/R4B/patient.html) Resource with localisations using international and NZ standards including the [FHIR NZ Base IG](https://fhir.org.nz/ig/base/StructureDefinition-NzPatient.html), for use in the NZ context."

* active = true // to test patternBoolean
* birthDate 0..1 // to test not allowed elements
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#U // to test patternCodeableConcept

Profile: NDHOutpatientUpdate
Parent: NzPatient
Title: "New Dunedin Hospital Outpatient Update profile"
Description: "This profile derives from the [Patient](https://hl7.org/fhir/R4B/patient.html) Resource with localisations using international and NZ standards including the [FHIR NZ Base IG](https://fhir.org.nz/ig/base/StructureDefinition-NzPatient.html), for use in the NDH outpatients context to update patient ContactPoints only."
Id: ndh-outpatient-update

* ^version = "0.0.1"
* ^purpose = "New Dunedin Hospital outpatient update demographics profile"
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#NZ

// We only want the API to allow for updating the email address and telephone number of a patient. Based on FHIR 4.3.0 (R4B) Patient Elements
* meta.profile 1..1
* identifier 1..1
* identifier.use 1..1
* identifier.value 1..1
* identifier.system 1..1
* active 0..0
* name 0..0
* telecom 1..2 MS // a NzContactPoint which is a derivative of a [ContactPoint](https://hl7.org/fhir/R4/datatypes.html#ContactPoint)
* gender 0..0
* birthDate 0..0
* deceasedBoolean 0..0
* deceasedDateTime 0..0
* address 0..0
* maritalStatus 0..0
* multipleBirthBoolean 0..0
* multipleBirthInteger 0..0
* photo 0..0
* contact 0..0
* communication 0..0
* generalPractitioner 0..0
* managingOrganization 0..0
* link 0..0
