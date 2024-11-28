<!-- markdownlint-disable MD010 MD041 MD033-->

## Authentication / Authorization

In order to make requests against this API clients must:

- Obtain an access token from the OAuth token endpoint using the client credentials issued to their organisation,

- Pass the access token as a bearer token in the `Authorization` header of all requests, along with a `Correlation-Id` header,

- Include a `Request-Context` header containing a Base64-encoded JSON object detailing the user making the request in the following structure:

```json
{
  "userIdentifier": "11AAbb@#",
  "userRole": "Practitioner",
  "secondaryIdentifiers": {
    "use": "official",
    "system": "https://standards.digital.health.nz/ns/hpi-person-id",
    "value": "99ZZFX"
  },
  "encryptedClaims": [],
  "encryptedKid": "01"
}
```

<p>&nbsp;</p>

## Well Known Resource Identifiers

Some resources (Plan Definitions and Questionnaires) are defined by Te Whatu Ora and can be searched for using their well-known identifiers.  
Please refer to the example `identifier` parameters that can be supplied to the `GET /PlanDefinition` and `GET /Questionnaire` operations for
the current set of well-known identifiers.

## FHIR resource profile-based validation

This FHIR server validates all instance payloads on FHIR resource creation/update requests.

It is recommended that **all** resource instances created on this server **claim conformance to a [profile](./artifacts.html) in this Implementation Guide**. This lets the server perform validation of a resource creation/update payload against the IG profile, rather than using the generic FHIR R4 specification of the resource.

### Claiming a profile in resource creation / update

API Consumers SHOULD pass the profile canonical url in the `meta.profile` element of the instance payload.

**Example:**

```json
"meta" : {
  "profile" : ["https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/nz-sharedcare-rheumaticfever-condition"]
}
```

### Profile Versioning behaviour

This server supports versioned profiles indicated by the **|n.n.n** FHIR semantic versioning syntax.

A resource payload MAY claim a specific version of a resource profile if that instance representation relies on version-specific profile features.

1. When a resource payload claims a *non-versioned* profile url, this server validates using the *latest profile version* in its server configuration.
1. When a resource payload contains *no profile url* claim, this server validates using the standard HL7 FHIR R4 profile.
1. If a resource payload claims a *non-existent* profile version url, this server will reject the operation with a `400 Bad Request` and message "Profile reference '{{URL}}' has not been checked because it is unknown"

### Resource retrieval by profile
Once resources are created, API consumers can retrieve by profile, and if desired, profile version.

**Example:**

Retrieve all condition resources using version 1.0.0:

`GET /Condition?_profile=https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/nz-sharedcare-rheumaticfever-condition|1.0.0`

Retrieve all condition resources using any version of a profile:

`GET /Condition?_profile=https://fhir-ig.digital.health.nz/shared-care/StructureDefinition/nz-sharedcare-rheumaticfever-condition`

---

## Field level request encryption

The FHIR server supports certain FHIR resource fields to be provided in the create or update request in an encrypted format, to prevent certain data such as PII being transmitted in plain text.

The currently supported fields for this feature are:

- "subject.identifier.value"
- "subject.display"
- "patient.birthDate"
- "patient.gender"
- "patient.telecom"

When this feature is used, applicable request properties can be provided to the server as an encrypted value, where **the value is stored within the FHIR server unencrypted**.
When the FHIR resource is subsequently read, the plain text value will be returned.

To use this feature, the request must include the below attributes:

- the `Request-Context` header MUST contain an `encryptedClaims` array, which MUST include valid fields supported by the server. A request with unsupported claims will be rejected
- the `Request-Context` header MUST contain an `encryptionKid` string to indicate which public key has been used for encryption, which should be the `kid` of the key used.
- the fields indicated in the `encryptedClaims` array MUST be encrypted using a valid public key as provided by the FHIR server JWKS endpoint, with base64 encoding. If the value
  cannot be decrypted successfully, due to a client encryption error or invalid public key, an error will be returned.

It is recommended to cache the response from the JWKS endpoint to avoid performance impacts.

### Field encryption code sample in Node.js

