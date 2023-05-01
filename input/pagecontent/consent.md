The Manaaki Ngātahi FHIR service, in a number of cases, will require a `Consent` resource that facilitates the sharing of data related to that consent. The details of this resource is available in the [Consent Structure Definition](./StructureDefinition-ManaakiNgaTahiConsent.html). 

The image below illustrates an example of consent application

![Consent](./consent.png)

## API behaviours

When a resource requiring Consent is requested either by a read, vread or search query, the API will determine if a valid `Consent` is active for the resource. If this is not found, the below outcomes will be returned to the consumer.

### search

`GET /{consentedResourceType}?_count=25`

Response status: `200`
Response body:

```json
{
    "resourceType": "Bundle",
    "id": "38ccf3b4-2bd6-4076-bfa2-66bef78d1fbf",
    "meta": {
        "lastUpdated": "2022-12-15T19:55:07.892Z",
        "security": [
            {
                "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationValue",
                "code": "REDACTED",
                "display": "redacted"
            }
        ]
    },
    "total": 41,
    "entry": [{consentedResources}]
}
```

In this request example, a request is made to return `_count=25` resources. In this case, for each 25 resources in the result set (`entry`), the `Consent` check is performed. If any resources in this result set have been omitted, the `meta.security` `REDACTED` tag is added to the search result `Bundle`. This indicates to the API consumer that some portion of the resource has been filtered and not included in the content returned, and that there may not be 25 resources returned within the `Bundle`.

### read, vread

`GET /{consentedResourceType}/{id}`

Response status: `401`
Response body:

```json
{
    "resourceType": "OperationOutcome",
    "text": {
        "status": "generated",
        "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h1>Operation Outcome</h1><table border=\"0\"><tr><td style=\"font-weight: bold;\">error</td><td>[]</td><td><pre>Consent not valid</pre></td></tr></table></div>"
    },
    "issue": [
        {
            "severity": "error",
            "code": "security",
            "diagnostics": "Consent not valid"
        }
    ]
}
```

In this request example, a request is made to a single resource which does not have an associated `Consent`. This returned a 401 error.


## Consent period dates

The HNZ FHIR server standardises on UTC for all dateTime values under management.

The client application must supply UTC dateTime values for consent.period.start | end to the FHIR server.

The client application is responsible for converting UTC dateTimes to the timezone of the user and formatting the date and time display according to the user's selected locale.
