# Flat Data Views

For uses cases where bulk analytical operations on FHIR datasets are required, a flat data view can be used. The are defined by `ViewDefinition` resources. This implementation closely follows the [SQL on FHIR draft IG](https://build.fhir.org/ig/FHIR/sql-on-fhir-v2/index.html).

## Semantics

A `ViewDefinition` resource describes a query for a flat view of FHIR resources. These are definitional resources which are defined in this IG which define a set of query parameters which are used to obtain a flat view of the data.

## Supported View Definitions

### RemoteMonitoringViewDefinition
A view for a Patients Remote Monitoring Observation values.

```json
{
  "resourceType": "ViewDefinition",
  "description": "A flat view of Remote Monitoring Observation values. This view is designed to aggregate data for analytical purposes, particularly for remote monitoring of patients.",
  "resource": "Observation",
  "name": "RemoteMonitoringViewDefinition",
  "url": "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/ViewDefinition/RemoteMonitoringViewDefinition",
  "select": [
    {
      "column": [
        {
          "path": "id",
          "name": "id",
          "description": "The FHIR resource ID"
        },
        {
          "path": "valueQuantity.value",
          "name": "observationValue",
          "description": "The value of the observation"
        },
        {
          "path": "valueQuantity.code",
          "name": "observationValueCode",
          "description": "The code of the observation value"
        },
        {
          "path": "effectiveDateTime",
          "name": "observationEffectiveDateTime",
          "description": "The effective date time of the observation"
        }
      ]
    }
  ],
  "where": [
    {
      "path": "meta.profile.contains('https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/StructureDefinition/RemoteMonitoringObservation')"
    },
    {
      "path": "status = 'final'"
    }
  ]
}

```

## $run operation

The `$run` operation applies a `ViewDefinition` to transform FHIR resources into a tabular format and returns the results synchronously. For detailed information about this operation, see [$run OperationDefinition](./OperationDefinition-OperationDefinition-run.html).

### Examples

#### Success: System level POST with correct parameters

```http
POST /$run HTTP/1.1
Accept: application/json
Content-Type: application/json
{
  "resourceType": "Parameters",
  "parameter": [{
    "name": "viewReference",
    "valueReference": {
      "reference": "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/ViewDefinition/RemoteMonitoringViewDefinition"
    }
  },
  {
    "name": "patient",
    "valueReference": {
      "reference": "https://api.hip.digital.health.nz/fhir/nhi/v1/Patient/ZZZ1234"
    }
  }]
}
```

```http
HTTP/1.1 200 OK
Content-Type: application/json
[
  {"id": "d477b248-9aff-464a-9181-16b84e3e563e", "observationValue": "65", "observationValueCode": "bpm", "observationEffectiveDateTime": "2024-10-01"},
  {"id": "81d52eec-45a7-475e-a087-8347e0e2c40b", "observationValue": "88", "observationValueCode": "bpm", "observationEffectiveDateTime": "2024-10-03"},
]
```

#### Error: Incorrect parameters (missing patient)

```http
POST /$run HTTP/1.1
Accept: application/json
Content-Type: application/json
{
  "resourceType": "Parameters",
  "parameter": [{
    "name": "viewReference",
    "valueReference": {
      "reference": "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/ViewDefinition/RemoteMonitoringViewDefinition"
    }
  }]
}
```

```http
HTTP/1.1 400 Bad Request
Content-Type: application/json

{
  "resourceType": "OperationOutcome",
  "issue": [
    {
      "severity": "error",
      "code": "required",
      "diagnostics": "patient is required"
    }
  ]
}
```

#### Error: ViewDefinition unknown

```http
POST /$run HTTP/1.1
Accept: application/json
Content-Type: application/json
{
  "resourceType": "Parameters",
  "parameter": [{
    "name": "viewReference",
    "valueReference": {
      "reference": "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/ViewDefinition/bad"
    }
  },
  {
    "name": "patient",
    "valueReference": {
      "reference": "https://api.hip.digital.health.nz/fhir/nhi/v1/Patient/ZZZ1234"
    }
  }]
}
```

```http
HTTP/1.1 400 Bad Request
Content-Type: application/json

{
  "resourceType": "OperationOutcome",
  "issue": [
    {
      "severity": "error",
      "code": "not-found",
      "diagnostics": "ViewDefinition with id 'bad' not found"
    }
  ]
}
```
