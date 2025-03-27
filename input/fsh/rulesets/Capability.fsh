// describes generic REST resource operations
RuleSet: GenericCRUDInteractions
* interaction[0].code = #create
* interaction[+].code = #read
* interaction[+].code = #update
* interaction[+].code = #delete
* interaction[+].code = #vread
* interaction[+].code = #search-type
* versioning = #versioned
* readHistory = false
* updateCreate = false
* conditionalCreate = false
* conditionalRead = #not-supported
* conditionalUpdate = false
* conditionalDelete = #not-supported

// defines operations supported for canonical definitions (owned by HNZ)
RuleSet: DefinitionalResourceInteractions
* interaction[+].code = #read
* interaction[+].code = #vread
* interaction[+].code = #search-type
* versioning = #versioned
* readHistory = false
* updateCreate = false
* conditionalCreate = false
* conditionalRead = #not-supported
* conditionalUpdate = false
* conditionalDelete = #not-supported

// describes generic REST resource operations
RuleSet: OutreachCRUDInteractions
* interaction[0].code = #create
* interaction[+].code = #read
* interaction[+].code = #update
* interaction[+].code = #delete
* interaction[+].code = #vread
* interaction[+].code = #search-type
* versioning = #versioned
* readHistory = true
* updateCreate = false
* conditionalCreate = false
* conditionalRead = #not-supported
* conditionalUpdate = false
* conditionalDelete = #not-supported
* searchRevInclude =  "*"


RuleSet: ResourceDocumentation(markdown)
// adds markdown doc to a CapabilityStatement element

* documentation = "{markdown}"
