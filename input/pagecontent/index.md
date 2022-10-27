**Placeholder**

*This is the landing page when entering the URL of an IG or following a link to the IG. This page should contain*

- *A clear high level description of the implementation, including:*
  - *The name of the system*
  - *Who created*
  - *What it’s for*
  - *Who is expected to use it*
  - *What data is involved at a high level*
  - *What FHIR resources are used (unless this is a large list  e.g. the IPS, then this detail should be left to another page)*
- *A description of the tabs/other pages available in the IG*
- *Contact details for responsible parties*
- *[Developer experience breadcrumb/directions- approach tbc]*

For more information and examples please refer to:

- [Health NZ Standard Implementation Guide Content](https://mohits.atlassian.net/wiki/spaces/AS/pages/3018948997/Standard+Implementation+Guide+Content)
- [New Zealand NHI Implementation Guide](https://master.d3b08qop7whnnl.amplifyapp.com/)

### Outstanding Tasks

- Determine whether to continue to use the FHIR IG Publisher or migrate this content to [Simplifier](https://simplifier.net/)
- Move this content to a more appropriate source repository - it's currently located at [https://github.com/richard-hunt-mwnz/fhir-ig-test](https://github.com/richard-hunt-mwnz/fhir-ig-test)
  - Note: if we want to continue using the [IG Auto-Builder](https://github.com/FHIR/auto-ig-builder) then the content needs to be in a public GitHub repository
- Determine where the IG will be published and potentially follow the steps in [Publishing an IG](https://confluence.hl7.org/pages/viewpage.action?pageId=104580055&src=contextnavpagetreemode) and [Maintaining an IG Publication](https://confluence.hl7.org/display/FHIR/Maintaining+a+FHIR+IG+Publication?src=contextnavpagetreemode) to publish it
- Provide content for all of the placeholder sections in this IG
- Potentially provide an additional 'Developer Guide' section detailing authentication/authorisation requirements, the Request-Context header, our well-known identifiers, etc
- Potentially add further constraints to our resource profiles:
  - Additional mandatory fields
  - ValueSets and bindings for coded fields
- Investigate whether we want to publish the [IG-generated OpenAPI specification](CareInTheCommunityCapabilityStatement.openapi.json) or the OpenAPI specification we generated ourselves which includes our environment details, security requirements, custom headers, etc
- Determine whether to include the Postman Collection in the IG
- Investigate how best to document the `$apply` operation - it's not included in the generated OpenAPI specification or API page by default
- Address the remaining issues in the [QA Report](qa.html)
