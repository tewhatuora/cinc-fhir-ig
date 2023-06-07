## Authentication/Authorisation

In order to make requests against this API clients must:


- Obtain an access token from the OAuth token endpoint using the client credentials issued to their organisation.

- Pass the access token as a bearer token in the `Authorization` header of all requests, along with an API key in the `X-Api-Key` header.

- Include a `Request-Context` header containing a Base64-encoded JSON object detailing the user making the request in the following structure:


```
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


Some resources (Plan Definitions and Questionnaires) are defined by Te Whatu Ora and can be searched for using their well-known identifiers.  Please refer to the example `identifier` parameters that can be supplied to the `GET /PlanDefinition` and `GET /Questionnaire` operations for the current set of well-known identifiers.


## Field level request encryption

The FHIR server supports certain FHIR resource fields to be provided in the create or update request in an encrypted format, to prevent certain data such as PII being transmitted in plain text.

The currently supported fields for this feature are:
- "subject.identifier.value"
- "subject.display"
- "patient.birthDate"
- "patient.gender"
- "patient.telecom"

When this feature is used, applicable request properties can be provided to the server as an encrypted value, where **the value is stored within the FHIR server unencrypted**. When the FHIR resource is subsequently read, the plain text value will be returned.

To use this feature, the request must include the below attributes:

- the `Request-Context` header MUST contain an `encryptedClaims` array, which MUST include valid fields supported by the server. A request with unsupported claims will be rejected
- the `Request-Context` header MUST contain an `encryptionKid` string to indicate which public key has been used for encryption, which should be the `kid` of the key used.
- the fields indicated in the `encryptedClaims` array MUST be encrypted using a valid public key as provided by the FHIR server JWKS endpoint, with base64 encoding. If the value cannot be decrypted successfully, due to a client encryption error or invalid public key, an error will be returned.

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

<img src="request-encryption.png" width="800">
