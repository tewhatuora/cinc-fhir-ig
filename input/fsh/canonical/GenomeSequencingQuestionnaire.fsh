Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type

Instance: GenomeSequencingRequestQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire-GenomeSequencingRequestQuestionnaire"
* purpose = "Request for genome sequencing of a sample."
* version = "1.0.5"
* identifier.value = "Questionnaire-GenomeSequencingRequest"
* identifier.use = #genome-sequencing-request
* identifier.period.start = "2023-07-05"
* status = #draft
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* jurisdiction.text = "New Zealand"
* experimental = false
* name = "Questionnaire-GenomeSequencingRequest"
* language = #en-NZ
* useContext.valueCodeableConcept.text = "Genome Sequencing Request"
* useContext.code = $usage-context-type#workflow "Workflow Setting"
* publisher = "Te Whatu Ora"
* subjectType = #Patient
* description = "A request for genome sequencing of a sample"
* title = "Genome sequencing sample"
* item[0].linkId = "p01"
* item[=].text = "This form contains details for sending a sample to a lab for genome sequencing. It covers information about the request, including patient information, sample information, transport information, clinical information; information about what services are being requested; and contact details for involved parties."
* item[=].type = #display
* item[=].prefix = "page 1"
* item[+].item[0].linkId = "p02-q01-PostMortem"
* item[=].item[=].prefix = "page 2 question 1"
* item[=].item[=].text = "Is the patient post mortem?"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding.display = "Yes, patient is post mortem"
* item[=].item[=].answerOption[+].valueCoding.display = "No, patient is not post mortem"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p02-q02-Traveled"
* item[=].item[=].text = "Has the patient traveled in the last 14 days?"
* item[=].item[=].prefix = "page 2 question 2"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding.display = "Yes, patient has traveled in the last 14 days"
* item[=].item[=].answerOption[+].valueCoding.display = "No, patient has not traveled in the last 14 days"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p02-q03-MedicalConditions"
* item[=].item[=].prefix = "page 2 question 3"
* item[=].item[=].text = "Does the patient have any underlying medical conditions?"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding.display = "Yes, patient has underlying conditions"
* item[=].item[=].answerOption[+].valueCoding.display = "No, patient has no underlying conditions"
* item[=].item[=].required = true
* item[=].item[+].repeats = true
* item[=].item[=].linkId = "p02-q03.1-MedicalConditions.Details"
* item[=].item[=].prefix = "page 2 question 3.1"
* item[=].item[=].enableWhen.question = "p02-q03-MedicalConditions"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Yes, patient has underlying conditions"
* item[=].item[=].text = "Condition details"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding.display = "SNOMED1"
* item[=].item[=].answerOption[+].valueCoding.display = "SNOMED2"
* item[=].item[=].answerOption[+].valueCoding.display = "SNOMED3"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p02-q03.2-MedicalConditions.Other"
* item[=].item[=].prefix = "page 2 question 3.2"
* item[=].item[=].text = "Symptoms/Other detail"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "p02-q03-MedicalConditions"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Yes, patient has underlying conditions"
* item[=].item[+].linkId = "p02-q04-ImmunosuppressiveDrugs"
* item[=].item[=].prefix = "page 2 question 4"
* item[=].item[=].text = "Is the patient receiving immunosuppressive drugs?"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding.display = "Yes, patient is receiving immunosuppressive drugs"
* item[=].item[=].answerOption[+].valueCoding.display = "No, patient is not receiving immunosuppressive drugs"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p02-q04.1-MedicationName"
* item[=].item[=].prefix = "page 2 question 4.1"
* item[=].item[=].text = "Medication name"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "p02-q04-ImmunosuppressiveDrugs"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Yes, patient is receiving immunosuppressive drugs"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p02-q04.2-MedicationStart"
* item[=].item[=].prefix = "page 2 question 4.2"
* item[=].item[=].text = "When did they start their medication?"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].type = #date
* item[=].item[=].enableWhen.question = "p02-q04-ImmunosuppressiveDrugs"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Yes, patient is receiving immunosuppressive drugs"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p02-q05-AntiVirals"
* item[=].item[=].prefix = "page 2 question 5"
* item[=].item[=].text = "Is the patient receiving antivirals?"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding.display = "Yes, patient is receiving antivirals"
* item[=].item[=].answerOption[+].valueCoding.display = "No, patient is not receiving antivirals"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p02-q06-MonoclonalAntibodies"
* item[=].item[=].prefix = "page 2 question 6"
* item[=].item[=].text = "Is the patient receiving monoclonal antibodies?"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding.display = "Yes, patient is receiving monoclonal antibodies"
* item[=].item[=].answerOption[+].valueCoding.display = "No, patient is not receiving monoclonal antibodies"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p02-q07-OtherBloodProducts"
* item[=].item[=].prefix = "page 2 question 7"
* item[=].item[=].text = "Other blood products:"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding.display = "Yes, patient is receiving other blood products"
* item[=].item[=].answerOption[+].valueCoding.display = "No, patient is not receiving other blood products"
* item[=].item[=].required = true
* item[=].linkId = "p02"
* item[=].text = "Patient Information"
* item[=].type = #group
* item[=].prefix = "page 2"
* item[+].item[0].linkId = "p03-q01-SampleDate"
* item[=].item[=].text = "Date sample was collected"
* item[=].item[=].type = #date
* item[=].item[=].prefix = "page 3 question 1"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p03-q02-SampleType"
* item[=].item[=].prefix = "page 3 question 2"
* item[=].item[=].text = "Sample type"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding.display = "Viral Swab"
* item[=].item[=].answerOption[+].valueCoding.display = "Saliva"
* item[=].item[=].answerOption[+].valueCoding.display = "RNA"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p03-q02.1-OtherSampleType"
* item[=].item[=].prefix = "page 3 question 2.1"
* item[=].item[=].text = "Other sample type"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "p03-q02-SampleType"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Other"
* item[=].item[+].linkId = "p03-q03-SampleSite"
* item[=].item[=].text = "Sample site"
* item[=].item[=].type = #string
* item[=].item[=].prefix = "page 3 question 3"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p03-q04-AlreadySent"
* item[=].item[=].prefix = "page 3 question 4"
* item[=].item[=].text = "Has the sample already been sent to ESR?"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding.display = "Yes, sample has been sent to ESR"
* item[=].item[=].answerOption[+].valueCoding.display = "No, sample has not been sent to ESR"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p03-q04.1-SentDate"
* item[=].item[=].prefix = "page 3 question 4.1"
* item[=].item[=].text = "Date sample was sent to ESR"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].type = #date
* item[=].item[=].enableWhen.question = "p03-q04-AlreadySent"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Yes, sample has been sent to ESR"
* item[=].item[=].required = true
* item[=].item[+].repeats = false
* item[=].item[=].linkId = "p03-q05-ImageLabel"
* item[=].item[=].prefix = "page 3 question 5"
* item[=].item[=].text = "Image label"
* item[=].item[=].type = #text
* item[=].item[=].required = false
* item[=].item[+].linkId = "p03-q06-ImageUpload"
* item[=].item[=].prefix = "page 3 question 6"
* item[=].item[=].text = "Upload image"
* item[=].item[=].type = #attachment
* item[=].linkId = "p03"
* item[=].text = "Sample Information"
* item[=].type = #group
* item[=].prefix = "page 3"
* item[+].item[0].linkId = "p04-q01-SampleStoredState"
* item[=].item[=].prefix = "page 4 question 1"
* item[=].item[=].text = "What state was the sample stored in?"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding.display = "Ambient"
* item[=].item[=].answerOption[+].valueCoding.display = "Chilled"
* item[=].item[=].answerOption[+].valueCoding.display = "Frozen"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p04-q02-SampleTransportedState"
* item[=].item[=].prefix = "page 4 question 2"
* item[=].item[=].text = "What state was the sample transported in?"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding.display = "Ambient"
* item[=].item[=].answerOption[+].valueCoding.display = "Chilled"
* item[=].item[=].answerOption[+].valueCoding.display = "Frozen"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p04-q03-SampleStorageDateTime"
* item[=].item[=].text = "Date and time stored"
* item[=].item[=].type = #dateTime
* item[=].item[=].prefix = "page 4 question 3"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p04-q04-SampleUrgency"
* item[=].item[=].prefix = "page 4 question 4"
* item[=].item[=].text = "Sample urgency"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding.display = "Priority"
* item[=].item[=].answerOption[+].valueCoding.display = "Routine"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p04-q05-SampleTransportMedium"
* item[=].item[=].text = "Transport medium"
* item[=].item[=].type = #string
* item[=].item[=].prefix = "page 4 question 5"
* item[=].item[=].required = true
* item[=].linkId = "p04"
* item[=].text = "Sample transport information"
* item[=].type = #group
* item[=].prefix = "page 4"
* item[+].item[0].linkId = "p05-q01-OtherLabNumbers"
* item[=].item[=].text = "Other lab numbers associated with this case"
* item[=].item[=].type = #string
* item[=].item[=].prefix = "page 5 question 1"
* item[=].item[=].required = false
* item[=].item[+].linkId = "p05-q02-PCRDate"
* item[=].item[=].text = "Date of PCR test"
* item[=].item[=].type = #date
* item[=].item[=].prefix = "page 5 question 2"
* item[=].item[=].required = false
* item[=].item[+].linkId = "p05-q03-CTValue"
* item[=].item[=].text = "CT value"
* item[=].item[=].type = #string
* item[=].item[=].prefix = "page 5 question 3"
* item[=].item[=].required = false
* item[=].item[+].linkId = "p05-q04-AntibodyTestingResults"
* item[=].item[=].text = "Antibody testing results"
* item[=].item[=].type = #string
* item[=].item[=].prefix = "page 5 question 4"
* item[=].item[=].required = false
* item[=].linkId = "p05"
* item[=].text = "Clinical information"
* item[=].type = #group
* item[=].prefix = "page 5"
* item[+].item[0].repeats = true
* item[=].item[=].linkId = "p06-q01-Services"
* item[=].item[=].prefix = "page 6 question 1"
* item[=].item[=].text = "Which diagnostic services have been requested?"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding.display = "Viral lineage"
* item[=].item[=].answerOption[+].valueCoding.display = "Genomic variation"
* item[=].item[=].answerOption[+].valueCoding.display = "Coinfection or reinfection with a different virus variant"
* item[=].item[=].answerOption[+].valueCoding.display = "Remdesivir or Nirmatrelvir drug resistance"
* item[=].item[=].answerOption[+].valueCoding.display = "Virus susceptibility "
* item[=].item[=].required = false
* item[=].item[+].linkId = "p06-q02-OtherServices"
* item[=].item[=].prefix = "page 6 question 2"
* item[=].item[=].text = "Have any other diagnostic services been requested?"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding.display = "Yes, other diagnostic services have been requested"
* item[=].item[=].answerOption[+].valueCoding.display = "No, other diagnostic services have not been requested"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p06-q02.1-OtherServicesRequested"
* item[=].item[=].text = "Other diagnostic services requested"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].type = #string
* item[=].item[=].enableWhen.question = "p06-q02-OtherServices"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Yes, other diagnostic services have been requested"
* item[=].item[=].required = true
* item[=].linkId = "p06"
* item[=].text = "Diagnostic services requested"
* item[=].type = #group
* item[=].prefix = "page 6"
* item[+].item[0].linkId = "p07-q01-HPI"
* item[=].item[=].text = "Requestor HPI "
* item[=].item[=].type = #string
* item[=].item[=].prefix = "page 7 question 1"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p07-q02-HPIFacility"
* item[=].item[=].text = "HPI Facility Code"
* item[=].item[=].type = #string
* item[=].item[=].prefix = "page 7 question 2"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p07-q03-FirstName"
* item[=].item[=].text = "First name"
* item[=].item[=].type = #string
* item[=].item[=].prefix = "page 7 question 3"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p07-q04-LastName"
* item[=].item[=].text = "Last name"
* item[=].item[=].type = #string
* item[=].item[=].prefix = "page 7 question 4"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p07-q05-Email"
* item[=].item[=].text = "Email"
* item[=].item[=].type = #string
* item[=].item[=].prefix = "page 7 question 5"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p07-q06-LabPhone"
* item[=].item[=].text = "Lab phone number"
* item[=].item[=].type = #string
* item[=].item[=].prefix = "page 7 question 6"
* item[=].item[=].required = true
* item[=].item[+].linkId = "p07-q07-TechnicianPhone"
* item[=].item[=].text = "Technician phone number"
* item[=].item[=].type = #string
* item[=].item[=].prefix = "page 7 question 7"
* item[=].item[=].required = true
* item[=].linkId = "p07"
* item[=].text = "Details for reporting"
* item[=].type = #group
* item[=].prefix = "page 7"
