The following examples show the expected interactions of AIR & Whaihua for creating and fulfilling immunisation outreach referrals. 

Key elements that need to be updated / added at each step are shown in the tables describing key steps. 

## 1. Create outreach referral

<figure>
  <!-- Generated from `input/images-source/outreach-create-outreach-referral.plantuml` -->
  {% include outreach-create-outreach-referral.svg %}
</figure>
<br clear="all">

**[01] Create ServiceRequest for outreach**

| Element | Expected update/information |
| ---------- | ----------------------------|
| ServiceRequest.status | create as 'active' code |
| ServiceRequest.intent | create as 'plan' code |
| ServiceRequest.code | use 'Immunization' code'|
| ServiceRequest.subject | set to NHI identifier for patient |
| ServiceRequest.meta.tag | update to AIR/ISM to indicate who edited it last |
| ServiceRequest.meta.source | update to AIR/ISM to indicate who edited it last |

## 2. Accept outreach referral

<figure>
  <!-- Generated from `input/images-source/outreach-accept-outreach-referral.plantuml` -->
  {% include outreach-accept-outreach-referral.svg %}
</figure>
<br clear="all">

**[06] Update ServiceRequest to claim**

| Element | Expected update/information |
| ---------- | ----------------------------|
| ServiceRequest.performer | update performer to Organization/Whaihua (TBC - confirm reference format) |
| ServiceRequest.meta.tag | update to Whaihua to indicate who edited it last |
| ServiceRequest.meta.source | update to Whaihua to indicate who edited it last |

## 3. Create Tasks to track outreach activities

<figure>
  <!-- Generated from `input/images-source/outreach-create-task.plantuml` -->
  {% include outreach-create-task.svg %}
</figure>
<br clear="all">

**[10] Create outreach fulfilment Task**

| Element | Expected update/information |
| ---------- | ----------------------------|
| Task.status | 'accepted' to indicate has agreed to do it but work hasn't started on it |
| Task.basedOn | Reference to the ServiceRequest this Task is related to |
| Task.intent | 'plan' |
| Task.code | The vaccine the outreach task is for (or generic imms outreach code if Task represents multiple) |
| Task.for |  NHI identifier for patient |
| Task.input | reference to ImmunizationRec in AIR |
| Task.meta.tag | update to Whaihua to indicate who edited it last |
| Task.meta.source | update to Whaihua to indicate who edited it last |

**[12] Update Task**

| Element | Expected update/information |
| ---------- | ----------------------------|
| Task.status | 'in-progress' to indicate work has started on it |
| Task.meta.tag | update to Whaihua to indicate who edited it last |
| Task.meta.source | update to Whaihua to indicate who edited it last |

## 4. Create and store Communications against ServiceRequests

<figure>
  <!-- Generated from `input/images-source/outreach-create-communication.plantuml` -->
  {% include outreach-create-communication.svg %}
</figure>
<br clear="all">

**[14] Create Communication**

| Element | Expected update/information |
| ---------- | ----------------------------|
| Communication.subject | Patient NHI reference |
| Communication.status | 'completed' |
| Communication.basedOn | Reference to related Task |
| Communication.sent | date sent |
| Communication.recipient | Reference to patient? |
| Communication.received | when recieved (if relevant) |
| Communication.payload | Message content (if relevant) |


**[15] Update ServiceRequest**

| Element | Expected update/information |
| ---------- | ----------------------------|
| ServiceRequest.supportingInfo | Reference to Communication created in [14] |
| ServiceRequest.meta.tag | update to Whaihua to indicate who edited it last |
| ServiceRequest.meta.source | update to Whaihua to indicate who edited it last |

## 5. Revoke/cancel an outreach referral

<figure>
  <!-- Generated from `input/images-source/outreach-cancel-outreach-referral.plantuml` -->
  {% include outreach-cancel-outreach-referral.svg %}
</figure>
<br clear="all">

**[18] Update outreach referral ServiceRequest to cancel** 

|| Element | Expected update/information |
| ---------- | ----------------------------|
| ServiceRequest.status | 'revoked' |
| ServiceRequest.meta.tag | update to AIR/ISM to indicate who edited it last |
| ServiceRequest.meta.source | update to AIR/ISM to indicate who edited it last |


## 6. Complete and close outreach referral 


<figure>
  <!-- Generated from `input/images-source/outreach-complete-outreach-referral.plantuml` -->
  {% include outreach-complete-outreach-referral.svg %}
</figure>
<br clear="all">

**[22]** Update outstanding Task(s) to completed

| Element | Expected update/information |
| ---------- | ----------------------------|
| Task.status | 'Completed' |
| Task.output | add any references to outputs related to completion (e.g. Immunization events) |
| Task.meta.tag | update to Whaihua to indicate who edited it last |
| Task.meta.source | update to Whaihua to indicate who edited it last |

**[24] Update outreach referral ServiceRequest to complete** 

| Element | Expected update/information |
| ---------- | ----------------------------|
| ServiceRequest.status | 'completed' |
| ServiceRequest.meta.tag | update to Whaihua to indicate who edited it last |
| ServiceRequest.meta.source | update to Whaihua to indicate who edited it last |


## 7. Find existing outreach information for a patient

[Requirements TBC]