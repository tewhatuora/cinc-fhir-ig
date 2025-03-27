Invariant: fhir-hnz-rheumaticfever-careplan-category-1
Description: "Rheumatic fever care plans must be categorised by SNOMED code  #737427001 'Clinical management plan'"
Severity: #warning
Expression: "RheumaticFeverCarePlan.category.code = '737427001'"


Invariant: status-to-status-reason-mapping
Description: "Only allow specific status reasons for each status."
Severity: #error
Expression: "(status = 'active' and extension.where(url = 'http://hl7.org/fhir/StructureDefinition/request-statusReason').value.coding.where(
                code = 'ServiceGiven' or 
                code = 'ReturningToProvider' or 
                code = 'ReferredToOutreach' ).exists()) or 
             (status = 'completed' and extension.where(url = 'http://hl7.org/fhir/StructureDefinition/request-statusReason').value.coding.where(
                code = 'ServiceGiven' or 
                code = 'ServiceDeclined' or 
                code = 'ServiceGivenDeclined' or 
                code = 'DeclinedOutreachServices' or 
                code = 'ReturningToProvider' or 
                code = 'GoneOverseas' or 
                code = 'UnableToContact' or 
                code = 'UnconfirmedDeceased' or 
                code = 'MovedOutOfArea' or 
                code = 'ProgrammeToBeCompleted' or 
                code = 'ClinicalRecordCollected').exists()) or 
             (status = 'revoked' and extension.where(url = 'http://hl7.org/fhir/StructureDefinition/request-statusReason').value.coding.where(
                code = 'Deceased' or 
                code = 'EnteredInError' or 
                code = 'ClinicalRecordReceived' or 
                code = 'ProgrammeStatusChanged' or 
                code = 'CorrespondenceStatusChanged').exists()) or 
             (status = 'on-hold' and extension.where(url = 'http://hl7.org/fhir/StructureDefinition/request-statusReason').value.coding.where(
                code = 'OnHold').exists())"
