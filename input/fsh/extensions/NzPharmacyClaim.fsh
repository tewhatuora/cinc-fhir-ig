Extension: TraceNumberExtension
Id: trace-number
Title: "Trace Number Extension"
Description: "Extension for tracking numbers in pharmacy claim responses"
* ^url = "https://standards.digital.health.nz/fhir/StructureDefinition/trace-number"
* ^context.type = #element
* ^context.expression = "ClaimResponse"
* value[x] only Identifier
* valueIdentifier ^short = "Trace number identifier"