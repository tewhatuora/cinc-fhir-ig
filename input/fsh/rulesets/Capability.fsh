RuleSet: GenericCRUDInteractions
// makes REST resource generic capability 

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

RuleSet: ResourceDocumentation(markdown)
// adds markdown doc to a CapabilityStatement element

* documentation = "{markdown}"
