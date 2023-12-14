## Te Whatu Ora Shared Care FHIR API Implementation Guide

This is the Implementation Guide for the [HL7® FHIR©](http://hl7.org/fhir) interface.  

The *Te Whatu Ora Shared Care API* covers two solution areas at present:

1. National Shared Care Plan service used to coordinate community care.
1. Rheumatic fever patient register and care plan for coordinated rheumatic fever care including secondary prophylaxis (preventative treatment) appointments

This IG brings together all the artifacts necessary to understand and use the FHIR API.

It is based on [FHIR R4](http://hl7.org/fhir/) and NZBase IG 2.0.

### Warning: The official Url of this IG will soon be changing
  
The official Url of this Implementation Guide is expected to change in early 2024.

The Url domain will move to `digital.health.nz` and the IG will likely be renamed.

Developers of applications that consume this API are advised to make the official Url base configurable in their applications -- the base Url is currently `https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/`

## Description of tabs

- [Business Context](./businessContext.html): Overview of shared care scenarios and use cases this API is intended to support

- [Profiles](./artifacts.html#structures-resource-profiles): A list of the profiles that are defined by the guide.

- Rheumatic Fever care plans - Group of links to rheumatic fever data specifications and models

- API Developer Guide - Information for developers about the *Te Whatu Ora Shared Care FHIR API*

- Data Consent - Describes consent-based access controls, and Consent-related examples. 

- [Artifact Index](artifacts.html): A page with all artifacts (Logical Models, Profiles, Extensions, Terminology and others) defined in this guide. This page largely duplicates information in the Profiles and Extensions tab.

- [FAQ](./faq.html): Frequently Asked Questions

- Support: Changelog and IG artifact downloads.
