# TODO list for CINC IG fixes

## Consent

Publisher currently throws this error but unable to pinpoint what's causing it
- The line/character reference points to end of file
- The error still occurs even if all the resource profiling statements are removed
 
 
```
StructureDefinition.snapshot.element[9].example[0].value.ofType(Identifier) (l1/c83194)	error	if identifier.system is ''urn:ietf:rfc:3986'', then the identifier.value must be a full URI (e.g. start with a scheme)
```

### Hypotheses

1. Report as a possible bug in IG Publisher?
1. Determine in the error is actually being caused by data in the example resource
1. The error seems to relate to the following guidance on identifiers the [FHIR R4 spec](http://hl7.org/fhir/R4/datatypes.html#Identifier) gives
```
If the identifier value itself is naturally a globally unique URI (e.g. an OID, a UUID, or a URI with no trailing local part), then the system SHALL be "urn:ietf:rfc:3986"
```

## UTC date time value guidance
The IG needs to guide NZ developers that dateTime values in elements with datatype dateTime, Period and Instant need to be UTC values not New Zealand Time values.

Initially I tried to refine the descriptions of the relevant elements in resource profiles but I have been unable to find a FSH syntax that works for this.  I suspect this is because re-purposing an element by changing its description is a fundamentally a bad/wrong thing to do in FHIR and so FSH doesn't support it.

Instead, I attached invariants to the relevant elements, and these invariants have Descriptions that accomplish the task of passing advice to the developer via the published resource Structure view.

This leads to publisher warnings because the invariants contain no rule expressions. 

There should be a better way of documenting UTC data handling guidance for devs at the IG top level - TO DO.

## CapabilityStatement errors

This profile has been throwing 10 QA errors for ages and needs attention!

## Antiviral Eligibility Questionnaire Example

This currently throws a publishing error for a resource id/url mismatch on the url element:
```
Questionnaire.url	error	Resource id/url mismatch: AntiViralEligibilityQuestionnaireExample/https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire-AntiViralEligibilityQuestionnaire
```

## Build Errors

4 build errors need to be sorted.