```js
// Node.js 18+

const crypto = require("crypto");
const jose = require("node-jose"); // v2.2.0

const FHIR_SERVER_BASE_URL = "https://fhir.example.com"; // replace with real FHIR server url

const getPublicKey = async () => {
  return fetch(`${FHIR_SERVER_BASE_URL}/.well-known/jwks.json`)
    .then((response) => response.json())
    .then(async (body) => {
      const key = await jose.JWK.asKey(body.keys[0]);
      return key.toPEM();
    });
};

const encryptText = async (plainText) => {
  const encrypted = crypto.publicEncrypt(
    {
      key: await getPublicKey(),
      padding: crypto.constants.RSA_PKCS1_OAEP_PADDING,
      oaepHash: "sha256",
    },
    Buffer.from(plainText)
  );
  return Buffer.from(encrypted).toString("base64");
};

(async function () {
  const stringToEncrypt = "Carey Carrington";
  console.log(`Encrypting string: ${stringToEncrypt}`);
  const encrypted = await encryptText(stringToEncrypt);
  console.log(`Encrypted value as Base64: ${encrypted}`);
})();
```
<!-- markdownlint-disable MD033 -->
<img src="request-encryption.png" width="100%">

## FHIR Resource references

FHIR [Resource References](https://build.fhir.org/references.html) are commonplace and necessary to represent real health information over a range of FHIR resource types.

### Types of FHIR references

The following examples of FHIR references are acceptable in POST/PUT payloads sent by consumers of the *Te Whatu Ora Shared Care* API.

#### Relative literal RESTful references

`"reference": "Patient/"e5d44ac6-cc79-4e80-bea4-225e5a93a8b7"`

This API **DOES NOT** resolve the reference (test if the instance exists) or check that the resource type is actually supported by the API.  API consumers are expected to ensure that the referenced RESTful resource path is correct when POST/PUTing a payload.

#### Absolute Url references

`"reference": "https://fhir.example.org/base/Patient/123"`

This API **DOES NOT** resolve absolute Urls (that is, it does not check that the referenced instance exists or is reachable).  API consumers are expected to ensure that all such references are correct when POST/PUTing payloads.

#### References by logical external identifier

```json
 "author" : {
    "type" : "Organization",
    "identifier" : {
      "use" : "official",
      "system" : "https://standards.digital.health.nz/ns/hpi-organisation-id",
      "value" : "G0M086-B"
    },
    "display" : "Te Tai Tokerau Rheumatic Fever Secondary Prevention Service"
  },
```

This API **DOES NOT** resolve external logical identifier references.  API consumers are expected to ensure that all such references are correct when POST/PUTing payloads.

#### urn:uuid references in Bundles

These are commonly [used in Bundles](https://build.fhir.org/bundle.html#references) to make links between instances in the same Bundle.

This API does support inter-instance linking in POSTed FHIR Bundles, using `urn:uuid` style references.

The following excerpt shows valid use of `urn:uuid`s in a POST Bundle which creates an Encounter and a QuestionnaireResponse instance, and lets the API form the reference from the QR to the Encounter.

<!-- markdownlint-disable MD010 -->
```json
{
  "resourceType": "Bundle",
  "type": "transaction",
  "entry": [
  {
    "fullUrl": "urn:uuid:Encounter-temporary-id",
    "resource": {
      "resourceType": "Encounter",
      ...
    }
  },
  {
    "fullUrl": "urn:uuid:QR-temporary-id",
    "resource": {
      "resourceType": "QuestionnaireResponse",
      "encounter": {
        "reference": "urn:uuid:Encounter-temporary-id"
      },
      ...
    }
  },
  ...
}
```

### Reference validation in the Te Whatu Ora Shared Care API

The *Te Whatu Ora Shared Care* API does a limited amount of validation of references.  API consumers that send payloads containing the following errors will get `400 Bad Request` errors.

| Type of reference | Invalid example | Response | Client's recourse |
| :-------------- | :----------------------------- | :--------- | :-------------- |
| null relative literal reference | `"reference": "Patient/"` | 400 Bad Request Error | Fix the id and resubmit. |
| invalid Id in relative literal ref | `"reference": "Patient/A2A3-B7B"` (not a valid FHIRWorks UUID) | 400 Bad Request Error | Fix the id and resubmit. |
| wrong resource type in reference path | `"reference": "CareTeam/{{Patient UUID}}` in a Reference(Patient) element | 400 Bad Request Error | Fix the resource type path and resubmit. |
| mismatched type to reference path | `"type": "CareTeam",`<br>`"reference": "Patient/{{valid existing Patient UUID}},` | 400 Bad Request Error | Fix `"type":"xx"` and resubmit. |
