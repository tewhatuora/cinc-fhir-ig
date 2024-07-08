# cinc-fhir-ig
FHIR Implementation Guide for the Shared Care API including support for:

- Care in the Community COVID-19 care plans
- Rheumatic fever national coordination solution -- patient registration, care plans and secondary prophylaxis medication

The Canonical URL of this Implementation Guide is [https://fhir-ig.digital.health.nz/shared-care](https://fhir-ig.digital.health.nz/shared-care)

This IG depends on:

- FHIR R4B
- NZ base v3.0.0 [NZ base IG](https://fhir.org.nz/ig/base/index.html)

## Local development

`_updatePublisher.sh` - Download the latest FHIR Publisher

`_genonce.sh` - Build the IG using the latest FHIR Publisher

`_genopenapi.sh` - Generate a HNZ OpenAPI specification. Run after `_genonce.sh` to avoid changes being lost
