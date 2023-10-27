### Salesforce - FHIR data translation

This section defines mappings that apply to translate between the Salesforce Rheumatic Fever National Care Coordination app and the Te Whatu Ora Shared Care API FHIR representation.

#### Patient's Current Address -- type, use and currency

Applies to **patient's current address**.

|Salesforce value|Code in FHIR [Address.use](https://fhir.org.nz/ig/base/StructureDefinition-NzAddress-definitions.html#Address.use)|Code in FHIR [Address.type](https://fhir.org.nz/ig/base/StructureDefinition-NzAddress-definitions.html#Address.type)|Date(s) in FHIR [Address.period](https://fhir.org.nz/ig/base/StructureDefinition-NzAddress-definitions.html#Address.period)|
|:----|:----|:----|:----|
|*Home*|`#home`|none|`period.start` SHOULD be set to date when patient registered / address recorded $|
|*Work*|`#work`|none|`period.start` SHOULD be set to date when patient registered / address recorded $|
|*Temporary*|`#temp`|none|`period.start` SHOULD be set to date when patient registered / address recorded $|
|*Inactive*|`#old`|none|No `period`, or `period.end` set to any date in the past ^|
|*Physical*|none|`#physical`|`period.start` SHOULD be set to date when patient registered / address recorded $|
|*Postal*|none|`#postal`|`period.start` SHOULD be set to date when patient registered / address recorded $|
|*Current*|none|none|`period.start` MUST be set to any date in the past, and `period.end`, if specified, must be in the future|


Notes
  
1. 'none' means no code is set - ie. the element is absent in the FHIR JSON representation

1. $ It makes sense to use the date of patient registration as the default value for Address.period.start

1. ^ When there is neither a **use** nor **type** code and `Address.period` is present with the current date in range, this maps to ‘Current’ in Salesforce.  If `Address.period` is missing, the address shall be mapped to 'Inactive'

---

#### Language mapping

Applies to **patient's preferred language**.

Patient language is represented in the `Patient.communication.language` element.

Two character codes in the preferred *CommonLanguages* binding are not sufficient to encode the patient languages available in Salesforce.

Therefore the Te Whatu Ora Shared Care API uses **ISO 639-3 three character language codes** which is allowed by the *AllLanguages* (maximum) binding on [Patient.communication.language](StructureDefinition-cinc-rheumaticfever-patient-definitions.html#Patient.communication.language.html).

The translation between Salesforce language and FHIR is given in the table below. 

|English name of language|ISO 639-3 language code to use for FHIR mapping|Salesforce Health Cloud language|IANA primary language SUBTAG (BCP47)|
|:----|:----|:----|:----|
|English|eng|English|en|
|Spanish (Castilian)|spa|Spanish|es|
|Afrikaans|afr|Afrikaans|af|
|Arabic|ara|Arabic|ar|
|Rarotongan|rar|Cook Islands Maori| |
|Dutch|dut|Dutch|nl|
|French|fre|French|fr|
|German|ger|German|de|
|Gujarati|guj|Gujarati|gu|
|Hindi|hin|Hindi|hi|
|Italian|ita|Italian|it|
|Japanese|jpn|Japanese|ja|
|Korean|kor|Korean|ko|
|Mandarin Chinese|cmn|Mandarin| |
|Maori|mao|Maori|mi|
|New Zealand Sign Language|nzs|New Zealand Sign Language| |
|Jinyu Chinese|cjy|"Northern Chinese"| |
|Panjabi; Punjabi|pan|Punjabi|pa|
|Russian|rus|Russian|ru|
|Samoan|smo|Samoan|sm|
|Tagalog|tgl|Tagalog|-|
|Tamil|tam|Tamil|ta|
|Thai|tha|Thai|th|
|Tonga (Tonga Islands)|ton|Tongan|to|
|Vietnamese|vie|Vietnamese|vi|
|Yue Chinese (Cantonese)|yue|Cantonese| |

See the [example patient Madeleine Meringue](Patient-MadeleineMeringue.json.html) for how to correctly code language for FHIR representation of rheumatic fever patients.

---

#### FHIR representation of Rheumatic Heart Disease Severity

Rheumatic heart disease severity is the driving factor for severity of a patient's rheumatic fever diagnosis.

To adequately encode the severity values supported by the Salesforce application two FHIR elements are used:

1. `Condition.severity`: this is the basic severity classifier from a FHIR Condition

1. `RheumaticFeverCondition.rhdSeverity`` - this is a profile extension to Condition which allows a specific SNOMED code matching the patient's rheumatic heart disease situation.  

The translation between the Salesforce RHD severity value and FHIR representation is given in the following table. 

|Salesforce - Rheumatic Heart Disease Severity|FHIR [Condition.severity](StructureDefinition-cinc-rheumaticfever-condition-definitions.html#Condition.severity) (SNOMED)| [*rhdSeverity*](StructureDefinition-rf-condition-rhdseverity.html) extension in RheumaticFeverCondition / [ValueSet](ValueSet-rf-condition-rhdseverity-code.html)|FHIR NzCondition.long-term-condition indicator ^|
|:----|:----|:----|:----|
|“none”|do not map|**#260413007** None (qualifier value)|TRUE|
|“trivial”|do not map|**#300171000210106** Trivial (qualifier value)|TRUE|
|“mild”|**#255604002** Mild (qualifier value)|**#255604002** Mild (qualifier value)| TRUE|
|“moderate”|**#1255665007** Moderate (qualifier value)|**#1255665007** Moderate (qualifier value)|TRUE |
|“severe”|**#24484000** Severe (severity modifier) (qualifier value)|**#24484000** Severe (severity modifier) (qualifier value)|TRUE |
|“Post valve repair”|**#24484000** Severe (severity modifier) (qualifier value)|Post valve repair or replacement **#59391000119102** History of heart valve repair (situation)| TRUE|
|“Post valve replacement”|**#24484000** Severe (severity modifier) (qualifier value)| **#301561000210102** History of heart valve replacement (situation)|TRUE |
|“Unknown”|do not map|**#261665006** Unknown (qualifier value)|TRUE |


^ Note: The FHIR representation of rheumatic fever condition includes setting the [long-term condition extension](https://fhir.org.nz/ig/base/StructureDefinition-NzCondition-definitions.html#Condition.extension:long-term-condition) as the disease is considered in NZ a long term condition.

---

### FHIR data models

This section provides an overview of the design of the FHIR data representations that authorized applications can use to record and interchange rheumatic fever information.

#### FHIR resource model (Pilot phase)

<img src="FHIR-resource-careplan-rheumaticfever-pilot.png" width="100%"/>

#### FHIR careplan lifecycle (Pilot phase)

<img src="flow-FHIR-rheumaticfever-lifecycle.png" width="100%"/>

#### Secondary Prophylaxis Appointment FHIR objects (Pilot phase)

<img src="obj-FHIR-data-rheumaticfever-appointment.png" width="100%"/>
