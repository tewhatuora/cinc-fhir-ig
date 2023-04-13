# TODO list for CINC IG fixes

## Consent
Publisher throwing a single error but so far unable to pinpoint the cause
- The error line/character reference points to end of file
- The error still occurs even if all the resource profiling statements are removed!
 
```
StructureDefinition.snapshot.element[9].example[0].value.ofType(Identifier) (l1/c83194)	error	if identifier.system is ''urn:ietf:rfc:3986'', then the identifier.value must be a full URI (e.g. start with a scheme)
```

### Hypotheses

1. Report as a possible bug in IG Publisher?
1. Determine in the error is actually being caused by data in the example resource
1. The error seems to relate to the following guidance on identifiers the [FHIR R4 spec](http://hl7.org/fhir/R4/datatypes.html#Identifier) gives
```
If the identifier value itself is naturally a globally unique URI (e.g. an OID, a UUID, or a URI with no trailing local part), then the system SHALL be "urn:ietf:rfc:3986"

## CapabilityStatement errors
This profile has been throwing 10 QA errors for ages and needs attention!

## Build Errors
4 build errors and 4 warnings that still need to be sorted.