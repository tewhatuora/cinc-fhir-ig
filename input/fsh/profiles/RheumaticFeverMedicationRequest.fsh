Profile: RheumaticFeverMedicationRequest
Parent: NzMedicationRequest         // conform to upcoming FHIR API design standards by using NZ Base
Title: "Rheumatic Fever Medication Request"
Description: "Describes medication planned for a rheumatic fever patient over a period of time.  Referenced as an activity in rheumatic fever care plans.  Includes an extension defining the medication frequency which determines the scheduling intervals for Appointments."
Id: nz-sharedcare-rheumaticfever-medicationrequest

* ^version = "1.0.0"
* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^purpose = "Controls values of medication frequency (secondary prophylaxis appointments) to a set of standard frequency intervals used in NZ RF care."
* insert metaContactDetail([[David Grainger]],[[david.grainger@middleware.co.nz]])

// elements modified from base profile
* extension contains
  RfMedicationRequestFrequencyExtension named medicationFrequency 0..1

// elements from base profile prohibited - NONE
