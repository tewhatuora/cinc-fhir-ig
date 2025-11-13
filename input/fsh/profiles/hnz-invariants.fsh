Invariant: fhir-hnz-rheumaticfever-careplan-category-1
Description: "Rheumatic fever care plans must be categorised by SNOMED code  #737427001 'Clinical management plan'"
Severity: #warning
Expression: "RheumaticFeverCarePlan.category.code = '737427001'"

Invariant: hpiOrNzbnIdentifierPattern
Description: "If the identifier.system is HPI Facility ID or NZBN, the identifier.value must match the appropriate regex pattern."
Severity: #error
Expression: "%context.descendants().identifier.where(
  (system = 'https://standards.digital.health.nz/ns/hpi-facility-id' and value.matches('^F[a-zA-Z0-9]{2}[0-9]{3}-[a-zA-Z0-9]$'))
  or
  (system = 'https://standards.digital.health.nz/ns/hpi-nzbn' and value.matches('^[0-9]{13}$'))
).exists()
or
%context.descendants().identifier.where(
  system = 'https://standards.digital.health.nz/ns/hpi-facility-id' or system = 'https://standards.digital.health.nz/ns/hpi-nzbn'
).empty()"
