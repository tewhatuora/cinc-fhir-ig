Invariant: fhir-hnz-rheumaticfever-careplan-category-1
Description: "Rheumatic fever care plans must be categorised by SNOMED code  #737427001 'Clinical management plan'"
Severity: #warning
Expression: "RheumaticFeverCarePlan.category.code = '737427001'"

Invariant: hpiOrNzbnIdentifierPattern
Description: "Identifiers with system 'https://standards.digital.health.nz/ns/hpi-organisation-id', 'https://standards.digital.health.nz/ns/hpi-facility-id' or 'https://standards.digital.health.nz/ns/hpi-nzbn' must conform to the NZ HPI/NZBN identifier patterns."
Severity: #error
Expression: "%context.descendants().identifier.all(
  (system = 'https://standards.digital.health.nz/ns/hpi-organisation-id' implies value.matches('^G[a-zA-Z0-9]{2}[0-9]{3}-[a-zA-Z0-9]$')) and
  (system = 'https://standards.digital.health.nz/ns/hpi-facility-id' implies value.matches('^F[a-zA-Z0-9]{2}[0-9]{3}-[a-zA-Z0-9]$')) and
  (system = 'https://standards.digital.health.nz/ns/hpi-nzbn' implies value.matches('^[0-9]{13}$'))
).exists()
or
%context.descendants().identifier.where(
  system = 'https://standards.digital.health.nz/ns/hpi-organisation-id' or
  system = 'https://standards.digital.health.nz/ns/hpi-facility-id' or
  system = 'https://standards.digital.health.nz/ns/hpi-nzbn'
).empty()"
