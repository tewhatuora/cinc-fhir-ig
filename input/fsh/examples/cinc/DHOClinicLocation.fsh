Instance: DHOClinicLocation
InstanceOf: NzLocation
Usage: #inline // #inline means this instance MUST NOT be exported as a separate example
* identifier.value = "4211-K01" // Location code, need to determine structure
* name = "Dunedin Hospital Outpatients, Clinic K01"
* partOf.type = "Location"
* partOf.identifier.value = "4211"
* partOf.identifier.system = "https://standards.digital.health.nz/ns/nzhis-facility-id"
* partOf.display = "Dunedin Hospital"
* address.use = #work
* address.type = #physical
* address.line[+] = "350 Cumberland Street"
* address.line[+] = "Dunedin Central"
* address.city = "Dunedin"
* address.postalCode = "9016"
* address.country = "New Zealand"
