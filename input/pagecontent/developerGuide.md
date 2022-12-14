# Authentication/Authorisation

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
  }
}
```

<p>&nbsp;</p>

# Well Known Resource Identifiers


Some resources (Plan Definitions and Questionnaires) are defined by Te Whatu Ora and can be searched for using their well-known identifiers.  Please refer to the example `identifier` parameters that can be supplied to the `GET /PlanDefinition` and `GET /Questionnaire` operations for the current set of well-known identifiers.
