CodeSystem: TemplateIdentifiersCS
Id: Nz-template-identifier-code-system
Title: "Canonical definition resource identifiers for Manaaki Nga Tahi / Care in the Community"
Description:  "Defines identifiers of PlanDefinition, ActivityDefinition and Questionnaire template resources."
* ^experimental = false
* ^caseSensitive = true
* ^hierarchyMeaning = http://hl7.org/fhir/codesystem-hierarchy-meaning#grouped-by
* #ActivityDefinition "Identifiers of well-known ActivityDefinitions"
* #ActivityDefinition #COVID19MeasurementProcedureRequestTemplate "Template for a ServiceRequest that seeks supply of vital signs observations."
* #PlanDefinition "Identifiers of PlanDefinition templates"
* #PlanDefinition #CareplanTemplate-CitC-COVID19-CCCM "Template for a care plan for COVID-19 case management."
* #Questionnaire "Identifiers of well-known Questionnaires"
* #Questionnaire #QuestionTemplate-CitC-COVID19-PrivacyStatementQuestion "Patient consent questionnaire for HNZ to share care plan information (Information Disclosure)"
* #Questionnaire #QuestionTemplate-CitC-COVID19-MeasurementCollection "Patient consent questionnaire for HNZ to collect personal health information (Information Collection and Disclosure)"
* #Questionnaire #QuestionTemplate-CitC-COVID19-InitialAssessment "Questionnaire for COVID-19 initial health assessment"
* #Questionnaire #QuestionTemplate-CitC-COVID19-RegularHealthCheck "Questionnaire for COVID-19 regular health check"
