<!-- markdownlint-disable MD041 -->
## FHIR representation of patient consent

This page describes how FHIR API-integrated applications can represent the two common forms of patient consent commonly sought in NZ health scenarios:

1. Consent to collect patient information and share with other health NZ providers/practitioners through the FHIR API, and
1. Consent to receive NZ health treatment or services.

### How and when consent is established

Organisations providing health services, or collecting health information for the purpose of providing/coordinating health services, are required to obtain patient consent by NZ law and health policies.  How those organisations actually obtain consent from the patient varies according to the processes each organisation uses, and these processes are external to Health New Zealand's FHIR API capability at present.  

In the current period of adoption of FHIR APIs for health information interchange, it is assumed that official records of consent continue to be held in repositories of documentation specific to the organisations and the processes they operate.  That is, FHIR consent representation, while necessary to share consent status easily through the sector as well as allow access control, is not the official record of patient consent.

#### Provisional consent

The FHIR Consent representation described here allows for practical consideration that a patient's information may need to be appear in FHIR **before** their consent has been obtained.  In rheumatic fever coordination, for example, patients are registered but sometimes not seen until a treatment appointment which is the first opportunity for them to sign a consent form.  

To handle these scenarios, the FHIR API supports Consent instances created in a `#proposed` status, representing a provisional assumption of consent.  Custodians can later convert such instances to `#active` status when consent is officially obtained.

### Opting out / withdrawing consent

When a patient declines to give their consent this may mean they have opted out of information collection/sharing or receiving treatment.  FHIR supports both forms of consent using the two Consent scopes `data-privacy` and `treatment`.

### Custodianship of patient health data

The organisation that collects patient information is the custodian of that data and organises creation of the corresponding FHIR Consents.  The custodian org may or may not provide treatment but for FHIR representation, the key thing is that the party responsible for the patient data must be identified in the organisation element of the Consent instance.  Organisation references should be formed using HPI organisation identifiers.

If management of a patient's information transfers to another organisation, the custodian organisation must be updated in Consent instances for that patient.

---

### Consent FHIR data models

#### Consent obtained from patient

<!-- markdownlint-disable MD033 -->

<figure>
  <!-- Generated from `input/images-source/obj-FHIR-data-consent-active.puml` -->
  {% include obj-FHIR-data-consent-active.svg %}
</figure>
<br clear="all">

---

#### Consent obtained from a related person to the patient (on-behalf)

<figure>
  <!-- Generated from `input/images-source/obj-FHIR-data-consent-givenonbehalf.puml` -->
  {% include obj-FHIR-data-consent-givenonbehalf.svg %}
</figure>
<br clear="all">

---

#### Patient opted out from data sharing

<figure>
  <!-- Generated from `input/images-source/obj-FHIR-data-consent-optout.plantuml` -->
  {% include obj-FHIR-data-consent-optout.svg %}
</figure>
<br clear="all">

---

#### Provisional consent (yet to be officially obtained from patient)

<figure>
  <!-- Generated from `input/images-source/obj-FHIR-data-consent-provisional.plantuml` -->
  {% include obj-FHIR-data-consent-provisional.svg %}
</figure>
<br clear="all">
