// --- META RULES ---
Invariant: hpi-location-url-format
Description: "Reference must be an HPI facility URL with format https://standards.digital.health.nz/ns/hpi-facility-id/FZZ111-A"
Expression: "matches('^https://standards.digital.health.nz/ns/hpi-facility-id/F[A-Za-z0-9]{2}[0-9]{3}-[A-Za-z0-9]$')"
Severity: #error

Invariant: correlation-id-required
Description: "At least one correlation identifier must be present."
Severity: #error
Expression: "meta.tag.where(code = 'hub-correlation-id' or code = 'provider-correlation-id').exists()"

Invariant: hub-correlation-guid
Description: "Hub correlation identifier must follow GUID format."
Severity: #error
Expression: "display.matches('^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$')"

RuleSet: PCTapDerivedMetaDataRules

* meta 1..1

* meta.tag ^slicing.discriminator.type = #value
* meta.tag ^slicing.discriminator.path = "code"
* meta.tag ^slicing.rules = #open

* meta.tag contains
    hubCorrelationId 0..1 and
    providerCorrelationId 0..*
* obeys correlation-id-required

// ----------------------------------------------------
// Hub Correlation ID
// ----------------------------------------------------

* meta.tag[hubCorrelationId].system 1..1
* meta.tag[hubCorrelationId].system = "https://hub.services.digital.health.nz/ns/correlation-id-type"
* meta.tag[hubCorrelationId].system ^short = "Code system for Hub correlation ID type"

* meta.tag[hubCorrelationId].code 1..1
* meta.tag[hubCorrelationId].code = #hub-correlation-id
* meta.tag[hubCorrelationId].code from CorrelationIdValueSet (required)
* meta.tag[hubCorrelationId].code ^short = "Code identifying this as a Hub correlation ID"

* meta.tag[hubCorrelationId].display 1..1
* meta.tag[hubCorrelationId].display ^short = "Hub correlation identifier"
* meta.tag[hubCorrelationId].display ^definition = "GUID assigned by the Health NZ Hub for end-to-end transaction tracing."

* meta.tag[hubCorrelationId] obeys hub-correlation-guid

// ----------------------------------------------------
// Provider Correlation ID
// ----------------------------------------------------

* meta.tag[providerCorrelationId].system 1..1
* meta.tag[providerCorrelationId].system = "https://hub.services.digital.health.nz/ns/correlation-id-type"
* meta.tag[providerCorrelationId].system ^short = "Code system for provider correlation ID type"

* meta.tag[providerCorrelationId].code 1..1
* meta.tag[providerCorrelationId].code = #provider-correlation-id
* meta.tag[providerCorrelationId].code from CorrelationIdValueSet (required)
* meta.tag[providerCorrelationId].code ^short = "Code identifying this as a provider correlation ID"

* meta.tag[providerCorrelationId].display 1..1
* meta.tag[providerCorrelationId].display ^short = "Provider tracking identifier"
* meta.tag[providerCorrelationId].display ^definition = "Tracking identifier supplied by a provider system."

// --- PATIENT Rules ---
RuleSet: ProfilePatient(property)
* {property} 1..1
* {property} only Reference(NzPatient or Patient)
* {property}.type = "Patient"
* {property}.type 1..1
* {property}.identifier 1..1
* {property}.identifier.system 1..1
* {property}.identifier.system = "https://standards.digital.health.nz/ns/nhi-id" (exactly)
* {property}.identifier.value ^short = "Must be an absolute URL reference to the patient on the NHI system. See constraints for details."
* {property}.identifier.value 1..1
* {property}.identifier.value obeys nhi-value-format

Invariant: nhi-value-format
Description: "Reference must be an NHI Patient URL with format ZZZ1111 or ZZZ11AA"
Expression: "matches('^[A-Z]{3}([0-9]{4}|[0-9]{2}[A-Z]{2})$')"
Severity: #error

RuleSet: LocalIdentifierDocs(property)
// Apply the invariants directly to the identifier element
* {property}.identifier obeys hpiOrganizationIdPattern and hpiFacilityIdPattern and nzbnPattern and hpiCpnPattern
* {property}.identifier.system obeys allowedLocalIdentifierSystems
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

RuleSet: GeneralLocalIdentifierDocs(property)
* {property}.identifier 1..1
* {property}.identifier.system 1..1
* {property}.identifier.value 1..1
* {property}.identifier.value ^short = "The actual local identifier value, e.g. ec2d6cad-1e19-46ee-accf-dc460a680710"
* {property}.identifier ^short = "A local identifier MUST be added to this section."
* {property}.identifier ^definition = "A local identifier MUST be added to this section to correlate with a local system."

// --- Best Practice Invariants ---
// Note: These expressions are now relative to the "Identifier" element itself.
// They read: "If system equals X, then value must match Regex"

Invariant: hpiOrganizationIdPattern
Description: "HPI Organisation ID must conform to format (GXXnnn-C)."
Severity: #error
Expression: "system = 'https://standards.digital.health.nz/ns/hpi-organisation-id' implies value.matches('^G[a-zA-Z0-9]{2}[0-9]{3}-[a-zA-Z0-9]$')"

Invariant: hpiFacilityIdPattern
Description: "HPI Facility ID must conform to format (FXXnnn-C)."
Severity: #error
Expression: "system = 'https://standards.digital.health.nz/ns/hpi-facility-id' implies value.matches('^F[A-Za-z0-9]{2}[0-9]{3}-[A-Za-z0-9]$')"

Invariant: nzbnPattern
Description: "NZBN must conform to format (13 digits)."
Severity: #error
Expression: "system = 'https://standards.digital.health.nz/ns/hpi-nzbn' implies value.matches('^[0-9]{13}$')"

Invariant: hpiCpnPattern
Description: "HPI CPN must conform to format (NNXXXX where N is numeric and X is alphabetic)."
Severity: #error
Expression: "system = 'https://standards.digital.health.nz/ns/hpi-person-id' implies value.matches('^[0-9]{2}[A-Za-z]{4}$')"

Invariant: allowedLocalIdentifierSystems
Description: "Identifier system must be HPI facility, HPI Organisation, HPI CPN or NZBN"
Severity: #error
Expression: "$this = 'https://standards.digital.health.nz/ns/hpi-organisation-id' or $this = 'https://standards.digital.health.nz/ns/hpi-nzbn' or $this = 'https://standards.digital.health.nz/ns/hpi-facility-id' or $this = 'https://standards.digital.health.nz/ns/hpi-person-id'"
