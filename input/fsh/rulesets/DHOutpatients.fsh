// Rest resource Create and Update operations
RuleSet: CreateUpdateInteractions
* interaction[0].code = #create
* interaction[+].code = #update
* versioning = #versioned
* readHistory = false
* updateCreate = true
* conditionalCreate = false
* conditionalRead = #not-supported
* conditionalUpdate = false
* conditionalDelete = #not-supported

// Rest resource Read and Update operations
RuleSet: ReadUpdateInteractions
* interaction[0].code = #read
* interaction[+].code = #update
* interaction[+].code = #vread
* interaction[+].code = #search-type
* versioning = #versioned
* readHistory = false
* updateCreate = false
* conditionalCreate = false
* conditionalRead = #not-supported
* conditionalUpdate = false
* conditionalDelete = #not-supported
