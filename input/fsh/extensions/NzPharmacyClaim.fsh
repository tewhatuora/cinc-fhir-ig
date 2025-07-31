Extension: TraceNumberExtension
Id: trace-number
Title: "Trace Number Extension"
Description: "Extension for tracking numbers in pharmacy claim responses"
* ^url = "https://standards.digital.health.nz/fhir/StructureDefinition/trace-number"
* ^context.type = #element
* ^context.expression = "ClaimResponse"
* value[x] only Identifier
* valueIdentifier ^short = "Trace number identifier"


Extension: ProductOrServiceExtension
Id: product-or-service
Title: "Product Or Service Extension"
Description: "Extension for product or service codes in pharmacy claim response items"
* ^url = "https://standards.digital.health.nz/fhir/StructureDefinition/product-or-service"
* ^context.type = #element
* ^context.expression = "ClaimResponse.item"
* value[x] only CodeableConcept
* valueCodeableConcept ^short = "Product or service code"
* valueCodeableConcept from PurchaseUnitValueSet (required)