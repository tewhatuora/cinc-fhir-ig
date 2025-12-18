// Rest resource Create and Update operations
RuleSet: CreateUpdateInteractions
* interaction[0].code = #create
* interaction[+].code = #update
* versioning = #versioned
* readHistory = false
* updateCreate = true
* conditionalCreate = false
* conditionalRead = #not-supported
* conditionalUpdate = false
* conditionalDelete = #not-supported

// Rest resource Read and Update operations
RuleSet: ReadUpdateInteractions
* interaction[0].code = #read
* interaction[+].code = #update
* interaction[+].code = #vread
* interaction[+].code = #search-type
* versioning = #versioned
* readHistory = false
* updateCreate = false
* conditionalCreate = false
* conditionalRead = #not-supported
* conditionalUpdate = false
* conditionalDelete = #not-supported

// --- META RULES ---
Invariant: dho-hpi-location-url-format
Description: "Reference must be an HPI facility URL with format https://standards.digital.health.nz/ns/hpi-facility-id/FZZ111-A"
Expression: "matches('^https://standards.digital.health.nz/ns/hpi-facility-id/F[A-Za-z0-9]{2}[0-9]{3}-[A-Za-z0-9]$')"
Severity: #error

RuleSet: DHODerivedMetaDataRules
* meta.tag ^slicing.discriminator.type = #value
* meta.tag ^slicing.discriminator.path = "system"
* meta.tag ^slicing.rules = #open
* meta.tag contains correlationId 1..1

* meta.tag[correlationId].system = "https://hub.services.digital.health.nz/ns/correlation-id" (exactly)
* meta.tag[correlationId].code 1..1

* meta.source 1..1
* meta.source obeys dho-hpi-location-url-format
* meta.source ^short = "HPI Facility ID from where the record is sourced"
* meta.source ^definition = "Captures the source of the record. This must contain the HPIFacilityID e.g. https://standards.digital.health.nz/ns/hpi-facility-id/FZZ111-A"

// --- PATIENT Rules ---
RuleSet: DHOProfilePatient(property)
* {property} 1..1
* {property} only Reference(NzPatient or Patient)
* {property}.type = "Patient"
* {property}.type 1..1
* {property}.identifier 1..1
* {property}.identifier.system 1..1
* {property}.identifier.system = "https://standards.digital.health.nz/ns/nhi-id" (exactly)
* {property}.identifier.value ^short = "Must be an absolute URL reference to the patient on the NHI system. See constraints for details."
* {property}.identifier.value 1..1
* {property}.identifier.value obeys dho-nhi-value-format

Invariant: dho-nhi-value-format
Description: "Reference must be an NHI Patient URL with format ZZZ1111 or ZZZ11AA"
Expression: "matches('^[A-Z]{3}([0-9]{4}|[0-9]{2}[A-Z]{2})$')"
Severity: #error

RuleSet: DHOLocalIdentifierDocs(property)
// Apply the invariants directly to the identifier element
* {property}.identifier obeys DHOhpiOrganizationIdPattern and DHOhpiFacilityIdPattern and DHOnzbnPattern and DHOhpiCpnPattern
* {property}.identifier.system obeys DHOallowedLocalIdentifierSystems
* {property}.identifier 1..1
* {property}.identifier.system 1..1
* {property}.identifier.value 1..1
* {property}.identifier.use ^short = "The local identifier use SHOULD be set to official."
* {property}.identifier.system ^short = "The system identifier for the organization, facility or nzbn"
* {property}.identifier.value ^short = "The actual local identifier value, e.g. GZZ999-Z"
* {property}.identifier ^short = "A local identifier MUST be added to this section."
* {property}.identifier ^definition = "A local identifier MUST be added to this section to correlate the organization, facility or nzbn."
* {property}.identifier.system ^example[+].label = "HPI Organisation ID"
* {property}.identifier.system ^example[=].valueUri = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* {property}.identifier.value ^example[+].label = "Example HPI Org ID"
* {property}.identifier.value ^example[=].valueString = "GZZ999-Z"

RuleSet: DHOGeneralLocalIdentifierDocs(property)
* {property}.identifier 1..1
* {property}.identifier.system 1..1
* {property}.identifier.value 1..1
* {property}.identifier.value ^short = "The actual local identifier value, e.g. ec2d6cad-1e19-46ee-accf-dc460a680710"
* {property}.identifier ^short = "A local identifier MUST be added to this section."
* {property}.identifier ^definition = "A local identifier MUST be added to this section to correlate with a local system."

// --- Best Practice Invariants ---
// Note: These expressions are now relative to the "Identifier" element itself.
// They read: "If system equals X, then value must match Regex"

Invariant: DHOhpiOrganizationIdPattern
Description: "HPI Organisation ID must conform to format (GXXnnn-C)."
Severity: #error
Expression: "system = 'https://standards.digital.health.nz/ns/hpi-organisation-id' implies value.matches('^G[a-zA-Z0-9]{2}[0-9]{3}-[a-zA-Z0-9]$')"

Invariant: DHOhpiFacilityIdPattern
Description: "HPI Facility ID must conform to format (FXXnnn-C)."
Severity: #error
Expression: "system = 'https://standards.digital.health.nz/ns/hpi-facility-id' implies value.matches('^F[A-Za-z0-9]{2}[0-9]{3}-[A-Za-z0-9]$')"

Invariant: DHOnzbnPattern
Description: "NZBN must conform to format (13 digits)."
Severity: #error
Expression: "system = 'https://standards.digital.health.nz/ns/hpi-nzbn' implies value.matches('^[0-9]{13}$')"

Invariant: DHOhpiCpnPattern
Description: "HPI CPN must conform to format (NNXXXX where N is numeric and X is alphabetic)."
Severity: #error
Expression: "system = 'https://standards.digital.health.nz/ns/hpi-person-id' implies value.matches('^[0-9]{2}[A-Za-z]{4}$')"

Invariant: DHOallowedLocalIdentifierSystems
Description: "Identifier system must be HPI facility, HPI Organisation, HPI CPN or NZBN"
Severity: #error
Expression: "$this = 'https://standards.digital.health.nz/ns/hpi-organisation-id' or $this = 'https://standards.digital.health.nz/ns/hpi-nzbn' or $this = 'https://standards.digital.health.nz/ns/hpi-facility-id' or $this = 'https://standards.digital.health.nz/ns/hpi-person-id'"

// --- AppointmentResponse Rules ---
Invariant: DHOparticipantType-or-actor
Description: "Either participantType or actor must be specified."
Severity: #error
Expression: "participantType.exists() or actor.exists()"
